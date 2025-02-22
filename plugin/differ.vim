" vim-differ - Diff windows easily
"
" Author:     Artur Pyszczuk <apyszczuk@gmail.com>
" License:    Same terms as Vim itself
" Website:    https://github.com/apyszczuk/vim-differ
"
if exists ('g:loaded_differ')
    finish
endif
let g:loaded_differ = 1

" TODO:
" option for disabling default commands
command! -nargs=+ Diff  :call differ#diff_windows_on(<f-args>)
command! -nargs=* Diffo :call differ#diff_windows_off(<f-args>)
