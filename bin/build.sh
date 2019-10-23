#!/bin/bash
echo '==========> delete the dist folder'
rm -rf ./dist
echo '==========> install and build server code'
npm install --prefix server
echo '==========> move files to top level'
mv ./server/dist ./dist
echo '==========> install client related module'
npm install --prefix client
echo '==========> build client code'
npm run build:prod --prefix client
echo '==========> move files to top level'
mv ./client/dist ./dist/public
echo '==========> build complete'