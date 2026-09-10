#!/usr/bin/env bash
set -Eeuo pipefail

echo "==> Instalando dependências..."
sudo apt update
sudo apt install -y curl ca-certificates

echo "==> Instalando NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo "==> Carregando NVM..."

export NVM_DIR="$HOME/.nvm"

if [ -s "$NVM_DIR/nvm.sh" ]; then
  # shellcheck disable=SC1090
  source "$NVM_DIR/nvm.sh"
else
  echo "Erro: NVM não foi instalado corretamente."
  exit 1
fi

echo "==> Instalando Node.js LTS..."
nvm install --lts

echo "==> Definindo Node.js LTS como padrão..."
nvm alias default 'lts/*'
nvm use default

echo "==> Verificando instalação..."

echo
echo "NVM:"
nvm --version

echo
echo "Node:"
node --version

echo
echo "NPM:"
npm --version

echo
echo "Instalação concluída com sucesso."