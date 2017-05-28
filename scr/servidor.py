#!/usr/bin/python2
 
import time
import BaseHTTPServer
import os
import random
import string
import requests
from urlparse import parse_qs, urlparse
 
HOST_NAME = '0.0.0.0'
PORT_NUMBER = 9999
# A variável MP3_DIR será construida tendo como base o diretório HOME do usuário + Music/Campainha
# (e.g: /home/usuario/Music/Campainha)
MP3_DIR = os.path.join(os.getenv('HOME'), 'Music', 'Campainha')
VALID_CHARS = set(string.ascii_letters + string.digits + '_.')
CHAVE_THINGSPEAK = 'YOURKEY'
# Salva o arquivo de log no diretório do usuário (e.g: /home/usuário/campainha.log)
ARQUIVO_LOG = os.path.join(os.getenv('HOME'), 'campainha.log')
 
 
def filtra(mp3):
    if not mp3.endswith('.mp3'):
        return False
    for c in mp3:
        if not c in VALID_CHARS:
            return False
    return True
 
 
def log(msg, output_file=None):
    if output_file is None:
        output_file = open(ARQUIVO_LOG, 'a')
 
    output_file.write('%s: %s\n' % (time.asctime(), msg))
    output_file.flush()
 
 
class MyHandler(BaseHTTPServer.BaseHTTPRequestHandler):
    def do_GET(s):
        s.send_header("Content-type", "text/plain")
 
        query = urlparse(s.path).query
        if not query:
            s.send_response(404)
            s.end_headers()
            s.wfile.write('Not found')
            return
 
        components = dict(qc.split('=') for qc in query.split('&'))
        if not 'bateria' in components:
            s.send_response(404)
            s.end_headers()
            s.wfile.write('Not found')
            return
 
        s.send_response(200)
        s.end_headers()
 
        s.wfile.write('Tocou')
        s.wfile.flush()
 
        log("Atualizando thingspeak")
        r = requests.post('https://api.thingspeak.com/update',
            data={'api_key': CHAVE_THINGSPEAK, 'field1': components['bateria']})
        log("Thingspeak retornou: %d" % r.status_code)
 
        log("Tocando MP3")
        mp3s = [f for f in os.listdir(MP3_DIR) if filtra(f)]
        mp3 = random.choice(mp3s)
        os.system("mpv " + os.path.join(MP3_DIR, mp3))
 
if __name__ == '__main__':
    server_class = BaseHTTPServer.HTTPServer
    httpd = server_class((HOST_NAME, PORT_NUMBER), MyHandler)
    log("Server Starts - %s:%s" % (HOST_NAME, PORT_NUMBER))
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        pass
    httpd.server_close()
    log("Server Stops - %s:%s" % (HOST_NAME, PORT_NUMBER))
