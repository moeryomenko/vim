" vim-lsp settings.
let g:lsp_signs_enabled = 1		" enable signs
let g:lsp_diagnostics_echo_cursor = 1	" enable echo under cursor when in normal mode
let g:lsp_signs_error = {'text': '✗'}
highlight clear LspWarningLine
" setting for languages.
" setting for c/c++.
if executable('clangd')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'clangd',
				\ 'cmd': {server_info->[
				\	'clangd',
				\	'-background-index', '-j=2',
				\	'--pch-storage=disk',
				\	'--clang-tidy',
				\	'--all-scopes-completion',
				\	'--completion-style=detailed',
				\	'--cross-file-rename',
				\	'--recovery-ast'
				\ ]},
				\ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
				\ })
endif
if executable('cmake-language-server')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'cmake',
				\ 'cmd': {server_info->['cmake-language-server']},
				\ 'root_uri': {server_info->lsp#utils#path_to_uri(
				\ 	lsp#utils#find_nearest_parent_file_directory(
				\ 		lsp#utils#get_buffer_path(), 'build/'
				\       )
				\ )},
				\ 'whitelist': ['cmake'],
				\ 'initialization_options': {
				\   'buildDirectory': 'build',
				\ }
				\})
endif
" setting for golang.
if executable('gopls')
	au User lsp_setup call lsp#register_server({
				\ 'name': 'gopls',
				\ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
				\ 'whitelist': ['go'],
				\ })
	autocmd BufWritePre *.go "LspDocumentFormatSync<CR>"
endif
" setting for vimscript
if executable('vim-language-server')
	augroup LspVim
		autocmd!
		autocmd User lsp_setup call lsp#register_server({
					\ 'name': 'vim-language-server',
					\ 'cmd': {server_info->['vim-language-server', '--stdio']},
					\ 'whitelist': ['vim'],
					\ 'initialization_options': {
					\   'vimruntime': $VIMRUNTIME,
					\   'runtimepath': &rtp,
					\ }})
	augroup END
endif
