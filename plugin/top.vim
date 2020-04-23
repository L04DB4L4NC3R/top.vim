function! MetaToList()
	normal :.,$s/,/\r\t\*/glxxxxxxxkxxxxxxxkf:lxxxxxxxi	*��akI* ��a/KiBNi* /%Cpui* /Tak�kbsksi* ��a/topNi* ��a
endfunction

function! MakeTable()
	let l = search("PID")
	mark x
	%s/Web Content/Web-Content/g 
	echom l:foundline
	'x,$s/^\s\+//
	'x,$s/$/|/
	'x,$s/^/|/
	'x,$s/\s\+/|/g
	call append('x, "|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|")
	delmark x
endfunction

function! FillTop()
		.! top -n 1 -b
endfunction


function! InsertAndConvert()
		call FillTop()<CR>
		call MetaToList()<CR>
		call MakeTable()<CR>
endfunction

nnoremap tpmd :call InsertAndConvert()<CR><CR>
