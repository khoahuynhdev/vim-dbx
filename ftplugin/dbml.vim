if exists("b:did_ftplugin") | finish | endif

" Don't load another plug-in for this buffer
let b:did_ftplugin = 1

setlocal tw=0
setlocal commentstring=//%s
setlocal formatoptions=tcqro


" Undo the stuff we changed
let b:undo_ftplugin = "setlocal tw< cms< fo<"

