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

laptop.register_view("servers.minetest", {
	app_info = "Minetest Servers List",
	browser_page = true,
	browser_main_page = true,
	formspec_func = function(app, mtos)
		local formspec = laptop.browser_api.header_formspec_func(app, mtos) ..
			mtos.theme:get_label('.1,1.2', 'Persistent Kingdoms') ..
			mtos.theme:get_button('.1,1.7;4,.5', 'url_bright', 'page_link', 'servers.minetest/persistentkingdoms')
		return formspec
	end,
	receive_fields_func = function(app, mtos, sender, fields)
		laptop.browser_api.header_receive_fields_func(app, mtos, sender, fields)
	end
})