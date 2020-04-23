" This is a macro which converts the first part of the 
" metadata in top to a list
function! MetaToList()
		normal :.,$s/,/\r\t\*/glxxxxxxxkxxxxxxxkf:lxxxxxxxi	*€ýakI* €ýa/KiBNi* /%Cpui* /Tak€kbsksi* €ýa/topNi* €ýa
endfunction

" Search for PID and add a marker there
" Insert the table border underneath the marker
" Replace Web Content by Web-Content so that 
" in the next step the space doesnt get replaced by |
" Replace all line beginning with a space to an empty string
" Replace all line termination characters into |
" Replace all line beginning characters into |
" Replace consecutive spaces with |
" Perform all of these operations from the marker till the end
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

" Execute the top command with appropriate arguments
" and dump the result into the current buffer
" -b flag is for batch mode (to remove control characters)
" -n is for watching the top output for only 1 cycle
function! FillTop()
		.! top -n 1 -b
endfunction

" Minimum limit of lines to show for it to properly render = 8
" Execute the top command with appropriate arguments
" and dump the result into the current buffer
function! FillTopN(n)
		if a:n < 8
				execute ".! top -n 1 -d 5 -b|grep 'load average' -A 8"
		else
				execute ".! top -n 1 -d 5 -b|grep 'load average' -A ".a:n
		endif
endfunction


" Insert top from the cmd line
" Make a list
" Make a table
function! InsertAndConvertN(n)
function! InsertAndConvert()
		call FillTop()<CR>
		call MetaToList()<CR>
		call MakeTable()<CR>
endfunction

" Insert top from the cmd line
" Make a list
" Make a table
" limit the processes
function! InsertAndConvertN(n)
		call FillTopN(a:n)<CR>
		call MetaToList()<CR>
		call MakeTable()<CR>
endfunction

" map tpmd to insertion and conversion
nnoremap tpmd :call InsertAndConvert()<CR><CR>

" map a number + tpmt to limit the processes
nnoremap tpmt :<c-u>call InsertAndConvertN(v:count1)<CR><CR>
