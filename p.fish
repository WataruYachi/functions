#!/usr/bin/env fish

function p -a name
    evince -s --page-label=1 $name.pdf &
end
