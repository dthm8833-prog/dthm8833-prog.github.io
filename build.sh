#!/bin/sh
# Tạo index.html độc lập (để host) từ portfolio.html
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="vi">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'; sed -n '1,/<\/style>/p' portfolio.html; printf '</head>\n<body>\n'; sed -n '/<\/style>/,$p' portfolio.html | tail -n +2; printf '</body>\n</html>\n'; } > index.html
