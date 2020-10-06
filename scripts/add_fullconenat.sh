#!/bin/sh

# [K]2020

[ -f "/tmp/scripts/add-fullconenat.diff" ] && git apply /tmp/scripts/add-fullconenat.diff || git apply ./add-fullconenat.diff

git clone https://github.com/llccd/netfilter-full-cone-nat.git /tmp/netfilter-full-cone-nat

cp -f /tmp/netfilter-full-cone-nat/xt_FULLCONENAT.c  ./net/netfilter/xt_FULLCONENAT.c

git add .
git commit -s -m "Add fullconenat"
