ARG BASE_IMAGE=hskaneko-dev-base
FROM ${BASE_IMAGE}

##################################################
# TypeScript
##################################################
RUN npm install -g typescript typescript-language-server

##################################################
# Prettier
##################################################
RUN npm install -g prettier
RUN nvim --headless +'CocInstall -sync coc-prettier|qall' +qall
COPY nvim/coc-settings.json /root/.config/nvim/

##################################################
# CoC tsserver
##################################################
# RUN npm install -g coc-tsserver
RUN nvim --headless +'CocInstall -sync coc-tsserver|qall' +qall

# COPY nvim/init_custom.lua /root/.config/nvim/lua/

