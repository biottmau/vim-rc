# vim-rc
Configuración simple para desarrolladores que utilizan VIM. El mismo utilizo para programar en PHP, Javascript, jQuery, React,  NodeJS y express.

# Requerimientos
- vim 8.1+
- Node 10+

# Instalaciones previas

Para configurar es necesario tener Python3  y la ultima version de npm

- curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
- curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
- sudo pip3 install neovim
- sudo npm install --global prettier @prettier/plugin-php

# Algunas configuraciones.

- Ctrl+P Busca archivos dentro del folder donestas trabajando para tener acceso rapido sin cerrar el vim
- Ctrl+B Abre o cierra un Arbol de la estructura de archivos.
- ,cc Comenta bloque de lineas.
- ,c<space> Descomenta bloque de lineas.
- Ctrl+Shit+i acomoda el codigo utilizando prettier.
- Ctrl +B para abrir el menu de archivos y ahi dentro m para mostrar menú de opciones
  
# Algunos comandos antes de ejecutar el PlugInstall
- curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
- npm install --save-dev --save-exact prettier

