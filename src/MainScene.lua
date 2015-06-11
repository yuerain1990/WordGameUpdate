
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

function MainScene:onCreate()
    -- add background image
    display.newSprite("MainSceneBg.jpg")
        :move(display.center)
        :addTo(self)

    -- add play button
    local playButton = cc.MenuItemImage:create("PlayButton.png", "PlayButton.png")
        :onClicked(function()
            self:getApp():enterScene("PlayScene")
        end)
    cc.Menu:create(playButton)
        :move(display.cx, display.cy - 200)
        :addTo(self)
    -- 测试热更新用的代码***
    local updateButton = cc.MenuItemImage:create("PlayButton.png", "PlayButton.png")
        :onClicked(function()
            print("update")
        end)
    cc.Menu:create(updateButton)
        :move(display.cx + 200, display.cy - 200)
        :addTo(self)
        
end

return MainScene
