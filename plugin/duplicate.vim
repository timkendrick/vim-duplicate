nnoremap <silent> <Plug>Duplicate :t.<CR>
xnoremap <silent> <Plug>Duplicate :<C-u>call <SID>DuplicateVisualSelection()<CR>

function! s:DuplicateVisualSelection()
	let existing_register_value = @0
	execute 'normal! gvy`>p'
	let @0 = existing_register_value
endfunction
