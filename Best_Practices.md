Best Practices
First format of documentation in Portuguese.
 
Diário de boas práticas para desenvolver uma pesquisa reprodutível  
 
como vc definiria um bom diario de best pratices.
- passo a passo
- registro evolução
- descrever ambiente /detalhes
 
Março
03/03
08/03
10/03
15/03
17/03
22/03
24/03
29/03
31/03
 
Abril
05/04
07/04
12/04
14/04
19/04
26/04
28/04
 
Maio
03/05
05/05
10/05
12/05
17/05
19/05
24/05
26/05
31/05
 
Junho
02/06 
07/06 
09/06
 
Recebi feedbacks para melhorar o paper.
 
Indicação para alterar forma de exibir os links dos arquivos como arquivos do CSV.
Indicar apenas o diretório de um nível acima e não o link do repositório, que acaba ajudando caso a pessoa tenha copiado dados as informações para o equipamento local. 
 
 
No primeiro momento de pesquisa foi listada diversas ferramentas para verificação de suas funções e no que realmente poderiam ajudar a criar uma pesquisa reprodutível. 
 
Escolha do Tema, consumo de energia com dispositivos de IoT
Escolhi o projeto por saber sobre seu funcionamento e por ter disponibilidade das informações em uma plataforma online 
* [Grafico consumo](https://thingspeak.com/channels/58985/charts/1?&median=15&results=60&dynamic=true&type=spline)
 
 
 
Fiquei de testar e tentar usar a ferramenta SUMATRA, não recomendo porque está descontinuada era uma ferramenta usada por um tempo em pesquisa mais voltada para matemáticos, criando históricos e evolução de resultados gerados em suas pesquisas.
 
No desenvolvimento escolhi trabalhar com a ferramenta jupyter notebook para desenvolver o paper com interações ao códigos leitura de arquivos e edição de texto com resultados.
 
Configurei em meu ambiente de trabalho, rodei a partir do workspace da distribuição Majaro Linux, uma distribuição derivada da Arch Linux com interface gráfico XFCE.
 
Nas distribuições linux é padrão ter o ambiente python configurado em seus ambiente mas não utilizei recursos da versão python 3.
Instalação do Jupyter foi simples e rápido  
 
 
 
Gerando Máquina virtual para publicar um ambiente reproduzível
Instalação do software Virtual Box, atualmente utilizo a versão 5.
Trabalhei com uma VM Centos7 por ser mais comum em meu ambiente de trabalho e documentação na internet para área de DEVOPs, 
Configurando ambiente Docker para criar uma imagem prepara para receber informações do meu paper.
 
 
 
16/05/2017
* Utilização do overleaf -  exportar jupyter notebook para pdf
 
21/05/2017
* Criei uma VM no Virtual Box
  CentOS7 -
 *[Configurando IP](https://github.com/EstevesDouglas/ZABBIX-Unicamp-Community/wiki/CentOS7-VM-Configurando-IP-Fixo-no-S.O)
* [Docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-centos-7)
* Docker jupyter notebook- docker pull jupyter/notebook
24/05/2017
 * Estudos sobre licenças de Open Data.
 Utilizarei a publicação do arquivo .CSV junto com os arquivos do paper pelo Github.
 Identifico que não tenho necessidade de utilizar outra plataforma para divulgar as os dados.
 Motivo é criar uma documentação mostrando como exportar as informações dos canais ou gráficos.
 
 
 Estudar mais sobre
 
Não rodou a conversão para PDF em latex
https://medium.com/thoughts-philosophy-writing/how-to-update-overleaf-from-a-juypter-notebook-5469b1405fdc
 
 
Não rodou
https://github.com/jhamrick/nbflow
 
 
Não consegui pesquisar melhor
https://datproject.org/about
 
 
 
 



Aprendendo mais sobre Panda e jupyter notebook
https://github.com/jvns/pandas-cookbook

[[]Jupyter Notebook dicas](https://jakevdp.github.io/blog/2017/03/03/reproducible-data-analysis-in-jupyter/)



[[]Overleaf](https://www.overleaf.com/)
[[]Figshare](https://figshare.com/)
[[]Zenodo](https://zenodo.org/)
[[]re3data](http://www.re3data.org/)

Não deu certo
[[]nbconvert](https://github.com/jupyter/nbconvert-examples)

Ambiente docker e vm
[[]Docker CentOS](https://store.docker.com/editions/community/docker-ce-server-centos)
[]]Docker Ubuntu](https://store.docker.com/images/ubuntu)
[[]Configurando segundo IP em VM VirtualBox](https://github.com/EstevesDouglas/ZABBIX-Unicamp-Community/wiki/CentOS7-VM-Configurando-IP-Fixo-no-S.O)