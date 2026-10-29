
-- New-island: offizielles Serverportal

local domain = "newisland.web"

local pages = {
    {
        url = domain,
        title = "New-island",
        text = "Willkommen auf dem offiziellen Serverportal!"
    },
    {
        url = domain .. "/regeln",
        title = "Serverregeln",
        text = "Hier findest du die Regeln unseres Servers."
    },
    {
        url = domain .. "/berufe",
        title = "Berufe & Gehaelter",
        text = "Informationen zu Berufen und Gehaeltern."
    },
    {
        url = domain .. "/gesetze",
        title = "Gesetze",
        text = "Hier findest du das Gesetzbuch von New-island."
    },
    {
        url = domain .. "/coins",
        title = "Coins & Steuern",
        text = "Informationen zu Coins und Steuern."
    },
    {
        url = domain .. "/regierung",
        title = "Regierung & Verwaltung",
        text = "Informationen zu Aemtern und Verwaltung."
    },
    {
        url = domain .. "/unternehmen",
        title = "Unternehmen",
        text = "Hier findest du Shopnamen und E-Mail-Adressen."
    }
}

for _, page in ipairs(pages) do
    local current_page = page

    laptop.register_view(current_page.url, {
        app_info = current_page.title,
        browser_page = true,
        browser_main_page = (current_page.url == domain),

        formspec_func = function(app, mtos)
            local formspec =
                laptop.browser_api.header_formspec_func(
                    app, mtos
                ) ..
                "background[0,1.2;15,9]" ..
                mtos.theme:get_label(
                    "1,2",
                    current_page.title
                ) ..
                mtos.theme:get_label(
                    "1,3",
                    current_page.text
                )

            return formspec
        end,

        receive_fields_func = function(
            app, mtos, sender, fields
        )
            laptop.browser_api.header_receive_fields_func(
                app, mtos, sender, fields
            )
        end
    })
end
