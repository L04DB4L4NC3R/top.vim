function! MetaToList()
	normal :%s/,/\r\t\*/glxxxxxxxkxxxxxxxkf:lxxxxxxxi	*€ýakI* €ýa/KiBNi* /%Cpui* /Tak€kbsksi* €ýa/topNi* €ýa
endfunction

function! MakeTable()
	%s/Web Content/Web-Content/g 
	28,$s/^\s\+//
	28,$s/\s\+/|/g
	28,$s/$/|/
	28,$s/^/|/
	let l:foundline = search("PID")
	call append(l:foundline, "|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|")
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
