core.register_node("myd:adminblock", {
    description = "Admin Block (only admins will have this)",
    tiles = {
        "adminblock.png",    -- y+
    },
    is_ground_content = true,
    groups = {cracky = 3},
    drop = "default:cobble"
    -- ^  Rather than dropping diamond, drop mymod:diamond_fragments
})

core.register_craftitem("myd:calcitesword", {
    description = "My Special Item",
    inventory_image = "modname_itemname.png"
})
