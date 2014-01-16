
--This mod inlays nodes with certain ores.

--
--Place these in the crafting grid to inlay lumps into nodes.
--

minetest.register_craftitem("inlaid:inlaytool", {
	description = "Inlay tool",
	inventory_image = "inlaid_inlaytool.png",
})

--
--Inlay tools are crafted by two sticks and a steel ingot
--

minetest.register_craft({
	output = 'inlaid:inlaytool',
	recipe = {
		{'', '', 'default:steel_ingot'},
		{'', 'group:stick', ''},
		{'group:stick', '', ''},
	}
})

--
--Inlaid node texture are simply made with the node and mineral textures on top of each other.
--

minetest.register_node("inlaid:coalwood", {
	description = "Coal Wood",
	tiles = {"default_wood.png^inlaid_coal.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=1,wood=1},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:ironwood", {
	description = "Iron Wood",
	tiles = {"default_wood.png^inlaid_iron.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=1,wood=1},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:copperwood", {
	description = "Copper Wood",
	tiles = {"default_wood.png^inlaid_copper.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=1,wood=1},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:mesewood", {
	description = "MESE Wood",
	tiles = {"default_wood.png^inlaid_mese.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=1,wood=1},
	drop = 'default:mese_crystal',
})

minetest.register_node("inlaid:goldwood", {
	description = "Gold Wood",
	tiles = {"default_wood.png^inlaid_gold.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=1,wood=1},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:diamondwood", {
	description = "Diamond Wood",
	tiles = {"default_wood.png^inlaid_diamond.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=1,wood=1},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:coalcobble", {
	description = "Coal Cobblestone",
	tiles = {"default_cobble.png^inlaid_coal.png"},
	groups = {cracky=2},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:ironcobble", {
	description = "Iron Cobblestone",
	tiles = {"default_cobble.png^inlaid_iron.png"},
	groups = {cracky=2},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:coppercobble", {
	description = "Copper Cobblestone",
	tiles = {"default_cobble.png^inlaid_copper.png"},
	groups = {cracky=2},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:mesecobble", {
	description = "MESE Cobblestone",
	tiles = {"default_cobble.png^inlaid_mese.png"},
	groups = {cracky=2},
	drop = 'default:mese_crystal',
})

minetest.register_node("inlaid:goldcobble", {
	description = "Gold Cobblestone",
	tiles = {"default_cobble.png^inlaid_gold.png"},
	groups = {cracky=2},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:diamondcobble", {
	description = "Diamond Cobblestone",
	tiles = {"default_cobble.png^inlaid_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:coalstonebrick", {
	description = "Coal Stone Bricks",
	tiles = {"default_stone_brick.png^inlaid_coal.png"},
	groups = {cracky=2},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:ironstonebrick", {
	description = "Iron Stone Brick",
	tiles = {"default_stone_brick.png^inlaid_iron.png"},
	groups = {cracky=2},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:copperstonebrick", {
	description = "Copper Stone Brick",
	tiles = {"default_stone_brick.png^inlaid_copper.png"},
	groups = {cracky=2},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:mesestonebrick", {
	description = "MESE Stone Brick",
	tiles = {"default_stone_brick.png^inlaid_mese.png"},
	groups = {cracky=2},
	drop = 'default:mese_crystal',
})

minetest.register_node("inlaid:goldstonebrick", {
	description = "Gold Stone Brick",
	tiles = {"default_stone_brick.png^inlaid_gold.png"},
	groups = {cracky=2},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:diamondstonebrick", {
	description = "Diamond Stone Brick",
	tiles = {"default_stone_brick.png^inlaid_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:coaldesert", {
	description = "Coal Desert Stone",
	tiles = {"default_desert_stone.png^inlaid_coal.png"},
	groups = {cracky=2},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:irondesert", {
	description = "Iron Desert Stone",
	tiles = {"default_desert_stone.png^inlaid_iron.png"},
	groups = {cracky=2},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:copperdesert", {
	description = "Copper Desert Stone",
	tiles = {"default_desert_stone.png^inlaid_copper.png"},
	groups = {cracky=2},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:mesedesert", {
	description = "MESE Desert Stone",
	tiles = {"default_desert_stone.png^inlaid_mese.png"},
	groups = {cracky=2},
	drop = 'default:mese_crystal',
})

minetest.register_node("inlaid:golddesert", {
	description = "Gold Desert Stone",
	tiles = {"default_desert_stone.png^inlaid_gold.png"},
	groups = {cracky=2},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:diamonddesert", {
	description = "Diamond Desert Stone",
	tiles = {"default_desert_stone.png^inlaid_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:coalmese", {
	description = "Coal MESE",
	tiles = {"default_mese_block.png^inlaid_coal.png"},
	groups = {cracky=1},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:ironmese", {
	description = "Iron MESE",
	tiles = {"default_mese_block.png^inlaid_iron.png"},
	groups = {cracky=1},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:coppermese", {
	description = "Copper MESE",
	tiles = {"default_mese_block.png^inlaid_copper.png"},
	groups = {cracky=1},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:goldmese", {
	description = "Gold MESE",
	tiles = {"default_mese_block.png^inlaid_mese.png"},
	groups = {cracky=1},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:diamondmese", {
	description = "Diamond MESE",
	tiles = {"default_mese_block.png^inlaid_diamond.png"},
	groups = {cracky=1},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:coalstone", {
	description = "Coal Stone",
	tiles = {"default_stone.png^inlaid_coal.png"},
	groups = {cracky=2},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:ironstone", {
	description = "Iron Stone",
	tiles = {"default_stone.png^inlaid_iron.png"},
	groups = {cracky=2},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:copperstone", {
	description = "Copper Stone",
	tiles = {"default_stone.png^inlaid_copper.png"},
	groups = {cracky=2},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:mesestone", {
	description = "MESE Stone",
	tiles = {"default_stone.png^inlaid_mese.png"},
	groups = {cracky=2},
	drop = 'default:mese_crystal',
})

minetest.register_node("inlaid:diamondstone", {
	description = "Diamond Stone",
	tiles = {"default_stone.png^inlaid_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:goldstone", {
	description = "Gold Stone",
	tiles = {"default_stone.png^inlaid_gold.png"},
	groups = {cracky=2},
	drop = 'default:gold_lump',
})

--
--Inlaid nodes are crafted with the node, lump, inlay tool, and chisel.
--

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coalwood',
	recipe = {"default:wood", "default:coal_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:ironwood',
	recipe = {"default:wood", "default:iron_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:copperwood',
	recipe = {"default:wood", "default:copper_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:mesewood',
	recipe = {"default:wood", "default:mese_crystal", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:goldwood',
	recipe = {"default:wood", "default:gold_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:diamondwood',
	recipe = {"default:wood", "default:diamond", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coalcobble',
	recipe = {"default:cobble", "default:coal_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:ironcobble',
	recipe = {"default:cobble", "default:iron_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coppercobble',
	recipe = {"default:cobble", "default:copper_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:mesecobble',
	recipe = {"default:cobble", "default:mese_crystal", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:goldcobble',
	recipe = {"default:cobble", "default:gold_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:diamondcobble',
	recipe = {"default:cobble", "default:diamond", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coalstonebrick',
	recipe = {"default:stonebrick", "default:coal_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:ironstonebrick',
	recipe = {"default:stonebrick", "default:iron_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:copperstonebrick',
	recipe = {"default:stonebrick", "default:copper_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:mesestonebrick',
	recipe = {"default:stonebrick", "default:mese_crystal", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:goldstonebrick',
	recipe = {"default:stonebrick", "default:gold_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:diamondstonebrick',
	recipe = {"default:stonebrick", "default:diamond", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coalstone',
	recipe = {"default:stone", "default:coal_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:ironstone',
	recipe = {"default:stone", "default:iron_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:copperstone',
	recipe = {"default:stone", "default:copper_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:mesestone',
	recipe = {"default:stone", "default:mese_crystal", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:goldstone',
	recipe = {"default:stone", "default:gold_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:diamondstone',
	recipe = {"default:stone", "default:diamond", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coaldesert',
	recipe = {"default:desert_stone", "default:coal", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coaldesert',
	recipe = {"default:desert_stone", "default:coal_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:irondesert',
	recipe = {"default:desert_stone", "default:iron_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:copperdesert',
	recipe = {"default:desert_stone", "default:copper_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:mesedesert',
	recipe = {"default:desert_stone", "default:mese_crystal", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:golddesert',
	recipe = {"default:desert_stone", "default:gold_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:diamonddesert',
	recipe = {"default:desert_stone", "default:diamond", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coalmese',
	recipe = {"default:mese", "default:coal_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:ironmese',
	recipe = {"default:mese", "default:iron_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coppermese',
	recipe = {"default:mese", "default:copper_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:goldmese',
	recipe = {"default:mese", "default:gold_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:diamondmese',
	recipe = {"default:mese", "default:diamond", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

--
--If anyone desires to provide textures of the inlaytool for a new version of inlaid, feel free to make them and post them for me. I would appreciate it.
--