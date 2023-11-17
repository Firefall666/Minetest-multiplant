--Kochen:
if (minetest.get_modpath("mesecons")) then --if Mesecons is active, recipe is already used, so change it to a craft
	minetest.register_craft({
	type="shapeless",
	output="multiplant:seed_multiplant",
	recipe=({
		'group:sapling','group:sapling','group:sapling'
		})
	})
else
	minetest.register_craft({
		type="cooking",
		output = "multiplant:seed_multiplant",
		recipe='group:sapling',
		cooktime=4,
	})
end

--minetest.register_craft({
--    type="cooking",
--    output = "multiplant:seed_multiplant",
--    recipe='group:seed',
--    cooktime=4,
--})

minetest.register_craft({
	output="default:diamond",
	recipe = {
        {"", "default:coalblock", ""},
        {"default:coalblock", "default:coalblock", "default:coalblock"},
        {"", "default:coalblock", ""}, }
    
})
