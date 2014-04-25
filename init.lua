--Hi there! As I go through the code, I will add comments into it to help it be understood. :-)
--Remember that you are free to use this code as a template, and experiment with it.


--This mod inlays stuff with certain ores.

--
--Place these in the crafting grid to inlay lumps into nodes.
--

minetest.register_craftitem("inlaid:inlaytool", {  --On this line, the "minetest.register_craftitem" part tells Minetest that the object you are defining is a craftitem, to be used in crafting. The "("inlaid:inlaytool"" is the name of the item. 
	--Names should be given in the syntax of "modname:moditem". THIS IS CRITICAL! The modname you use should be the first part of the item's name.
	description = "Inlay tool", --When you hold your mouse over the item in the inventory, the text in quotes will pop up.
	inventory_image = "inlaid_inlaytool.png", --The image that will be used to show what the item looks like. Find it in the textures folder.
})

--
--Inlay tools are crafted by two sticks and a steel ingot, chisels with 3 cobblestone or stone.
--

minetest.register_craft({ --The "minetest.register_craft" function tells Minetest that you are creating a crafting recipe.
	output = 'inlaid:inlaytool', --This is what you will get when you craft the item. In this case, it is the Inlay Tool. Be sure to use the full name of the item, defined above.
	recipe = { --The recipe function gives the recipe.
		{'', '', 'default:steel_ingot'}, --These next three lines make up the definition of the crafting recipe. Imagine a 3x3 grid, like in Minecraft.
		{'', 'group:stick', ''}, --In this case, you would place a stick in the lower-left corner of the grid and in the center, and a steel ingot in the upper-right corner.
		{'group:stick', '', ''},
	}
})

--
--Inlaid node texture are simply made with the node and mineral textures on top of each other.
--

minetest.register_node("inlaid:coalwood", { --The "minetest.register_node" function tells minetest that you are creating a new block. (Blocks are called nodes throughout the code)
	description = "Coal Wood", --What you see when you hover your mouse over the item for a few seconds.
	tiles = {"default_wood.png^default_mineral_coal.png"}, --The texture used for the node. This node is special because it has a texture I created placed on top of a default texture. In this case, my coal mineral is placed over the default wood node. The "^" tells the game to put
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=2,wood=1}, --Special parameters for the node. In this case, it takes a medium amount of time to break the block with an axe, it burns, you can break it with hands, and it's made of wood.
	drop = 'default:coal_lump', --What the block drops when it's broken.
})

