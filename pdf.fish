#!/usr/bin/env fish

function pdf -a name
    evince $name.pdf &
end
