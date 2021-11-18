#!/usr/bin/env sh

set -e

npm run build

cd dist

git init
git add -A
git commit -m 'Versao 1.0'
git push -f https://github.com/LuizFelipe99/pitagoras.git master:gh-pages

cd-