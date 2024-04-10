FROM alpine

RUN apk update && apk add bash fish curl tmux neovim nodejs npm git tig fzf fd bat the_silver_searcher ripgrep

##################################################
# fish
##################################################
# create empty history file
RUN mkdir -p /root/.local/share/fish && touch /root/.local/share/fish/fish_history

# basic config file
COPY ./fish/config.fish /root/.config/fish/config.fish

# install fisher (plugin manager)
RUN fish -c 'curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher'

# # install plugins via fisher
# RUN fish -c 'fisher install jethrokuan/fzf'
RUN fish -c 'fisher install PatrickF1/fzf.fish'
RUN fish -c 'fisher install IlanCosman/tide'

# config files for IlanCosman/tide
COPY ./fish/functions/ /root/.config/fish/functions/


##################################################
# tmux
##################################################
COPY tmux/.tmux.conf /root/

##################################################
# neovim
##################################################
# install packer (plugin manager)
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    /root/.local/share/nvim/site/pack/packer/start/packer.nvim

# init
COPY nvim/init.lua /root/.config/nvim/

# install plugins via packer
RUN nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerInstall'

# setup CoC
RUN cd /root/.local/share/nvim/site/pack/packer/start/coc.nvim/ && npm ci

# setup Copilot (and run fish)
COPY entrypoint.fish /entrypoint.fish
RUN chmod +x /entrypoint.fish
ENTRYPOINT ["/entrypoint.fish"]

##################################################
WORKDIR /workspace
