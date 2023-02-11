#!/bin/sh
echo -e export const GQL_ADDR = \"http://127.0.0.1:4500\" > GonzaloShop_Frontend/src/utils/env.ts
cd GonzaloShop_Frontend/
npm install
npm start
tail -f /dev/null