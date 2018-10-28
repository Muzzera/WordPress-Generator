#!/bin/bash
#WordPress Core Generator
#Author: Mahmod A. Issa
#Version: 1.0.1


read -p "Insira o nome da sua aplicação: " app_name
read -p "Insira a descrição do seu projeto: " app_desc
read -p "Insira a URL do Site: " app_url
read -p "Insira o Nome do Autor: " app_author
read -p "Versão do Projeto: " app_vs


read -p  "A versão atual do Wordpress é 4.9.8, deseja continuar? / Digite 1 para Sim, digite 2 para Nao: "  wp_vs_continue


echo "Nome do Projeto: $app_name"
echo "Descrição do seu projeto: $app_desc"
echo "URL do Site: $app_url"
echo "Autor/Desenvolvedor Proprietario: $app_author"
echo "Versão do Projeto: $app_vs"


if [[ $wp_vs_continue  -eq 2 ]]; then
        exit 0
else
    curl -O "https://br.wordpress.org/wordpress-4.9.8-pt_BR.zip"
fi

echo "Extraindo sua applicação"

unzip -q  "wordpress-4.9.8-pt_BR.zip"

echo "Removendo arquivos temporario"

rm "wordpress-4.9.8-pt_BR.zip"

mv "wordpress" "$app_name"

theme_path="$app_name/wp-content/themes/$app_name/"

mkdir $theme_path

touch $theme_path/index.php
touch $theme_path/style.css
touch $theme_path/functions.php
touch $theme_path/archive.php
touch $theme_path/single.php
touch $theme_path/page.php
touch $theme_path/sidebar.php
touch $theme_path/home-page.php

echo "/* 
  Theme Name: $app_name
  Theme URI: $app_url
  Author: $app_author
  Description: $app_desc
  Version: $app_vs
*/" >> $theme_path/style.css

code $theme_path

echo "Sua Aplicação esta pronta"
