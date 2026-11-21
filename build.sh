#!/bin/sh
# karuta.html（Artifact用の本文）から、単体で開ける index.html（GitHub Pages / ローカル用）を作る
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="ja">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n<meta name="apple-mobile-web-app-capable" content="yes">\n<meta name="mobile-web-app-capable" content="yes">\n<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">\n<meta name="theme-color" content="#16212b">\n<style>html,body{margin:0}[hidden]{display:none!important}</style>\n</head>\n<body>\n'; cat karuta.html; printf '\n</body>\n</html>\n'; } > index.html
