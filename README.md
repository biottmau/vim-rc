# vim-rc
Configuración simple para desarrolladores que utilizan VIM. El mismo utilizo para programar en PHP, Javascript, jQuery, React,  NodeJS y express.

# Requerimientos
- vim 8.1+
- Node 10+ ( Para acctualizar node curl -sL install-node.now.sh/lts | bash  )
- Python 3.6.1+


# Instalaciones previas

Para configurar es necesario tener Python3  y la ultima version de npm

- curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
- curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
- sudo pip3 install neovim
- sudo npm install --global prettier @prettier/plugin-php
- npm install --save-dev --save-exact prettier

# Algunas configuraciones.

- Ctrl+P Busca archivos dentro del folder donestas trabajando para tener acceso rapido sin cerrar el vim
- Ctrl+B Abre o cierra un Arbol de la estructura de archivos.
- ,cc Comenta bloque de lineas.
- ,c<space> Descomenta bloque de lineas.
- Ctrl+Shit+i acomoda el codigo utilizando prettier.
- Ctrl +B para abrir el menu de archivos y ahi dentro m para mostrar menú de opciones

# Las configuraciones extras de Coc las coloco en archivos distintos dentro de .vim/config 
- cp -r vim/config ~/.vim/.

# Agrego carpeta con diferentes esquemas de colores , en su mayoría en Dark mode 
- cp -r vim/colors ~/.vim/.

# Obtengo los colores de 
- https://github.com/flazz/vim-colorschemes
 
# Dentro del vi ejecuto para obtener la ayuda de javascript  
- :CocInstall coc-json coc-tsserver coc-phpls coc-snippets
