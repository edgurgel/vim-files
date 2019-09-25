nmap <silent> <leader>T :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>

let test#strategy = "iterm"
let test#ruby#bundle_exec = 1
let test#ruby#use_binstubs = 0
let test#ruby#use_spring_binstub = 0
