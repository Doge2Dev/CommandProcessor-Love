return {
    name = "save",
    description = "save the code stored on memory to file",
    usage = "save <filename>",
    callback = function(_path)
        if #ram.buffer[2] > 0 then
            local file = love.filesystem.newFile(table.concat(ram.buffer[1], "/") .. "/" .. _path, "w")
            file:write(table.concat(ram.buffer[2], "\n"))
            file:close()
            terminalapi.print("Saved on disk as '" .. _path .. "'\n")
        else
            terminalapi.print("No code to save\n")
        end
    end
}