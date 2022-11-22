# CT - Oficina de Projetos 7

Repositório Criado Para Homologação do Software Moodle Executando em Containers

#

## Passo a Passo da Instalação

#

### 1-Instalação do Docker
#

#### Windows    
    https://docs.docker.com/desktop/install/windows-install/

#### Linux
    https://docs.docker.com/desktop/install/linux-install/

#### Mac
    https://docs.docker.com/desktop/install/mac-install/   

#    
### 2-Instalação do Docker Swarm

    docker swarm init

#
### 3-Deploy das Aplicações MARIADB e GLPI

    docker stack deploy -c docker-compose.yml moodle

#
### 4-Deploy do Portainer

    docker stack deploy -c portainer-agent-stack.yml portainer