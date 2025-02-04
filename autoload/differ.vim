if exists ('g:autoloaded_differ')
    finish
endif
let g:autoloaded_differ = 1

" TODO:
" if diff active, disable and then enable with new parameters

function! differ#diff_windows_on(...)
    for i in a:000
        execute i . "windo diffthis"
    endfor
endfunction

function! differ#diff_windows_off(...)
    if empty(a:000)
        :diffoff!
        return
    endif

    for i in a:000
        execute i . "windo diffoff"
    endfor
endfunction
