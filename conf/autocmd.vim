" Java indent with 4 spaces
au FileType java setlocal tabstop=4 shiftwidth=4 softtabstop=4
au FileType erlang setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab

au FileType xml setlocal noexpandtab

au BufRead,BufNewFile *.scala setf scala
au BufRead,BufNewFile *.sbt setf scala

au BufNewFile,BufRead *.gradle setf groovy
au BufNewFile,BufRead *.json setf javascript
au BufNewFile,BufRead *.md setf markdown
au BufNewFile,BufRead *.pp setf puppet
au BufNewFile,BufRead *.erl setf erlang

let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

au BufReadPost * set bufhidden=delete
