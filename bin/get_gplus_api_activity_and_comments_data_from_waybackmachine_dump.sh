#!/usr/bin/env sh
# encoding: utf-8
pup --charset utf-8 $'script[nonce]:contains("key: \'ds:3\'") text{}' | gsed -E 's/^AF_initDataCallback\(.+data:[^\[]+//' | gsed -E 's/^}}\);$//' || echo ""