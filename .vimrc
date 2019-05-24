map <F2> :echo 'Current time is ' . strftime('%c')<CR>
noremap s l
noremap n k
noremap t j
noremap h h
noremap e d
noremap z n
command! -nargs=0 Sw w !sudo tee % > /dev/null
