# Configurar node

## Instalar o nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

## Recarregar o shell (ou feche e abra o terminal)
source ~/.bashrc

## Instalar a versão LTS mais recente do Node
nvm install --lts

## Verificar instalação
node -v
npm -v