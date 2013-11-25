
--This mod inlays wood and stone with certain ores.

--
--Place these in the crafting grid to inlay lumps into nodes.
--

minetest.register_craftitem("inlaid:inlaytool", {
	description = "Inlay tool",
	inventory_image = "inlaid_inlaytool.png",
})

minetest.register_craftitem("inlaid:chisel", {
	description = "Chisel",
	inventory_image = "inlaid_chisel.png",
})

--
--Inlay tools are crafted by two sticks and a steel ingot, chisels with 3 cobblestone or stone.
--

minetest.register_craft({
	output = 'inlaid:inlaytool 45',
	recipe = {
		{'default:steel_ingot', '', ''},
		{'', 'group:stick', ''},
		{'', '', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'inlaid:chisel 45',
	recipe = {
		{'group:stone', '', ''},
		{'', 'group:stone', ''},
		{'', '', 'group:stone'},
	}
})

--
--Inlaid node texture are simply made with the node and mineral textures on top of each other.
--

minetest.register_node("inlaid:coalwood", {
	description = "Coal Wood",
	tiles = {"inlaid_coalwood.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=2,wood=1},
})

minetest.register_node("inlaid:ironwood", {
	description = "Iron Wood",
	tiles = {"inlaid_ironwood.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=2,wood=1},
})

minetest.register_node("inlaid:copperwood", {
	description = "Copper Wood",
	tiles = {"inlaid_copperwood.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=2,wood=1},
})

minetest.register_node("inlaid:mesewood", {
	description = "MESE Wood",
	tiles = {"inlaid_mesewood.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=2,wood=1},
})

minetest.register_node("inlaid:goldwood", {
	description = "Gold Wood",
	tiles = {"inlaid_goldwood.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=2,wood=1},
})

minetest.register_node("inlaid:diamondwood", {
	description = "Diamond Wood",
	tiles = {"inlaid_diamondwood.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=2,wood=1},
})

minetest.register_node("inlaid:coalcobble", {
	description = "Coal Cobblestone",
	tiles = {"inlaid_coalcobble.png"},
	groups = {cracky=2},
})

minetest.register_node("inlaid:ironcobble", {
	description = "Iron Cobblestone",
	tiles = {"inlaid_ironcobble.png"},
	groups = {cracky=2},
})

minetest.register_node("inlaid:coppercobble", {
	description = "Copper Cobblestone",
	tiles = {"inlaid_coppercobble.png"},
	groups = {cracky=2},
	drop
})

minetest.register_node("inlaid:mesecobble", {
	description = "MESE Cobblestone",
	tiles = {"inlaid_mesecobble.png"},
	groups = {cracky=2},
})

minetest.register_node("inlaid:goldcobble", {
	description = "Gold Cobblestone",
	tiles = {"inlaid_goldcobble.png"},
	groups = {cracky=2},
})

minetest.register_node("inlaid:diamondcobble", {
	description = "Diamond Cobblestone",
	tiles = {"inlaid_diamondcobble.png"},
	groups = {cracky=2},
})

minetest.register_node("inlaid:coalstonebrick", {
	description = "Coal Stone Bricks",
	tiles = {"inlaid_coalstonebrick.png"},
	groups = {cracky=2},
})

minetest.register_node("inlaid:ironstonebrick", {
	description = "Iron Stone Brick",
	tiles = {"inlaid_ironstonebrick.png"},
	groups = {cracky=2},
})

minetest.register_node("inlaid:copperstonebrick", {
	description = "Copper Stone Brick",
	tiles = {"inlaid_copperstonebrick.png"},
	groups = {cracky=2},
})

minetest.register_node("inlaid:mesestonebrick", {
	description = "MESE Stone Brick",
	tiles = {"inlaid_mesestonebrick.png"},
	groups = {cracky=2},
})

minetest.register_node("inlaid:goldstonebrick", {
	description = "Gold Stone Brick",
	tiles = {"inlaid_goldstonebrick.png"},
	groups = {cracky=2},
})

minetest.register_node("inlaid:diamondstonebrick", {
	description = "Diamond Stone Brick",
	tiles = {"inlaid_diamondstonebrick.png"},
	groups = {cracky=2},
})

minetest.register_node("inlaid:coalbrick", {
	description = "Coal Brick",
	tiles = {"inlaid_coalbrick.png"},
	groups = {cracky=2},
})

minetest.register_node("inlaid:ironbrick", {
	description = "Iron Brick",
	tiles = {"inlaid_ironbrick.png"},
	groups = {cracky=2}
})

minetest.register_node("inlaid:copperbrick", {
	description = "Copper Brick",
	tiles = {"inlaid_copperbrick.png"},
	groups = {cracky=2}
})

minetest.register_node("inlaid:mesebrick", {
	description = "MESE Brick",
	tiles = {"inlaid_mesebrick.png"},
	groups = {cracky=2}
})

minetest.register_node("inlaid:diamondbrick", {
	description = "Diamond Brick",
	tiles = {"inlaid_diamondbrick.png"},
	groups = {cracky=2}
})

minetest.register_node("inlaid:goldbrick", {
	description = "Gold Brick",
	tiles = {"inlaid_goldbrick.png"},
	groups = {cracky=2}
})

--
--Inlaid nodes are crafted with the node, lump, inlay tool, and chisel.
--

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coalwood',
	recipe = {"default:wood", "default:coal_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:ironwood',
	recipe = {"default:wood", "default:iron_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:copperwood',
	recipe = {"default:wood", "default:copper_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:mesewood',
	recipe = {"default:wood", "default:mese_crystal", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:goldwood',
	recipe = {"default:wood", "default:gold_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:diamondwood',
	recipe = {"default:wood", "default:diamond", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coalcobble',
	recipe = {"default:cobble", "default:coal_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:ironcobble',
	recipe = {"default:cobble", "default:iron_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coppercobble',
	recipe = {"default:cobble", "default:copper_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:mesecobble',
	recipe = {"default:cobble", "default:mese_crystal", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:goldcobble',
	recipe = {"default:cobble", "default:gold_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:diamondcobble',
	recipe = {"default:cobble", "default:diamond", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coalstonebrick',
	recipe = {"default:stonebrick", "default:coal_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:ironstonebrick',
	recipe = {"default:stonebrick", "default:iron_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:copperstonebrick',
	recipe = {"default:stonebrick", "default:copper_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:mesestonebrick',
	recipe = {"default:stonebrick", "default:mese_crystal", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:goldstonebrick',
	recipe = {"default:stonebrick", "default:gold_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:diamondstonebrick',
	recipe = {"default:stonebrick", "default:diamond", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coalbrick',
	recipe = {"default:brick", "default:coal_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:ironbrick',
	recipe = {"default:brick", "default:iron_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:copperbrick',
	recipe = {"default:brick", "default:copper_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:mesebrick',
	recipe = {"default:brick", "default:mese_crystal", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:goldbrick',
	recipe = {"default:brick", "default:gold_lump", "inlaid:chisel", "inlaid:inlaytool"},
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:diamondbrick',
	recipe = {"default:brick", "default:diamond", "inlaid:chisel", "inlaid:inlaytool"},
})

--
--If anyone desires to provide textures for a new version of inlaid, feel free to make them and post them for me. I would appreciate it.
--