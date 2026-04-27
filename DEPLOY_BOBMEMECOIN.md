# BobMemeCoin eIquidus deployment

This repository contains the BobMemeCoin-branded eIquidus explorer source.

## Runtime used on explorer.bobmeme.com

- Node.js 24.x
- MongoDB 7.x
- Nginx reverse proxy
- PM2 process manager
- BobMemeCoin RPC on `127.0.0.1:36651`

## Files

- `settings.bobmemecoin.example.json`: sanitized example config. Copy to `settings.json` and fill Mongo/RPC secrets.
- `deploy/`: Nginx and systemd units used on the server.

## Start

```bash
npm install --omit=dev
cp settings.bobmemecoin.example.json settings.json
npm run prestart
npm run sync-blocks
npm run start-pm2
pm2 save
```
