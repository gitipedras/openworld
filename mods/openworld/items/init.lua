-- TODO: local openworld_items = import("calcite")

core.chat_send_all("[openworld_items] started")

-- calcite sword

--[[ core.register_craftitem("openworld_items:calcite_sword", {
    description = "Calcite Sword",
    inventory_image = "calcite_sword.png"
}) --]]

core.register_tool("openworld_items:calcite_sword", {
    description = "Calcite Sword",
    inventory_image = "calcite_sword.png",
    tool_capabilities = {
        full_punch_interval = 0.1,
        max_drop_level = 1,
        damage = 5,
        groupcaps = {
            weapon = {
                maxlevel = 1,
                uses = 1000,
                times = { [1]=0.40, [2]=0.20, [3]=0.10 }
            },
        }, 
    },
})

-- calcite ingot

core.register_craftitem("openworld_items:calcite_ingot", {
    description = "Calcite Ingot",
    inventory_image = "calcite_ingot.png"
})

-- calcite pick
core.register_tool("openworld_items:pick_calcite", {
	description = ("Calcite Pickaxe"),
	inventory_image = "calcite_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

-- calcite shovel
core.register_tool("openworld_items:calcite_shovel", {
	description = ("Calcite Shovel"),
	inventory_image = "calcite_shovel.png",
	--wield_image = "default_tool_woodshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=3.00, [2]=1.60, [3]=0.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1, flammable = 2}
})

-- calcite axe
core.register_tool("openworld_items:calcite_axe", {
	description = ("Calcite Axe"),
	inventory_image = "calcite_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.20, [2]=1.00, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

----------- crafting recipes

-- calcite sword
core.register_craft({
    type = "shaped",
    output = "openworld_items:calcite_sword",
    recipe = {
        {"", "openworld_items:calcite_ingot",                         ""},
        {"", "openworld_items:calcite_ingot",  ""},
        {"", "default:stick",  ""}
    }
})

-- calcite pick
core.register_craft({
    type = "shaped",
    output = "openworld_items:pick_calcite",
    recipe = {
        {"openworld_items:calcite_ingot", "openworld_items:calcite_ingot",                         "openworld_items:calcite_ingot"},
        {"", "default:stick",  ""},
        {"", "default:stick",  ""}
    }
})


-- calcite ingot

core.register_craft({
    type = "shaped",
    output = "openworld_items:calcite_ingot",
    recipe = {
        {"default:diamond", "default:diamond", "default:diamond"},
        {"default:diamond", "default:steel_ingot",  "default:diamond"},
        {"default:diamond", "default:diamond",  "default:diamond"}
    }
})
