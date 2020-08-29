function MoveUI:CreateFont(name, size weight)
    surface.CreateFont("MoveUI." .. name, {
        font = "Monsterrat",
        size = size or 16,
        weight = weight or 500
    })
end