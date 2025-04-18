core.chat_send_all("[openworld_blocks] started")

core.register_node("openworld_blocks:command_block", {
    description = "Command Block",
    tiles = {
        "adminblock.png",    -- y+
    },
    is_ground_content = true,
    groups = {stone},
    drop = "air"
    -- ^  Rather than dropping diamond, drop mymod:diamond_fragments
})

-- calcite ore
core.register_node("openworld_blocks:calcite_ore", {
    description = "Calcite Ore",
    tiles = {
        "calcite_ore.png",    -- y+
    },
    is_ground_content = true,
    groups = {cracky=2},
    drop = "openworld_items:calcite_ingot",
    sounds = default.node_sound_stone_defaults(),
})

-- calcite ore generation

core.register_ore({
    ore_type = "scatter",
    ore = "openworld_blocks:calcite_ore",
    wherein = "default:stone",
    clust_scarcity = 9 * 9 * 9,
    clust_num_ores = 5,
    clust_size = 3,
    y_min = -100,
    y_max = 7,
})

