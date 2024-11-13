# [Nomes de usuário padrão](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/managing-users.html#ami-default-user-names)

## Criação do Script
## [Infraestutura como Código](https://docs.google.com/presentation/d/1_vwPcBh7YUhUfu37lAUYQqhhP8LMmPHRCXo1Bc7czTs/edit#slide=id.p3)
### Os nomes de usuário padrão são:
```
Para uma AMI do Amazon Linux, o nome do usuário é ec2-user.
Para uma AMI do CentOS, o nome do usuário é centos ou ec2-user.
Para uma AMI do Debian, o nome do usuário é admin.
Para uma AMI do Fedora, o nome do usuário é fedora ou ec2-user.
Para uma AMI do RHEL, o nome do usuário é ec2-user ou root.
Para uma AMI do SUSE, o nome do usuário é ec2-user ou root.
Para uma AMI Ubuntu, o nome de usuário é ubuntu.
Para uma AMI do Oracle, o nome do usuário é ec2-user.
Para uma AMI do Bitnami, o nome do usuário é bitnami.
```
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
