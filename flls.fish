#!/usr/bin/env fish

function flls -a name
    evince -s $name.pdf &
end
