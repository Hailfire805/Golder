SMODS.Consumable:take_ownership(
    'devil',
    {
        config = {
            mod_conv = 'm_gold', 
            max_highlighted = 2
        },
        loc_txt = {
            ['default'] = {
                name = 'The Devil',
                text = {
                    "Enhances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}#2#s",
                }
            }
        },
        loc_vars = function(self, info_queue)
            info_queue[#info_queue+1] = G.P_CENTERS[self.config.mod_conv]
            return { 
                vars = {
                    self.config.max_highlighted, 
                    localize{type = 'name_text', set = 'Enhanced', key = self.config.mod_conv}
                },
            }
        end
    },
    true
)
