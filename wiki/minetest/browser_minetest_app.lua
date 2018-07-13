--------------------------------------------
-- Minetest Wiki
--------------------------------------------
laptop.register_view("minetest.wiki", {
	app_info = "Copy of the Minetest Wiki",
	browser_page = true,
  browser_main_page = true,
	formspec_func = function(app, mtos)
		local formspec = laptop.browser_api.header_formspec_func(app, mtos) ..
        --Begin Navigation
        "image[.1,1.2;2,2;laptop_minetest_logo.png]" ..
        mtos.theme:get_label('2, 1.2', 'Welcome to the Minetest Wiki') ..
        mtos.theme:get_button('.1,3.5;2,.4', 'url_bright', 'page_link', 'minetest.wiki', 'Home') ..
        mtos.theme:get_button('.1,4;3,.4', 'url_bright', 'page_link', 'minetest.wiki/getting_started', 'Getting Started') ..
        mtos.theme:get_button('.1,4.5;3,.4', 'url_bright', 'page_link', 'minetest.wiki/blocks', 'Blocks') ..
        --End Navigation
        --Begin page content
        "container[4,0;]" ..
        mtos.theme:get_label('0.2,2.2', 'About Minetest') ..
        mtos.theme:get_label('0,3', 'Minetest is a sandbox construction game, created by Perttu Ahola (alias “celeron55”)') ..
        mtos.theme:get_label('0,3.3', 'in year 2010, inspired by Infiniminer, Minecraft and similar games.') ..
        mtos.theme:get_label('0,3.8', 'The gameplay is very similar to Minecrafts, so players can create and destroy various') ..
        mtos.theme:get_label('0,4.1', 'types of blocks in a three-dimensional open world. This allows forming structures') ..
        mtos.theme:get_label('0,4.4', 'in every possible creation, on multiplayer servers or as singleplayer. An increasing') ..
        mtos.theme:get_label('0,4.7', 'number of Mods and Texture Packs allow players to personalize the game in different ways.') ..
        mtos.theme:get_label('0,5.2', 'Minetest is Free and Open Source Software, released under the GNU Lesser General Public License (LGPLv2.1') ..
        mtos.theme:get_label('0,5.5', 'or later). This allows the better support by community and an static improvement of the game.') ..
        mtos.theme:get_label('0,6', 'Minetest is Free and Open Source Software, released under the GNU') ..
        mtos.theme:get_label('0,6.3', 'Lesser General Public License (LGPLv2.1 or later). This allows the better support by') ..
        mtos.theme:get_label('0,6.6', 'community and an static improvement of the game.') ..
        mtos.theme:get_label('0,7', 'The following pages are available:') ..
        mtos.theme:get_button('3,7.4;4,.4', 'url_bright', 'page_link', 'minetest.wiki/getting_started', 'Getting Started') ..
        mtos.theme:get_label('0,8', 'To contribute, contact b3u on the minetest forums.') ..
        "container_end[]" ..
        "background[0,1.2;15,9;laptop_minetest_background.png;]"
		return formspec
	end,
	receive_fields_func = function(app, mtos, sender, fields)
		laptop.browser_api.header_receive_fields_func(app, mtos, sender, fields)
	end
})

--------------------------------------------
-- Getting Started Page
--------------------------------------------
laptop.register_view("minetest.wiki/getting_started", {
	app_info = "Getting started with Minetest",
	browser_page = true,
	formspec_func = function(app, mtos)
		local formspec = laptop.browser_api.header_formspec_func(app, mtos) ..
        --Begin Navigation
        "background[0,1.2;15,9;laptop_minetest_background.png;]" ..
        "image[.1,1.2;2,2;laptop_minetest_logo.png]" ..
        mtos.theme:get_label('2, 1.2', 'Welcome to the Minetest Wiki') ..
        mtos.theme:get_button('.1,3.5;2,.4', 'url_bright', 'page_link', 'minetest.wiki', 'Home') ..
        mtos.theme:get_button('.1,4;3,.4', 'url_bright', 'page_link', 'minetest.wiki/getting_started', 'Getting Started') ..
        mtos.theme:get_button('.1,4.5;3,.4', 'url_bright', 'page_link', 'minetest.wiki/blocks', 'Blocks') ..
        --End Navigation
        --Begin page content
        "container[4,0]" ..
				mtos.theme:get_label('0.2,2.2', 'Getting Started') ..
				mtos.theme:get_label('0,2.8', 'Welcome to Minetest! This page explains what Minetest is all about, how to get it,') ..
        mtos.theme:get_label('0,3', 'and how to start playing your first games alone or online.') ..
        "container_end[]"
		return formspec
	end,
	receive_fields_func = function(app, mtos, sender, fields)
		laptop.browser_api.header_receive_fields_func(app, mtos, sender, fields)
	end
})

