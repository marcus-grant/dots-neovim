" ALE Linting options : http://bit.ly/2wY3Kr3

"  linters
let g:ale_linters = {
\  'javascript': ['eslint'],
\}
" enable filetypes using the associated linting program
" Recently changed to test if using npx enforces local linters instead of global
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\   'typescript': ['tslint'],
\}
" lint on saves
let g:ale_fix_on_save = 1
" TODO: test with flow on non typescript
" let g:ale_completion_enabled = 1
" let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_sign_error = '⤫'
" let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

