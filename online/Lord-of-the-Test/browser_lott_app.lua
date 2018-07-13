-------------------------------------------
-- Lord-Of-The-Test Site
--------------------------------------------
laptop.register_view("lott.online", {
  app_info = "Lord of the Test is an amazing minetest subgame!",
  browser_page = "true",
  browser_main_page = true,
  formspec_func = function(app, mtos)
    local formspec = laptop.browser_api.header_formspec_func(app, mtos) ..
      "background[0,1.2;15,9;laptop_lott_bg.png]" ..
      --Start Navigation
        "container[3,0;]" ..
        mtos.theme:get_button('0,1.1;3,1', 'url_bright', 'page_link', 'lott.online', 'Home') ..
        mtos.theme:get_button('3,1.1;3,1', 'url_bright', 'page_link', 'lott.online/about', 'About') ..
        mtos.theme:get_button('6,1.1;3,1', 'url_bright', 'page_link', 'lott.online/gallery', 'Gallery') ..
        mtos.theme:get_button('9,1.1;3,1', 'url_bright', 'page_link', 'lott.online/contact', 'Contact') ..
        "container_end[]" ..
      --End Navigation
      --Begin Page Content
        "image[3.7,2.5;10,2;laptop_lott_header.png]" ..
        mtos.theme:get_label('4,4.8', 'One Server for the Russians forever doomed to be outdated,') ..
        mtos.theme:get_label('4,5.1', 'One Server of oldcoder in the dark depths of minetest.org,') ..
        mtos.theme:get_label('4,5.4', 'One Server of enoch for which I cannot find a good verse,') ..
        mtos.theme:get_label('4,5.7', 'One for the dark lord amaz on his dark throne of code,') ..
        mtos.theme:get_label('4,6', 'In the land of gitlab vs github where the shadows lie,') ..
        mtos.theme:get_label('4,6.3', 'One server to rule them all, one server to find them,') ..
        mtos.theme:get_label('4, 6.6', 'One server to bring them all, and in the darkness bind them with awesome textures and bug fixes,') ..
        mtos.theme:get_label('4,6.9', 'In the land of minetest where the shadows lie.') ..
        mtos.theme:get_label('4,7.5', '-red 001') ..
        mtos.theme:get_label('4,7.8', '(Based on J.R.R. Tolkien, The Lord of the Rings)') ..
        "image_button_exit[4,8.5;3,1;laptop_lott_nav.png;exit;Save]"
		return formspec
	end,
	receive_fields_func = function(app, mtos, sender, fields)
		laptop.browser_api.header_receive_fields_func(app, mtos, sender, fields)
	end
})

--------------------------------------------
-- About Page
--------------------------------------------
laptop.register_view("lott.online/about", {
	app_info = "About the Lord of the Test Game",
	browser_page = true,
	formspec_func = function(app, mtos)
		local formspec = laptop.browser_api.header_formspec_func(app, mtos) ..
      "background[0,1.2;15,9;laptop_lott_bg.png]"..
      --Start Navigation
        "container[3,0;]" ..
        mtos.theme:get_button('0,1.1;3,1', 'url_bright', 'page_link', 'lott.online', 'Home') ..
        mtos.theme:get_button('3,1.1;3,1', 'url_bright', 'page_link', 'lott.online/about', 'About') ..
        mtos.theme:get_button('6,1.1;3,1', 'url_bright', 'page_link', 'lott.online/gallery', 'Gallery') ..
        mtos.theme:get_button('9,1.1;3,1', 'url_bright', 'page_link', 'lott.online/contact', 'Contact') ..
        "container_end[]" ..
      --End Navigation
      --Begin Page Content
        mtos.theme:get_label('6, 2', 'About Lord of the Test') ..
        mtos.theme:get_label('1, 3', 'A shadow is creeping across the land, an unstoppable mist of evil. Sauron and his legions of orcs have returned, striving to') ..
        mtos.theme:get_label('1, 3.3', 'cleanse Middle-Earth of Elves, Dwarves, Hobbits, and Men. Everything has failed. Middle-Earth needs a leader, a new hope to') ..
        mtos.theme:get_label('1, 3.6', 'pierce the fog of evil that is descending on all. Only the truly brave, fearless, and noble can help. Will you dare to save the') ..
        mtos.theme:get_label('1, 3.9', 'world from the forces of destruction? Or will you lead the fierce orcs in their conquest of the world? The choice is open to all') ..
        mtos.theme:get_label('1, 4.2', 'brave enough to enter this epic new adventure.') ..
        mtos.theme:get_label('1, 4.8', 'Lord of the Test is an amazing Minetest subgame! It adds Lord of the Rings elements into the game. To learn more about this') ..
        mtos.theme:get_label('1, 5.1', 'exciting quest, study the wiki scroll. To embark, dowload the game on the forum or on github.') ..
        "bgcolor[#e2e2e2;false]"
		return formspec
	end,
	receive_fields_func = function(app, mtos, sender, fields)
		laptop.browser_api.header_receive_fields_func(app, mtos, sender, fields)
	end
})

--------------------------------------------
-- Contact Page
--------------------------------------------
laptop.register_view("lott.online/contact", {
	app_info = "Contact the Creators",
	browser_page = true,
	formspec_func = function(app, mtos)
		local formspec = laptop.browser_api.header_formspec_func(app, mtos) ..
      "background[0,1.2;15,9;laptop_lott_bg.png]"..
      --Start Navigation
        "container[3,0;]" ..
        mtos.theme:get_button('0,1.1;3,1', 'url_bright', 'page_link', 'lott.online', 'Home') ..
        mtos.theme:get_button('3,1.1;3,1', 'url_bright', 'page_link', 'lott.online/about', 'About') ..
        mtos.theme:get_button('6,1.1;3,1', 'url_bright', 'page_link', 'lott.online/gallery', 'Gallery') ..
        mtos.theme:get_button('9,1.1;3,1', 'url_bright', 'page_link', 'lott.online/contact', 'Contact') ..
        "container_end[]" ..
      --End Navigation
      --Begin Page Content
        mtos.theme:get_label('6, 2', 'Contact the Creators') ..
        mtos.theme:get_label('3, 4', 'Made by Amaz, fishyWet and lumidify') ..
        mtos.theme:get_label('3, 4.3', 'Check out our Github page at https://github.com/minetest-LOTR/Lord-of-the-Test') ..
        mtos.theme:get_label('3, 4.6', 'Or, contact us on the IRC at #lordofthetest on irc.freenode.net')
		return formspec
	end,
	receive_fields_func = function(app, mtos, sender, fields)
		laptop.browser_api.header_receive_fields_func(app, mtos, sender, fields)
	end
})
