#!/bin/bash

SENHA="Proauto002@"
HASH=$(echo -n "$SENHA" | sha256sum | awk '{print $1}')
ARQUIVO="senha_hash.csv"
if [ ! -f "$ARQUIVO" ]; then
    echo "senha,hash" > "$ARQUIVO"
fi
# echo "$SENHA,$HASH" >> "$ARQUIVO"
echo "Hash SHA256: $HASH"
