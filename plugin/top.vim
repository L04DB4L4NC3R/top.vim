function! MetaToList()
	normal :%s/,/\r\t\*/glkk/0i	* nni€kb€kb€kb€kb€kb€kb€kbnni€kb€kb€kb€kb€kb€kb€kbjjh
endfunction

function! MakeTable()
	%s/Web Content/Web-Content/g 
	28,$s/^\s\+//
	28,$s/\s\+/|/g
	28,$s/$/|/
	28,$s/^/|/
	call append(29, "|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|")
endfunction

function! FillTop()
		.! top -n 1 -b
endfunction


function! InsertAndConvert()
		call FillTop()<CR><CR>
		call MetaToList()<CR><CR>
		call FillTop()<CR>
endfunction

nnoremap tree :call InsertAndConvert()<CR><CR>
