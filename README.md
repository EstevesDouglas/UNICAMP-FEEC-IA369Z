# UNICAMP-FEEC-IA369Z 2017

# Consumo de energia para dispositivo IoT

IA369Z - Reprodutibilidade em Pesquisa Computacional.

Material produzido no primeiro semestre de 2017 - Faculdade de Engenharia da Elétrica e de Computação UNICAMP.

# Introdução

Objetivo foi pesquisar melhor o conceito e importância de reprodutibilidade, criando um formato de coletar informações e avaliar o consumo de energia para diferentes arquiteturas de microcontroladores com módulos de comunicação sem fio para utilização em dispositivos focando em Internet das Coisas. Segue uma descrição do Ambiente e seus componentes.


# Workflow

Segue o fluxo de comunicação entre os componentes que envolve todo o projeto, todos os pontos podem ser modificado e alterado por novos componentes, conforme segue o formato da pesquisa. Idealizando um cenário para coletar informações gerados por um protótipo em ambiente de estudo. Destaco os nomes dos arquivos nesse workflow para facilitar as indentificação, descrevendo com mais detalhes cada item. Para essa pesquisa iremos trabalhar apenas na leitura do arquivo com informações geradas pelas etapas citadas que podem ser modificada conforme segue a licença do código e projeto. Também podem ser substituto algumas tecnologias citadas para esse estudo.

![Workflow](../figures/workflow04.png)

## campainha.lua
Código fonte usado para rodar no dispositivo é na linguagem de programação LUA onde sua função é ao ser acordado roda função de conectar na rede local, pegar informações da Tensão da bateria para uma plataforma online depois desliga o dispositivo, esse hardware é uma campainha um protótipo usado no Hackerspace de Campinas, utilizado o módulo ESP8266 model 01, usando o mínimo possível de recurso para avaliar o consumo de energia, este dispositivo funciona da seguinte forma, ao ser acionado por um botão, ele é ligado, conectado na rede local e acionado uma campainha e em seguida registra o total de tensão em um dashboard de da plataforma thingspeak.

[Campainha IoT](https://lhc.net.br/wiki/Campainha_IoT)

## servidor.py
Arquivos que fica em execução rodando o programa em python para receber as informações das campainha, ele tem como principal função ao ser acionado tocar som aleatórios dentro da casa e comunicar com outro dispositivo para notificar informações em outro dispositivo visual. então esse programa tem como objetivo tratar um chamado, executar funções locais e acionar outro dispositivo que está em fase de desenvolvimento.

## Thingspeak
Plataforma Open Source para análise da Internet das Coisas, contém recursos como registrar dados coletados por devices e através de talas e gráficos exibir informações de forma dinâmica. Por ser aberta existem diversos recursos que podem ser usado nessa ferramenta. Como exportar as informações coletadas através de arquivos JSON e CSV. Existe uma integração com a plataforma da MATLAB voltada para Internet das Coisas. Os dados são coletados e processados na nuvem, suas informações são registradas através de canais onde criadas em formas de perfis para acesso público ou fechadas de forma restrita conforme sua necessidade. Plataforma disponibiliza formas de compartilhar essas informações que geralmente são usadas gráficos dinâmica para exibir os valores coletados por sensores. Outro recurso diferenciado é forma de reação, sendo assim não apenas recebe informações, mas se uma condição for específica ou ultrapassar certo limite pode criar um mecanismo de acionamento de um retorno. (talback). Arquivo exportado no estudo que contêm informações coletado da campainha IoT. Tem informações como data de acionamento, numero registrado e total de carga contida nas baterias de alimentação do equipamento.

## Export CSV
Etapa onde pode ser exportado informações coletadas no Thingspeak, ao acessar o Canal ou o gráfico do Canal com as informações relevantes, basta acionar o botão exportar e escolher o formato. lembrando que para rodar esse paper utilizamos o formato em CSV.

## database.csv
Arquivo exportado da plataforma thingspeak, as informações está em um canal aberto com dados da Campainha IoT. Podem ser visualizada através do seguinte link[https://thingspeak.com/channels/58985/]

## delivier/2017-16-06-estevesdouglas-notebook.ipynb
O formato de notebook com documentação do projeto, centralizando as informações referentes a pesquisa em reprodutibilidade computacional. Os arquivos seguem um padrão de nomeação para facilitar o entendimento sobre a versão e seu objetivo, conforme discutido durante a disciplina segue o padrão de data da versão com nome do notebook e seu objetivo, nesse caso versão final de notebook, criei também outros notebooks referenciando etapas dos estudos como leitura de arquivo CSV, outro apenas para mostrar o códigos fontes dos programas usados durante a pesquisa.

# Organização dos arquivos e suas descrições
* /data - Informações exportado em CSV
* /deliver - Formato final do paper
* /dev - Notebooks e Ambiente de desenvolvimento
* /figures - Imagens e desenhos de workflow
* /scr - códigos
* Best_Practices.md - Arquivo de boas práticas
* LICENSE - condições de licença

# Execução do Paper
* Paper está localizado no diretório [deliver](/deliver/)
* Visualizar os códigos fontes do dispositivo e servidor no [/scr/](/src/)
* Dados coletados e exportados na pasta [/data/](/data)/

Para rodar o Paper é necessário ter o Ambiente configurado com o Jupyter Notebook e baixar os dados dessa pesquisa.
