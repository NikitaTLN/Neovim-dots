local function default_header()
    return {
        '', '', '',
        ' ██████╗ ███████╗███╗   ██╗███████╗███████╗██╗███████╗',
        '██╔════╝ ██╔════╝████╗  ██║██╔════╝██╔════╝██║██╔════╝',
        '██║  ███╗█████╗  ██╔██╗ ██║█████╗  ███████╗██║███████╗',
        '██║   ██║██╔══╝  ██║╚██╗██║██╔══╝  ╚════██║██║╚════██║',
        '╚██████╔╝███████╗██║ ╚████║███████╗███████║██║███████║',
        ' ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝╚══════╝╚═╝╚══════╝',
        '', '', ''
    }
end

require('dashboard').setup {
    theme = 'doom',
    config = {
        header = default_header(),
        center = {
            {
                icon = '󰈞 ',
                icon_hl = 'Title',
                desc = 'Find files',
                desc_hl = 'String',
                key = 'f',
                keymap = 'SPC f f',
                key_hl = 'Number',
                action = ':Telescope find_files'
            }, {
				icon = '󰱾 ',
                icon_hl = 'Title',
                desc = 'Open recently',
                desc_hl = 'String',
                key = 'r',
                keymap = 'SPC f r',
                key_hl = 'Number',
                action = ':Telescope oldfiles'
             }, {
                icon = ' ',
                icon_hl = 'Title',
                desc = 'Explorer',
                desc_hl = 'String',
                key = 'p',
                keymap = 'SPC f p',
                key_hl = 'Number',
                action = ":e ~/"
            }

        }
    }
}
