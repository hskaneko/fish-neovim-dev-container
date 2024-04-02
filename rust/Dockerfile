ARG BASE_IMAGE=hskaneko-dev-base
FROM ${BASE_IMAGE}

##################################################
# Rust
##################################################
RUN apk add --no-cache build-base
RUN mkdir -p /root/.config/fish/conf.d/
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

##################################################
# Rust Analyzer
##################################################
RUN rustup component add rust-analyzer

##################################################
# CoC Rust Analyzer
##################################################
RUN nvim --headless +'CocInstall -sync coc-rust-analyzer|qall' +qall

COPY nvim/init_custom.lua /root/.config/nvim/lua/

COPY nvim/coc-settings.json /root/.config/nvim/
