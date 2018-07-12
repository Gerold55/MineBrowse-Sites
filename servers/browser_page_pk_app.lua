--- Navigation bar - Shown on each page - needs to be included to each page
function laptop.browser_api.header_formspec_func(app, mtos)
	local currentpage = ""
	if app.browser_page then
		currentpage = app.name
	end
	local formspec = "field[.2,.5;13,1;input_field;;"..currentpage.."]field_close_on_enter[input_field;false]"..
			mtos.theme:get_image_button('12.9,.3;.8,.8', 'toolbar', 'go_button', 'laptop_go_web.png', '', 'Go') ..
			mtos.theme:get_image_button('13.6,.3;.8,.8', 'toolbar', 'home_button', 'laptop_home_web.png', '', 'Home') ..
			mtos.theme:get_image_button('14.3,.3;.8,.8', 'toolbar', 'settings_button', 'laptop_settings_web.png', '', 'Settings')
	return formspec
end

-- Page header / Navigation bar buttons processing. Needs to be included to each page
function laptop.browser_api.header_receive_fields_func(app, mtos, sender, fields)
	if (fields.key_enter and fields.key_enter_field == "input_field") or fields.go_button then
		laptop.browser_api.navigate(app, mtos, fields.input_field)
	elseif fields.home_button then
		mtos:set_app("browser")
	elseif fields.settings_button then
		mtos:set_app("browser:settings")
	elseif fields.page_link then
		laptop.browser_api.navigate(app, mtos, fields.page_link)
	end
end

laptop.register_view("persistentkingdoms.servers.minetest", {
	app_info = "Persistent Kingdoms Server Info",
	browser_page = true,
	browser_main_page = true,
	formspec_func = function(app, mtos)
		local formspec = laptop.browser_api.header_formspec_func(app, mtos) ..
			mtos.theme:get_label('.1,1', 'Welcome to Persistent Kingdoms [City vs City]!')..
			mtos.theme:get_label('.1,1.5', 'Server IP: elkien3.com (138.197.22.104) Port: 30000')..
			mtos.theme:get_label('.1,1.9', 'Basic idea: create a world were players interact in a way different, more cinematic way than normal. also its medieval. (so build accordingly)')..
			mtos.theme:get_label('.1,2.3', "Player's objective: Join a team and ask what needs to be done, or mine and get geared up.")..
			mtos.theme:get_label('.1,2.7', 'Rules: See /rules ingame.')..
			mtos.theme:get_label('.1,3.1', 'Mods: See topic for server in your web browser. https://forum.minetest.net/viewtopic.php?f=10&t=14587')..
			mtos.theme:get_label('.1,3.5', 'Map:')..
			mtos.theme:get_button('.6,3.55;5,.5', 'url_bright', 'page_link', 'persistentkingdoms.servers.minetest/map')..
			mtos.theme:get_label('.1,3.9', 'Other Notes: Flags protect 64 blocks radius, in a sphere. Strict protocol checking is on, you will need Minetest 0.4.14 or newer to play.')..
			"image[1,5;10,5;laptop_pk.png]"
		return formspec
	end,
	receive_fields_func = function(app, mtos, sender, fields)
		laptop.browser_api.header_receive_fields_func(app, mtos, sender, fields)
	end
})

laptop.register_view("persistentkingdoms.servers.minetest/map", {
	app_info = "Persistent Kingdoms Server Map",
	browser_page = true,
	formspec_func = function(app, mtos)
		local formspec = laptop.browser_api.header_formspec_func(app, mtos) ..
			"image[3.5,1.3;10,10;laptop_pk_map.png]"
		return formspec
	end,
	receive_fields_func = function(app, mtos, sender, fields)
		laptop.browser_api.header_receive_fields_func(app, mtos, sender, fields)
	end
})