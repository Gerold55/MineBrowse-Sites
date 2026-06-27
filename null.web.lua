local site = {
    title = "NULL",
    author = "Null Dev",
    background_color = "black",
    elements = {
        -- Главный заголовок
        {
            type = "text",
            text = "NULL",
            color = "white",
            size = 4,
            align = "center"
        },
        -- Подзаголовок
        {
            type = "text",
            text = "Null Dev",
            color = "lightgray",
            size = 2,
            align = "center"
        },
        -- Зеленая цифровая матрица (используем стандартную текстуру консоли/сервера из игры)
        {
            type = "image",
            texture = "default_server_front.png", -- Если картинка не отобразится, можно заменить на "default_bookshelf.png"
            width = 64,
            height = 64,
            align = "center"
        },
        -- Текст перед главами
        {
            type = "text",
            text = "Wiki the multicraft\n\nChose your glava",
            color = "white",
            size = 1,
            align = "left"
        },
        -- Кнопка-ссылка 1: Multicraft old
        {
            type = "button",
            text = "Multicraft old",
            action = "link",
            url = "multicraftold.web"
        },
        -- Кнопка-ссылка 2: Bugs
        {
            type = "button",
            text = "Bugs",
            action = "link",
            url = "bugslist.web"
        },
        -- Кнопка-ссылка 3: Servers
        {
            type = "button",
            text = "Servers",
            action = "link",
            url = "servers.web"
        }
    }
}

return site
