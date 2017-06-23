
### Best Practices
### First format of documentation in Portuguese.
 
Descrições de experiências no desenvolvimento e configuração do ambiente da pesquisa.

No início da pesquisa, listei junto com outros alunos algumas ferramentas que poderiam ajudar no desenvolvimento do projeto, fiquei responsável por testar SUMATRA uma fermenta para documentar melhor a evolução de testes, desenvolvimento conseguindo versionar os resultados e evolução do projeto, não recomendo a utilização pelo motivo de descontinuação e por estar um ponto tempo sem uso com problemas de versões de bibliotecas com a as versões e distribuições dos sistemas operacionais autuais. 

A principal ferramenta utilizada para gerar o paper foi Jupyter notebook, para escrever textos, demonstrar códigos, ler arquivos com informações coletadas de dispositivos e gerar gráfico para ajudar na visualização no consumo de bateria de dispositivo.
Dicas sobre gerar links, usar sempre link que entrem em diretórios (subpastas) do projeto ao invés de link fixo dentro do github, por exemplo (../data/arquivo.csv) ao invés de usar link github.com/user/projeto/data/arquivo.csv .

Ao final da primeira entrega, recebi opinião solicitando melhorias no formado de divulgar links de instalação de configuração de Jupyter e Anaconda, recursos para execução do paper executável. Indicando apenas um nível acima do projeto para os subdiretórios. 
Meu ambiente de trabalho é uma distribuição Linux chamado Manjaro Linux, derivada da distribuição Arch Linux, pesquisando com outras pessoas, percebi que é bem tranquilo a instalação dessa ferramenta em diversos sistemas operacionais.

Pequena observação que nas distribuições Linux já vem com o python 2.7.13 no ambiente, para outros sistemas operacionais devem ser instalado ou verificado se já tem a versão configuradas. Não estou utilizando a python 3 para esse projeto.
Links de instalações estão no final do README no link principal do paper.
Criando [Workflow](https://www.draw.io/)
Uma ferramenta online que ajuda desenhar workflow, já possui templates, por experiência recomendo criar dois arquivos.
Workflow com visão geral dos fluxos com os componentes e arquivos como todo e outro workflow apenas sobre o paper. 

Problemas com exportas texto.
Tive problema como exportar o arquivo de notebook para pdf e também na tentativa de conversar ele para uma forma e importar na plataforma do overleaf. Não rodando no formato Latex com figuras e padrão de template formatado.


Thingspeak, foi uma ferramenta bem simples de usar e configurar,  basta criar uma conta gratuita, configurar para que o canal seja em formato público e definição dos campos a serem coletados. Acesso o canal publico você consegue exportar os dados coletados no formato CSV e armazenando com o nome de arquivo adequado para realizar a leitura posteriormente via jupyter notebook.
