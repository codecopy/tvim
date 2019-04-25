GuiTabline 0
GuiPopupmenu 0

let s:gui_font_size = '13'

if has('unix')
    execute 'GuiFont! Liberation Mono:h' . s:gui_font_size
else
    execute 'GuiFont! Consolas:h' . s:gui_font_size
endif

execute 'GuiFont! Source Code Pro:h' . s:gui_font_size

set guicursor=a:block
set guicursor+=o:hor50-Cursor
set guicursor+=n:Cursor
set guicursor+=a:blinkon0
if g:colors_name == 'detorte'
    set guicursor+=i-ci-sm:InsertCursor
    set guicursor+=r-cr:ReplaceCursor-hor20
    set guicursor+=c:CommandCursor
    set guicursor+=v-ve:VisualCursor
endif

set tabline=%!ShortTabLine()

" Change font size using <C-up> and <C-down>
nnoremap <C-Up> :call GuiSizeUp()<CR>
nnoremap <C-Down> :call GuiSizeDown()<CR>
