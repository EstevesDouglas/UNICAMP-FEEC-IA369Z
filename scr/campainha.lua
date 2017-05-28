-- Campainha IoT - LHC - v1.1
-- ESP Inicializa pinos, Configura e Conecta no Wifi, Cria conexão TCP
-- e na resposta de um "Tocou" coloca o ESP em modo DeepSleep para economizar bateria.
-- Se nenhuma resposta for recebida em 15 segundos coloca o ESP em DeepSleep.
led_pin = 3
status_led = gpio.LOW
ip_servidor = "X.X.X.X."
ip_campainha = "X.X.X.X."
voltagem=3333
 
function desliga_circuito()
    print("Colocando ESP em Deep Sleep")
    node.dsleep(0)
end
 
function read_voltage()
    -- Desconecta do wifi para poder ler a voltagem de alimentação do ESP.
    wifi.sta.disconnect()
 
    voltagem = adc.readvdd33()            
    print("Voltagem: "..voltagem)
 
    -- Inicializa o Wifi e conecta no servidor
    print("Inicializando WiFi")
    init_wifi()
end
 
function pisca_led()
    gpio.write(led_pin, status_led)
 
    if status_led == gpio.LOW then
        status_led = gpio.HIGH
    else
        status_led = gpio.LOW
    end
end
 
function init_pins()
    gpio.mode(led_pin, gpio.OUTPUT)
    gpio.write(led_pin, status_led)
end
 
function init_wifi()
    wifi.setmode(wifi.STATION)
    wifi.sta.config("SSID", "password")
    wifi.sta.connect()
    wifi.sta.setip({ip=ip_campainha,netmask="255.255.255.0",gateway="X.X.X.X"})
 
    -- Aguarda conexão com Wifi antes de enviar o request.
    function try_connect()        
        if (wifi.sta.status() == 5) then
            tmr.stop(0)
            print("Conectado, mandando request")
            manda_request()
            -- Se nenhuma confirmação for recebida em 15 segundos, desliga o ESP.
            tmr.alarm(2,15000,0, desliga_circuito)
        else
            print("Conectando...")
        end
    end
 
    tmr.alarm(0,1000,1, function() try_connect() end )
end
 
function manda_request()
    tmr.alarm(1, 200, 1, pisca_led)
    print("Request enviado")
    -- Cria a conexão TCP 
    conn=net.createConnection(net.TCP,false)
    -- Envia o toque da campainha e voltagem para o servidor
    conn:on("connection", function(conn)
    conn:send("GET /?bateria="  ..voltagem.. " HTTP/1.0\r\n\r\n")
    end)
 
    -- Se receber "Tocou" do servidor, desliga o ESP.
    conn:on("receive", function(conn, data)
        if data:find("Tocou") ~= nil then
            desliga_circuito()
        end
    end)
 
    -- Conectar no servidor
    conn:connect(9999,ip_servidor)
 
end
 
print("Inicializando pinos")
init_pins()
 
print ("Lendo voltagem")
read_voltage()
