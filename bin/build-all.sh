#!/bin/bash

echo 'running from sh file';
echo 'Delete the dist folder';
rm -rf ./dist
echo 'install and build server code';
npm install --prefix server
echo 'move files to top level';
mv ./server/dist ./dist
echo 'move public folder inside build folder';
cp -r ./public ./dist/public