--------------------------------------------
-- Blocks Page
--------------------------------------------
laptop.register_view("minetest.wiki/blocks", {
	app_info = "Minetest Wiki Template Page",
	browser_page = true,
	formspec_func = function(app, mtos)
		local formspec = laptop.browser_api.header_formspec_func(app, mtos) ..
        --Begin Navigation
        "background[0,1.2;15,9;laptop_minetest_background.png;]" ..
        "image[.1,1.2;2,2;laptop_minetest_logo.png]" ..
        mtos.theme:get_label('2, 1.2', 'Welcome to the Minetest Wiki') ..
        mtos.theme:get_button('.1,3.5;2,.4', 'url_bright', 'page_link', 'minetest.wiki', 'Home') ..
        mtos.theme:get_button('.1,4;3,.4', 'url_bright', 'page_link', 'minetest.wiki/getting_started', 'Getting Started') ..
        mtos.theme:get_button('.1,4.5;3,.4', 'url_bright', 'page_link', 'minetest.wiki/blocks', 'Blocks') ..
        --End Navigation
        --Begin page content
        "container[4,0]" ..
				mtos.theme:get_label('0.2,2.2', 'Blocks') ..
				mtos.theme:get_label('0,2.8', 'Blocks are the building blocks in Minetest. They have 16×16 textures and are seen') ..
        mtos.theme:get_label('0,3.1', 'by the player as one cubic meter. Blocks are also called Nodes in Minetest, which is relevant') ..
        mtos.theme:get_label('0,3.4', 'to Modding. This page lists the available blocks in Minetest Game.') ..
        mtos.theme:get_label('3, 4.4', 'Naturally generated blocks') ..
        "container_end[]"
		return formspec
	end,
	receive_fields_func = function(app, mtos, sender, fields)
		laptop.browser_api.header_receive_fields_func(app, mtos, sender, fields)
	end
})

--------------------------------------------
-- Template Page
--------------------------------------------
laptop.register_view("minetest.wiki/template", {
	app_info = "Minetest Wiki Template Page",
	browser_page = true,
	formspec_func = function(app, mtos)
		local formspec = laptop.browser_api.header_formspec_func(app, mtos) ..
        --Begin Navigation
        "background[0,1.2;15,9;laptop_minetest_background.png;]" ..
        "image[.1,1.2;2,2;laptop_minetest_logo.png]" ..
        mtos.theme:get_label('2, 1.2', 'Welcome to the Minetest Wiki') ..
        mtos.theme:get_button('.1,3.5;2,.4', 'url_bright', 'page_link', 'minetest.wiki', 'Home') ..
        mtos.theme:get_button('.1,4;3,.4', 'url_bright', 'page_link', 'minetest.wiki/getting_started', 'Getting Started') ..
        mtos.theme:get_button('.1,4.5;3,.4', 'url_bright', 'page_link', 'minetest.wiki/blocks', 'Blocks') ..
        --End Navigation
        --Begin page content
        "container[4,0]" ..
				mtos.theme:get_label('0.2,2.2', 'Template') ..
				mtos.theme:get_label('0,2.8', 'Text goes here') ..
        "container_end[]"
		return formspec
	end,
	receive_fields_func = function(app, mtos, sender, fields)
		laptop.browser_api.header_receive_fields_func(app, mtos, sender, fields)
	end
})
