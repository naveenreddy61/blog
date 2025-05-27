#!/bin/bash
hugo
cd public
git add .
git commit -m "Deploy update"
git push
cd ..

