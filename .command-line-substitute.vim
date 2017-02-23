function! CommandLineSubstitute()
    let cl = getcmdline()
    if exists('g:command_line_substitutes')
        for [k, v] in g:command_line_substitutes
            if match(cl, k) == 0
                let cl = substitute(cl, k, v, "")
                break
            endif
        endfor
    endif
    return cl
endfunction
