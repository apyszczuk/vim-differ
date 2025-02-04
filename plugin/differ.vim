if exists ('g:loaded_differ')
    finish
endif
let g:loaded_differ = 1

" TODO:
" option for disabling default commands
command! -nargs=+ Diff  :call differ#diff_windows_on(<f-args>)
command! -nargs=* Diffo :call differ#diff_windows_off(<f-args>)
