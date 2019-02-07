" Ultisnips configs

if g:snippet_manager == 'ultisnips'
    let g:UltiSnipsExpandTrigger="<C-j>"

    " Configuration for custom snips
    " let g:UltiSnipsSnippetsDir = "~/dotfiles/neovim/snips"
    " let g:UltiSnipsSnippetDirectories = ["UltiSnips", "snips"]
    "
    " Trigger configuration
    " let g:UltiSnipsExpandTrigger='<tab>'
    " let g:UltiSnipsJumpForwardTrigger='<C-r>'
    " let g:UltiSnipsJumpBackwardTrigger='<C-q>'
    "
    " How to open ultisnips ediiting
    " let g:UltiSnipsEditSplit = 'vertical'
    "
    " Configure snips to use python3
    " let g:UltiSnipsUsePythonVersion = 3
else
	echoerr "You have set an invalid value for `g:my_snippet_manager`"
endif
