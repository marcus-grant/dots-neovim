" ALE Linting options : http://bit.ly/2wY3Kr3
" This issue has been raised on plugin repo to deal with ALE coexisting CoC
" Issue: http://bit.ly/39nvaKP
" Also consider checking :help ale-lint-other-sources 

" when to actually lint
" on save active by default
" let g:ale_lint_on_save = 1
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

" TODO: test with flow on non typescript
" let g:ale_completion_enabled = 1
" let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_sign_error = '⤫'
" let g:ale_sign_warning = '⚠'

"  linters
let g:ale_linters = {
\  'javascript': ['eslint'],
\  'javascript.jsx': ['eslint'],
\  'typescript': ['tslint'],
\}
" enable filetypes using the associated linting program
" Recently changed to test if using npx enforces local linters instead of global
" TODO we might want to remove fixers with CoC in use
" let g:ale_fixers = {
" \   'javascript': ['eslint'],
" \   'javascript.jsx': ['eslint'],
" \   'typescript': ['tslint'],
" \}

