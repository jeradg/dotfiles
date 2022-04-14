function! custom_setup#before() abort
    nnoremap <C-P> :Telescope find_files theme=dropdown<cr>
    " " FIXME: "C-[" is an alias for ESC, and we don't want
    " " Telescope opening on ESC!
    " nnoremap <C-[> :Telescope buffers theme=dropdown<cr>

    call SpaceVim#custom#SPCGroupName(['/'], '+Telescope')
    call SpaceVim#custom#SPC('nore', ['/', 'p'], 'Telescope find_files theme=dropdown', 'find_files', 1)
    call SpaceVim#custom#SPC('nore', ['/', '/'], 'Telescope live_grep theme=dropdown', 'live_grep', 1)
    call SpaceVim#custom#SPC('nore', ['/', 'b'], 'Telescope buffers theme=dropdown', 'buffers', 1)
    call SpaceVim#custom#SPC('nore', ['/', 'h'], 'Telescope help_tags', 'help_tags', 1)

    call SpaceVim#custom#SPCGroupName(['/', 'g'], '+git')
    call SpaceVim#custom#SPC('nore', ['/', 'g', 'c'], 'Telescope git_commits', 'commits with diff preview', 1)
    call SpaceVim#custom#SPC('nore', ['/', 'g', 'f'], 'Telescope git_bcommits', "buffer's commits", 1)
    call SpaceVim#custom#SPC('nore', ['/', 'g', 'b'], 'Telescope git_branches', "branches with log preview", 1)
    call SpaceVim#custom#SPC('nore', ['/', 'g', 's'], 'Telescope git_status', "current changes (with add action)", 1)
    call SpaceVim#custom#SPC('nore', ['/', 'g', 'h'], 'Telescope git_stash', "list stash items (with apply action)", 1)
endfunction
