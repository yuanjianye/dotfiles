set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

let b:coc_suggest_disable = 1
let b:coc_diagnostic_disable = 1
autocmd FileType c let b:coc_suggest_disable = 1
autocmd FileType cpp let b:coc_suggest_disable = 1
autocmd FileType c let b:coc_diagnostic_disable = 1
autocmd FileType cpp let b:coc_diagnostic_disable = 1

call coc#config('coc.preferences', {
			\ "autoTrigger": "none",
			\ "maxCompleteItemCount": 5,
			\ "codeLens.enable": 0,
			\ "diagnostic.virtualText": 0,
			\})

" c/c++ golang 和 bash 的 language server 设置
call coc#config("languageserver", {
      \"ccls": {
      \  "command": "ccls",
      \  "filetypes": ["c", "cpp"],
      \  "rootPatterns": ["compile_commands.json", ".svn/", ".git/"],
      \  "index": {
      \     "threads": 8
      \  },
      \  "initializationOptions": {
      \     "cache": {
      \       "directory": ".ccls-cache"
      \     },
      \     "highlight": { "lsRanges" : v:true }
      \   },
      \  "client": {
      \    "snippetSupport": v:false
      \   }
      \}
      \})

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nnoremap gc :<C-u>CocList -I symbols<cr>
nnoremap <Leader>s :<C-u>CocList -I symbols<cr>
