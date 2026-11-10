SMODS.Joker{
    atlas = 'joker',
    key = 'pride',
    pos = { x = 5, y = 1 },
    set_badges = function(self, card, badges) if (self.discovered) then
		badges[#badges+1] = slimeutils.table_create_badge(tss_badges.Xtra)
	end end,
    discovered = true,
    blueprint_compat = true,
    rarity = 1,
    cost = 6,
    config = { extra = { xmult = 4 } },

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.xmult } }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
             }
        end
    end
}