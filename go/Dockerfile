ARG BASE_IMAGE=hskaneko-dev-base
FROM ${BASE_IMAGE}

##################################################
# Go
##################################################
RUN apk add --no-cache go

##################################################
# CoC python
##################################################
RUN nvim --headless +'CocInstall -sync coc-go|qall' +qall

# COPY nvim/init_custom.lua /root/.config/nvim/lua/
