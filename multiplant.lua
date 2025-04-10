farming.register_plant("multiplant:multiplant", {
	description = "Multiplant Seed",
	harvest_description = "Multiplant",
	paramtype2 = "meshoptions",
	inventory_image = "multiplant_multiplant_seed.png",
	steps = 8,
	minlight = 5,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"},
	groups = {handy= 1, multiplant = 1, flammable = 4, growing=1},
	place_param2 = 3,
})

minetest.register_abm({
    nodenames= {
		"multiplant:multiplant_8",
},
    interval=30,
    chance=5,
  	action=function(pos)
		minetest.remove_node(pos)
		minetest.add_item(pos, {name=multiplant.get_random_seed()})
	end,
})

if minetest.settings:get_bool("multiplant_enable_grow_on_wet_soil") ~= false then

	minetest.register_abm({
		nodenames = {"group:field"},
		neighbors = {"air"},
		interval = 50,
		chance = 90,
		catch_up = false,

		action = function(pos, node)

			if minetest.find_node_near(pos, 4, {"farming:scarecrow_bottom"}) then
				return
			end

			pos.y = pos.y + 1

			if minetest.get_node(pos).name == "air" then
				minetest.set_node(pos, {name = "multiplant:seed_multiplant"})
			end
		end
	})
end

