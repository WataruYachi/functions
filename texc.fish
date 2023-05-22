#!/usr/bin/env fish

function texc -a file
    lualatex $file.tex
    evince $file.pdf &
end
