if !exists("g:potion_command")
  let g:potion_command = "potion"
endif

function! PotionCompileAndRunFile()
  silent !clear
  execute "!" . g:potion_command . " " . bufname("%")
endfunction

function! PotionShowBytecode()
  " get the bytecode.
  let bytecode = system(g:potion_command . " -c -V " . bufname("%"))
  echom bytecode

  " open a new split and set it up.
  
  " insert the bytecode.
  
endfunction

nnoremap <buffer> <localleader>r :call PotionCompileAndRunFile()<cr>
nnoremap <buffer> <localleader>b :call PotionShowBytecode()<cr>
