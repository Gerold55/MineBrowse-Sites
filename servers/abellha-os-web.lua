-- MineBrowse Web Page: abellhaos.web
-- Developed by: Exaral (Abéllha OS Project)

local site = {
    title = "Abéllha OS - Official Site",
    author = "Exaral",
    domain = "abellhaos.web",
    
    -- Default tab state for page navigation
    current_tab = "about", 
    
    -- Visual states to show simulated download progress inside Luanti
    download_status = "",

    -- Rendering function read by the MineBrowse interpreter
    render = function(self, context)
        local elements = {}

        -- =========================================================
        -- TOP NAVIGATION BAR (TABS)
        -- =========================================================
        table.insert(elements, {
            type = "button",
            text = "About",
            x = 10, y = 5, w = 80, h = 20,
            active = (self.current_tab == "about"),
            action = function() self.current_tab = "about" end
        })
        table.insert(elements, {
            type = "button",
            text = "Downloads",
            x = 95, y = 5, w = 90, h = 20,
            active = (self.current_tab == "downloads"),
            action = function() 
                self.current_tab = "downloads" 
                self.download_status = "" -- Reset status when switching tabs
            end
        })
        table.insert(elements, {
            type = "button",
            text = "News",
            x = 190, y = 5, w = 80, h = 20,
            active = (self.current_tab == "news"),
            action = function() self.current_tab = "news" end
        })
        table.insert(elements, {
            type = "button",
            text = "Support",
            x = 275, y = 5, w = 90, h = 20,
            active = (self.current_tab == "support"),
            action = function() self.current_tab = "support" end
        })

        -- Visual divider line for the menu
        table.insert(elements, { type = "line", x1 = 0, y1 = 30, x2 = 400, y2 = 30, color = "#444444" })

        -- =========================================================
        -- DYNAMIC CONTENT SECTIONS
        -- =========================================================
        if self.current_tab == "about" then
            table.insert(elements, { type = "label", text = "Welcome to the Abéllha OS Page!", x = 20, y = 45, font_size = "large", color = "#D4AF37" })
            table.insert(elements, { type = "label", text = "About the Project", x = 20, y = 75, font_size = "medium" })
            table.insert(elements, { type = "text", text = "Abéllha OS is an Open Source project, like any Linux distribution.", x = 20, y = 100, w = 360 })
            table.insert(elements, { type = "text", text = "Abéllha OS is a non-profit project. Please, DO NOT SELL IT TO ANYONE AS IF IT IS YOURS.", x = 20, y = 130, w = 360, color = "#FF0000" })
            table.insert(elements, { type = "text", text = "You are TOTALLY FREE to create distributions based on Abéllha OS.", x = 20, y = 170, w = 360 })

        elseif self.current_tab == "downloads" then
            table.insert(elements, { type = "label", text = "Downloading Abéllha OS", x = 20, y = 45, font_size = "large", color = "#D4AF37" })
            table.insert(elements, { type = "label", text = "Installation Guidelines", x = 20, y = 75, font_size = "medium" })
            table.insert(elements, { type = "text", text = "There is no official ISO distributed by Exaral. You need to install ANY other Linux distribution (XFCE or GNOME required) and apply the configuration files.", x = 20, y = 100, w = 360 })
            
            -- Updated download buttons mentioning the CS-BOS Prompt
            table.insert(elements, { 
                type = "button", 
                text = "Download XFCE ZIP", 
                x = 20, y = 160, w = 150, h = 25, 
                action = function() 
                    self.download_status = "Downloaded abellha_xfce.zip! Use CS-BOS Prompt and 'dir' to find it."
                    if context and context.download_file then
                        context:download_file("abellha_xfce.zip", "Abellha OS XFCE setup directory structure.")
                    end
                end 
            })
            
            table.insert(elements, { 
                type = "button", 
                text = "Download GNOME ZIP", 
                x = 180, y = 160, w = 150, h = 25, 
                action = function() 
                    self.download_status = "Downloaded abellha_gnome.zip! Use CS-BOS Prompt and 'dir' to find it."
                    if context and context.download_file then
                        context:download_file("abellha_gnome.zip", "Abellha OS GNOME setup directory structure.")
                    end
                end 
            })

            -- Status notification tracking text element
            if self.download_status ~= "" then
                table.insert(elements, { type = "text", text = self.download_status, x = 20, y = 195, w = 360, color = "#00FF00" })
            end

        elseif self.current_tab == "news" then
            table.insert(elements, { type = "label", text = "News & System Updates", x = 20, y = 45, font_size = "large", color = "#D4AF37" })
            table.insert(elements, { type = "label", text = "Latest Announcements", x = 20, y = 75, font_size = "medium" })
            table.insert(elements, { type = "text", text = "• Abéllha OS 2 Xfce Released!", x = 20, y = 110, w = 360 })

        elseif self.current_tab == "support" then
            table.insert(elements, { type = "label", text = "Computer Support", x = 20, y = 45, font_size = "large", color = "#D4AF37" })
            table.insert(elements, { type = "text", text = "Need help with Abéllha OS or Exaral software? Check our official GitHub repository for community guides, troubleshooting, and issue tracking.", x = 20, y = 80, w = 360 })
        end

        -- =========================================================
        -- FOOTER
        -- =========================================================
        table.insert(elements, { type = "line", x1 = 0, y1 = 215, x2 = 400, y2 = 215, color = "#444444" })
        table.insert(elements, {
            type = "button",
            text = "Visit GitHub Project",
            x = 120, y = 223, w = 160, h = 22,
            action = function() end
        })

        return elements
    end
}

return site

