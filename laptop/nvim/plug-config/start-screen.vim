let g:startify_custom_header = [
        \ '                                    ........ ',
        \ '                               ..,;;;;,;;;;;;,.    ',
        \ '                             ..,...         ..,,.',
        \ '                                                      ',
        \ '                                      ..                   ',
        \ '                                      :;                       ',
        \ '                                     .do..                             ',
        \ '                  .               ...lOkxc...               .          ',
        \ '               ....            .,,,.:xloOx:.,,..            ....   ',
        \ '              .;.            .,;.  .dl..;oo.  .;,.            .;.  ',
        \ '             ,c.            .:.  .:dc.   .cd;.  ,:.            .:.',
        \ '            .c,            .;;.,coc,.;:::,.,col;.:;.            ;c. ',
        \ '            ,l.      ...,;:oxol:,. .l:..,cl. .,:ldxl:;....      .l,  ',
        \ '            ,c.      ...,::oxdl:.. .l:..,cl. ..:ldxo::,...      .l,    ',
        \ '            .c,            .::.;llc..;::c;..col;,:;             ;c.',
        \ '             ,:.            .;.  .:d:.   .:d:.  ,;.            .c, ',
        \ '              .;.            .,,.  .dl...lo.  .;,.            .;. ',
        \ '               ....            .,,..:xllOx:.,,,.            ....',
        \ '                  .               ...lOkkl...               .',
        \ '                                     .do,.',
        \ '                                      ::',
        \ '                                      ..',
        \ '                                                          ',
        \ '                            ...                 ... ',
        \ '                             ..,...         ...,.. ',
        \ '                               ..,;;;;,,,;;;;,..  ',
        \ '                                   ......... ',
        \]
let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Dernier Fichier']            },
          \ { 'type': 'dir',       'header': ['   Fichier Courant  '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Marque-page']      },
          \ ]
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_bookmarks = [
            \ { 'l': '~/Documents/License' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'w': '~/.config/i3/config' },
            \ ]
