#!/usr/bin/env fish

function texc -a file
    lualatex -shell-escape $file.tex
    if type -q evince
        evince $file.pdf &
    end
end
