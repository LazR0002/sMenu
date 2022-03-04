ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

------ sMenu By LazR.#0002 ------

RMenu.Add('LazR.#0002', 'main', RageUI.CreateMenu("LazR.#0002", "Menu Interaction"))
RMenu.Add('LazR.#0002', 'inventaire', RageUI.CreateSubMenu(RMenu:Get('LazR.#0002', 'main'), "Inventaire", "Inventaire"))
RMenu.Add('LazR.#0002', 'Armes', RageUI.CreateSubMenu(Rmenu:Get('LazR.#0002', 'main'), "Armes", "Gestion Des Armes"))
RMenu.Add('LazR.#0002', 'Autres', RageUI.CreateSubMenu(RMenu:Get('LazR.#0002', 'main'), "Autres", "Autres"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('LazR.#0002', 'main'), true, true, true, function()

            RageUI.ButtonWithStyle("~b~Inventaire", nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
            end, RMenu:Get('LazR.#0002', 'inventaire'))

        end, function()
        end)
    
            RageUI.IsVisible(RMenu:Get('LazR.#0002', 'inventaire'), true, true, true, function()

                RageUI.Separator("~r~↓ Votre inventaire : ↓")

            end, function()
            end)

            RageUI.IsVisible(RMenu:Get('LazR.#0002', 'Autres'), true, true, true, function()

                RageUI.Separator("~r~Autres")
                RageUI.Separator("~r~Votre steam : ~b~"..GetPlayerName(PlayerId()))
                RageUI.Separator("~r~Votre ID : ~b~"..GetPlayerServerId(PlayerId()))


            end, function()
            end)

            Citizen.Wait(0)
        end
    end)






Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustPressed(1, 327) then
            RageUI.Visible(RMenu:Get('LazR.#0002', 'main'), not RageUI.Visible(RMenu:Get('LazR.#0002', 'main')))
        end
    end
end)
