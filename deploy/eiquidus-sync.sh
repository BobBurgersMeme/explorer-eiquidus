#!/usr/bin/env bash
set -euo pipefail
cd /opt/eiquidus
/usr/bin/flock -n /var/lock/eiquidus-sync.lock /usr/bin/npm run sync-blocks >> /var/log/eiquidus-sync.log 2>&1 || true
