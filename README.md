# UNICAMP-FEEC-IA369Z 2017

IA369Z - Reprodutibilidade em Pesquisa Computacional.

Material produzido no primeiro semestre de 2017 - Faculdade de Engenharia da Elétrica e de Computação UNICAMP.

- [Profa. Leticia rittner](http://www.leticiarittner.com/ia369_1s2017.html)
- [Douglas Esteves](mailto:douglas@iotmakers.com.br)

# Introdução

Objetivo foi pesquisar melhor o conceito e importância de reprodutibilidade, criando um formato de coletar informações e avaliar o consumo de energia para diferentes arquiteturas de microcontroladores com módulos de comunicação de dispositivos usados para Internet das Coisas.
Segue uma descrição do Ambiente e seus componentes.


# Workflow

Segue o fluxo de comunicação entre os componentes, que podem ser modificado e alterado por novos componentes, conforme segue o formato da pesquisa. Idealizando um cenário para coletar e protótipo de um ambiente de estudo. Destaco os nomes dos arquivos para descrever em detalhes o seu funcionamento, podendo ser modificado e utilizado para outras tecnologias, entrando para contribuição da pesquisa.

![Workflow](https://github.com/EstevesDouglas/UNICAMP-FEEC-IA369Z/blob/master/figures/workflow03.png)

## campainha.lua
Código fonte usado para rodar a no dispositivo nomeado como campainha, esse hardware é uma campainha um protótipo usado no Hackerspace de Campinas, estudos com o módulo ESP8266 model 01, usando o mínimo possível de recurso para avaliar o consumo de energia, 
Esse dispositivo funciona da seguinte forma, ao ser acionado por um botão, ele é ligado, verificando 
Dispositivo usado para testes e gerar dados coletados, usei um microcontrolador com módulo de Wifi da Espressif

O Programa é desenvolvido na linguagem LUA. sua função é ao ser acordado (ativado) rodar o programa, acionando o módulo de wifi, conectar na rede local programada, fazer uma requisição para um específico dispositivo, mostrar status de andamento através de acionamento de led e depois desligar novamente.

## servidor.py
Arquivo executado no equipamento centralizado na casa para receber o chamado do dispositivo, no caso da pesquisa uma campainha, ao receber e tratar o chamado do dispositivo, ele aciona outro dispositivo para emitir interação visual e tocar um som local que é seu principal objetivo.

## export.csv
Arquivo  exportado da plataforma Thingspeak que é uma plataforma de Internet of things open source com API
Uma plataforma open source para Internet das Coisas, atualmente foi adquirida pela MathWorks onde está sendo integradas com os recursos com a ferramenta Matlab

## Thinkspeak
Plataforma Open Source para análise da Internet das Coisas, contém recursos como registrar dados coletados por devices e através de talas e gráficos exibir informações de forma dinâmica. Por ser aberta existem diversos recursos que podem ser usado nessa ferramenta. Como exportar as informações coletadas através de arquivos JSON e CSV. Existe uma integração com a plataforma da MATLAB voltada para Internet das Coisas. Os dados são coletados e processados na nuvem, suas informações são registradas através de canais onde é criadas formas de perfis de acesso público ou fechadas de forma restrita conforme sua necessidade. Plataforma disponibiliza formas de compartilhar essas informações que geralmente são usadas gráficos dinâmica para exibir os valores coletados por sensores. Outro recurso diferenciado é forma de reação, sendo assim não apenas recebe informações, mas se uma condição for específica ou ultrapassar certo limite pode criar um mecanismo de acionamento de um retorno. (talback). Arquivo exportado no estudo que contêm informações coletado da campainha IoT. Tem informações como data de acionamento, numero registrado e total de carga contida nas baterias de alimentação do equipamento.

## database.csv
Arquivo exportado da plataforma thinkspeak, as informações está em um canal aberto com dados da  Campainha IoT. Podem ser visualizada através do seguinte link[]

## delivier/2017-xx-xx-estevesdouglas-notebook.ipynb
Formato de notebook com a documentação do projeto, onde centraliza as informações referente a pesquisa.
Os arquivos seguem um padrão de nomeação para facilitar o entendimento sobre a versão e seu objetivo, conforme discutido durante a disciplina segue o padrão de data da versão com nome do notebook e seu objetivo, nesse caso versão final de notebook, criei outros referenciando etapa dos estudos como leitura de arquivo, códigos fontes de parte dos programas usadas durante a pesquisa.


# Organização dos arquivos e suas descrições
* /data - Informações exportado em CSV
* /deliver - Formato final do paper
* /dev - Notebooks e Ambiente de desenvolvimento
* /figures - Imagens e desenhos de workflow
* /scr - códigos
- Best_Practices.md - Arquivo de boas práticas
- LICENSE - condições de licença

# Execução do Paper

Paper está ano diretório deliver [Notebook](https://github.com/EstevesDouglas/UNICAMP-FEEC-IA369Z/blob/master/deliver/2017-06-01-estevesdouglas-notebook.ipynb)
Código fonte do Servidor [Códigos](https://github.com/EstevesDouglas/UNICAMP-FEEC-IA369Z/blob/master/deliver/2017-05-16-estevesdouglas-codigos.ipynb)

Necessita apenas do arquivo CSV para leitura de dados, respeitar apenas as organizações dos arquivos para que encontrem e o resultado seja exibido no Notebook.


