# Criação do Script
## [Infraestutura como Código](https://docs.google.com/presentation/d/1_vwPcBh7YUhUfu37lAUYQqhhP8LMmPHRCXo1Bc7czTs/edit#slide=id.p3)
### Estrutura do Sistema de Arquivos

| Grupo | Usuários | Permissões |
|---|---|---|
| GRP_ADM | carlos, maria, joao | Leitura e escrita em /adm |
| GRP_VEN | debora, sebastiana, roberto | Leitura e escrita em /ven |
| GRP_SEC | josefina, amanda, rogerio | Leitura e escrita em /sec |

#### Criei o script iac2.sh para poder criar automaticamente os usuários, grupos e diretórios
#### Também criei um script apagar_iac2.sh para apagar o que criei se for necessário para não tomar muito tempo

    nano iac2.sh
    nano apagar_iac2.sh
Para iniciar um arquivo de Script deve colocar no inicio do arquivo:

    #!/bin/bash
### Para iniciar o Script iac2.sh e apagar_iac2.sh
Deve mudar a permissão de execução com o comando:

    chmod +x iac2.sh
    chmod +x apagar_iac2.sh
Para executar Script:

    ./iac2.sh
    ./apagar_iac2.sh
Visualizar a pasta root de outro diretório

    ls -l /
Voltar a pasta usuário

    cd ../
