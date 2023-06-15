#!/usr/bin/env fish

function templa -a type name

    set repo ~/.template/repo.tex
    set slide ~/.template/slides.tex
    set memo ~/.template/memo.tex
    set tex .tex

    if test "$name" = ""
        set name ./
    end

    switch $type
        case repo
            tempcopy $repo $name $tex
        case slide
            tempcopy $slide $name $tex
        case memo
            tempcopy $memo $name $tex
        case *
            echo file type invalid
        end
end


function filename -a name ex
    if test $name = "./"
        echo "./"
    else
        echo "./$name$ex"
    end
end

function tempcopy -a from fn ex
    echo "copy template from $from"
    set n (filename $fn $ex)
    cp -p $from $n
end
