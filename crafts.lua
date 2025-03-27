
	minetest.register_craft({
	output="multiplant:seed_multiplant",
	recipe=(
		{"default:dirt","group:leaves", "default:dirt"},
		{"group:leaves", "default:mese", "group:leaves"},
		{"default:dirt", "group:leaves", "default:dirt"},
		)
	})

--minetest.register_craft({
--   type="shapeless",
--   output = "multiplant:seed_multiplant",
--   recipe=({
--		'group:seed','group:seed','group:seed'
--		}),
--   
--})

--minetest.register_craft({
--	output="default:diamond",
--	recipe = {
--      {"", "default:coalblock", ""},
--        {"default:coalblock", "default:coalblock", "default:coalblock"},
--        {"", "default:coalblock", ""}, }
--    
--})
