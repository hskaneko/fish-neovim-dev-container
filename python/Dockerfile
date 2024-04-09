ARG BASE_IMAGE=hskaneko-dev-base
FROM ${BASE_IMAGE}

##################################################
# Python
##################################################
RUN apk add --no-cache python3 py3-pip

##################################################
# CoC python
##################################################
RUN nvim --headless +'CocInstall -sync coc-pyright|qall' +qall

# COPY nvim/init_custom.lua /root/.config/nvim/lua/
