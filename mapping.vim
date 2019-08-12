" general.
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
" setting for lsp.
noremap <C-]> :LspDefinition<cr>
noremap <C-r> :LspReferences<cr>
noremap <f2> :LspRename<cr>
noremap <C-a> :LspWorkspaceSymbol<cr>
noremap <C-l> :LspDocumentSymbol<cr>
" setting for tagbar.
nmap <F8> :TagbarToggle<CR>
" setting for autoformat.
noremap <F3> :Autoformat<CR>
