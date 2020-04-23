function! MetaToList()
	normal :.,$s/,/\r\t\*/glxxxxxxxkxxxxxxxkf:lxxxxxxxi	*€ýakI* €ýa/KiBNi* /%Cpui* /Tak€kbsksi* €ýa/topNi* €ýa
endfunction

function! MakeTable()
	let l = search("PID")
	mark x
	call append(l, "|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|:--:|")
	%s/Web Content/Web-Content/g 
	echom l:foundline
	'x,$s/^\s\+//
	'x,$s/$/|/
	'x,$s/^/|/
	'x,$s/\s\+/|/g
	delmark x
endfunction

function! FillTop()
		.! top -n 1 -b
endfunction

function! FillTopN(n)
		if a:n < 8
				execute ".! top -n 1 -d 5 -b|grep 'load average' -A 8"
		else
				execute ".! top -n 1 -d 5 -b|grep 'load average' -A ".a:n
		endif
endfunction


function! InsertAndConvert()
		call FillTop()<CR>
		call MetaToList()<CR>
		call MakeTable()<CR>
endfunction

function! InsertAndConvertN(n)
		call FillTopN(a:n)<CR>
		call MetaToList()<CR>
		call MakeTable()<CR>
endfunction

nnoremap tpmd :call InsertAndConvert()<CR><CR>
nnoremap tpmt :<c-u>call InsertAndConvertN(v:count1)<CR><CR>