minetest.register_node("inlaid:ironwood", {
	description = "Iron Wood",
	tiles = {"default_wood.png^default_mineral_iron.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=2,wood=1},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:copperwood", {
	description = "Copper Wood",
	tiles = {"default_wood.png^default_mineral_copper.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=2,wood=1},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:mesewood", {
	description = "MESE Wood",
	tiles = {"default_wood.png^default_mineral_mese.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=2,wood=1},
	drop = 'default:mese_crystal',
})

minetest.register_node("inlaid:goldwood", {
	description = "Gold Wood",
	tiles = {"default_wood.png^default_mineral_gold.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=2,wood=1},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:diamondwood", {
	description = "Diamond Wood",
	tiles = {"default_wood.png^default_mineral_diamond.png"},
	groups = {choppy=2,flammable=2,oddly_breakable_by_hand=2,wood=1},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:coalcobble", {
	description = "Coal Cobblestone",
	tiles = {"default_cobble.png^default_mineral_coal.png"},
	groups = {cracky=2},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:ironcobble", {
	description = "Iron Cobblestone",
	tiles = {"default_cobble.png^default_mineral_iron.png"},
	groups = {cracky=2},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:coppercobble", {
	description = "Copper Cobblestone",
	tiles = {"default_cobble.png^default_mineral_copper.png"},
	groups = {cracky=2},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:mesecobble", {
	description = "MESE Cobblestone",
	tiles = {"default_cobble.png^default_mineral_mese.png"},
	groups = {cracky=2},
	drop = 'default:mese_crystal',
})

minetest.register_node("inlaid:goldcobble", {
	description = "Gold Cobblestone",
	tiles = {"default_cobble.png^default_mineral_gold.png"},
	groups = {cracky=2},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:diamondcobble", {
	description = "Diamond Cobblestone",
	tiles = {"default_cobble.png^default_mineral_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:coalstonebrick", {
	description = "Coal Stone Bricks",
	tiles = {"default_stone_brick.png^default_mineral_coal.png"},
	groups = {cracky=2},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:ironstonebrick", {
	description = "Iron Stone Brick",
	tiles = {"default_stone_brick.png^default_mineral_iron.png"},
	groups = {cracky=2},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:copperstonebrick", {
	description = "Copper Stone Brick",
	tiles = {"default_stone_brick.png^default_mineral_copper.png"},
	groups = {cracky=2},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:mesestonebrick", {
	description = "MESE Stone Brick",
	tiles = {"default_stone_brick.png^default_mineral_mese.png"},
	groups = {cracky=2},
	drop = 'default:mese_crystal',
})

minetest.register_node("inlaid:goldstonebrick", {
	description = "Gold Stone Brick",
	tiles = {"default_stone_brick.png^default_mineral_gold.png"},
	groups = {cracky=2},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:diamondstonebrick", {
	description = "Diamond Stone Brick",
	tiles = {"default_stone_brick.png^default_mineral_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:coalbrick", {
	description = "Coal Brick",
	tiles = {"default_brick.png^default_mineral_coal.png"},
	groups = {cracky=2},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:ironbrick", {
	description = "Iron Brick",
	tiles = {"default_brick.png^default_mineral_iron.png"},
	groups = {cracky=2},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:copperbrick", {
	description = "Copper Brick",
	tiles = {"default_brick.png^default_mineral_copper.png"},
	groups = {cracky=2},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:mesebrick", {
	description = "MESE Brick",
	tiles = {"default_brick.png^default_mineral_mese.png"},
	groups = {cracky=2},
	drop = 'default:mese_crystal',
})

minetest.register_node("inlaid:diamondbrick", {
	description = "Diamond Brick",
	tiles = {"default_brick.png^default_mineral_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:goldbrick", {
	description = "Gold Brick",
	tiles = {"default_brick.png^default_mineral_gold.png"},
	groups = {cracky=2},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:coalsandstone", {
	description = "Coal Sandstone",
	tiles = {"default_sandstone.png^default_mineral_coal.png"},
	groups = {cracky=2},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:ironsandstone", {
	description = "Iron Sandstone",
	tiles = {"default_sandstone.png^default_mineral_iron.png"},
	groups = {cracky=2},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:coppersandstone", {
	description = "Copper Sandstone",
	tiles = {"default_sandstone.png^default_mineral_copper.png"},
	groups = {cracky=2},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:mesesandstone", {
	description = "MESE Sandstone",
	tiles = {"default_sandstone.png^default_mineral_mese.png"},
	groups = {cracky=2},
	drop = 'default:mese_crystal',
})

minetest.register_node("inlaid:goldsandstone", {
	description = "Gold Sandstone",
	tiles = {"default_sandstone.png^default_mineral_gold.png"},
	groups = {cracky=2},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:diamondsandstone", {
	description = "Diamond Sandstone",
	tiles = {"default_sandstone.png^default_mineral_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:coaldesert", {
	description = "Coal Desert Stone",
	tiles = {"default_desert_stone.png^default_mineral_coal.png"},
	groups = {cracky=2},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:irondesert", {
	description = "Iron Desert Stone",
	tiles = {"default_desert_stone.png^default_mineral_iron.png"},
	groups = {cracky=2},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:copperdesert", {
	description = "Copper Desert Stone",
	tiles = {"default_desert_stone.png^default_mineral_copper.png"},
	groups = {cracky=2},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:mesedesert", {
	description = "MESE Desert Stone",
	tiles = {"default_desert_stone.png^default_mineral_mese.png"},
	groups = {cracky=2},
	drop = 'default:mese_crystal',
})

minetest.register_node("inlaid:golddesert", {
	description = "Gold Desert Stone",
	tiles = {"default_desert_stone.png^default_mineral_gold.png"},
	groups = {cracky=2},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:diamonddesert", {
	description = "Diamond Desert Stone",
	tiles = {"default_desert_stone.png^default_mineral_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:coalmese", {
	description = "Coal MESE",
	tiles = {"default_mese_block.png^default_mineral_coal.png"},
	groups = {cracky=1},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:ironmese", {
	description = "Iron MESE",
	tiles = {"default_mese_block.png^default_mineral_iron.png"},
	groups = {cracky=1},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:coppermese", {
	description = "Copper MESE",
	tiles = {"default_mese_block.png^default_mineral_copper.png"},
	groups = {cracky=1},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:goldmese", {
	description = "Gold MESE",
	tiles = {"default_mese_block.png^default_mineral_gold.png"},
	groups = {cracky=1},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:diamondmese", {
	description = "Diamond MESE",
	tiles = {"default_mese_block.png^default_mineral_diamond.png"},
	groups = {cracky=1},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:coaljwood", {
	description = "Coal Jungle Wood",
	tiles = {"default_junglewood.png^default_mineral_coal.png"},
	groups = {choppy=3},
	drop = 'default:coal_lump',
})

minetest.register_node("inlaid:ironjwood", {
	description = "Iron Jungle Wood",
	tiles = {"default_junglewood.png^default_mineral_iron.png"},
	groups = {choppy=3},
	drop = 'default:iron_lump',
})

minetest.register_node("inlaid:copperjwood", {
	description = "Copper Jungle Wood",
	tiles = {"default_junglewood.png^default_mineral_copper.png"},
	groups = {choppy=3},
	drop = 'default:copper_lump',
})

minetest.register_node("inlaid:mesejwood", {
	description = "MESE Jungle Wood",
	tiles = {"default_junglewood.png^default_mineral_mese.png"},
	groups = {choppy=3},
	drop = 'default:mese_crystal',
})

minetest.register_node("inlaid:goldjwood", {
	description = "Gold Jungle Wood",
	tiles = {"default_junglewood.png^default_mineral_gold.png"},
	groups = {choppy=3},
	drop = 'default:gold_lump',
})

minetest.register_node("inlaid:diamondjwood", {
	description = "Diamond Jungle Wood",
	tiles = {"default_junglewood.png^default_mineral_diamond.png"},
	groups = {choppy=3},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:dwood", {
	description = "Diamond Wood",
	tiles = {"default_wood.png^default_diamond.png"},
	groups = {choppy=3},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:dcobble", {
	description = "Diamond Cobble",
	tiles = {"default_cobble.png^default_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:dstonebrick", {
	description = "Diamond Stone Brick",
	tiles = {"default_stone_brick.png^default_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:dbrick", {
	description = "Diamond Brick",
	tiles = {"default_brick.png^default_diamond.png"},
	groups = {cracky=1},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:dstone", {
	description = "Diamond Stone",
	tiles = {"default_stone.png^default_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:dsandstone", {
	description = "Diamond Sandstone",
	tiles = {"default_sandstone.png^default_diamond.png"},
	groups = {cracky=3},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:ddesertstone", {
	description = "Diamond Desert Stone",
	tiles = {"default_desert_stone.png^default_diamond.png"},
	groups = {cracky=2},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:dmese", {
	description = "Diamond MESE",
	tiles = {"default_mese_block.png^default_diamond.png"},
	groups = {choppy=1},
	drop = 'default:diamond',
})

minetest.register_node("inlaid:djwood", {
	description = "Diamond Junglewood",
	tiles = {"default_junglewood.png^default_diamond.png"},
	groups = {choppy=3},
	drop = 'default:diamond',
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
	output = 'inlaid:coalbrick',
	recipe = {"default:brick", "default:coal_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:ironbrick',
	recipe = {"default:brick", "default:iron_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:copperbrick',
	recipe = {"default:brick", "default:copper_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:mesebrick',
	recipe = {"default:brick", "default:mese_crystal", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:goldbrick',
	recipe = {"default:brick", "default:gold_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:diamondbrick',
	recipe = {"default:brick", "default:diamond", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'default:stone_with_coal',
	recipe = {"default:stone", "default:coal_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'default:stone_with_iron',
	recipe = {"default:stone", "default:iron_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'default:stone_with_copper',
	recipe = {"default:stone", "default:copper_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'default:stone_with_mese',
	recipe = {"default:stone", "default:mese_crystal", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'default:stone_with_gold',
	recipe = {"default:stone", "default:gold_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'default:stone_with_diamond',
	recipe = {"default:stone", "default:diamond", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coalsandstone',
	recipe = {"default:sandstone", "default:coal_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:ironsandstone',
	recipe = {"default:sandstone", "default:iron_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:coppersandstone',
	recipe = {"default:sandstone", "default:copper_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:mesesandstone',
	recipe = {"default:sandstone", "default:mese_crystal", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:goldsandstone',
	recipe = {"default:sandstone", "default:gold_lump", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output = 'inlaid:diamondsandstone',
	recipe = {"default:sandstone", "default:diamond", "inlaid:inlaytool"},
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

minetest.register_craft({
	type = "shapeless",
	output='inlaid:coaljwood',
	recipe = {"default:coal_lump", "default:junglewood", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:ironjwood',
	recipe = {"default:iron_lump", "default:junglewood", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:copperjwood',
	recipe = {"default:copper_lump", "default:junglewood", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:mesejwood',
	recipe = {"default:mese_crystal", "default:junglewood", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:goldjwood',
	recipe = {"default:gold_lump", "default:junglewood",  "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:diamondjwood',
	recipe = {"default:diamond", "default:junglewood", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:dwood',
	recipe = {"default:diamond", "default:wood", "inlaid:inlaytool", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:dcobble',
	recipe = {"default:diamond", "default:cobble", "inlaid:inlaytool", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:dstonebrick',
	recipe = {"default:diamond", "default:stonebrick", "inlaid:inlaytool", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:dbrick',
	recipe = {"default:diamond", "default:brick", "inlaid:inlaytool", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:dsandstone',
	recipe = {"default:diamond", "default:sandstone", "inlaid:inlaytool", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:ddesertstone',
	recipe = {"default:diamond", "default:desert_stone", "inlaid:inlaytool", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:dmese',
	recipe = {"default:diamond", "default:mese", "inlaid:inlaytool", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

minetest.register_craft({
	type = "shapeless",
	output='inlaid:djwood',
	recipe = {"default:diamond", "default:junglewood", "inlaid:inlaytool", "inlaid:inlaytool"},
		replacements = { {'inlaid:inlaytool', 'inlaid:inlaytool'} },
})

--
--If anyone desires to provide textures of the inlaytool for a new version of inlaid, feel free to make them and post them for me. I would appreciate it.
--