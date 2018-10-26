#!/bin/bash
#WordPress Core Generator
#Author: Mahmod A. Issa
#Version: 0.0.1


read -p  "A versão atual do Wordpress é 4.9.8, deseja continuar? / Digite 1 para Sim, digite 2 para Nao: "  wp_vs_continue

if [[ $wp_vs_continue  -eq 2 ]]; then
        exit 0
else
    curl -O "https://br.wordpress.org/wordpress-4.9.8-pt_BR.zip"
fi

unzip "wordpress-4.9.8-pt_BR.zip"

read -p "Entre o nome da aplicação WordPress" app_name


mv "wordpress" "$app_name"
