#!/usr/bin/env fish

if test "$USE_COPILOT" = "true"
    nvim --headless -c 'Copilot setup' -c 'quit'
end

exec fish
