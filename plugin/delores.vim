function! InsertFromFile(nesting)
    let filename = expand('~/git/scripts-for-delores/main.md')  " Hardcoded file path
    let name = substitute(getreg('a'), '^[# \t\n]*\|[# \t\n]*$', '', 'g')  " Trim all whitespace and line breaks from register a
    let lines = readfile(filename)
    let found = 0
    let result = []
    let indent = repeat(' ', a:nesting * 4)  " Create indentation based on nesting level

    echo 'Debug: Looking for "' . name . '" in ' . filename
    echo 'Debug: Nesting level set to ' . a:nesting

    for line in lines
        if line =~ '^#\s*'  " Detect markdown heading with any number of spaces
            echo 'Debug: Found heading -> ' . line
            if found
                echo 'Debug: Reached next heading, stopping'
                break  " Stop reading at the next heading
            endif
            if line =~ '^#\s*' . name . '\s*$'  " Match heading with any number of spaces before name
                let found = 1
                echo 'Debug: Match found for "' . name . '"'
                continue
            endif
        endif
        if found
            echo 'Debug: Adding line -> ' . line
            call add(result, indent . line)  " Apply indentation
        endif
    endfor

    if !empty(result)
        echo 'Debug: Inserting ' . len(result) . ' lines'
        call append(line('.'), result)
    else
        echo 'Entry not found in file'
    endif
endfunction

command! -nargs=1 InsertFromFile call InsertFromFile(<f-args>)
nnoremap lna "ayi):InsertFromFile 


