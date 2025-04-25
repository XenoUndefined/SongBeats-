local function makeFolder(path)
    local SUC, RES = pcall(function()
        if not isfolder(path) then
            makefolder(path)
            print("Created folder: " .. path)
        end
    end)
end
local function makeFile(path, contents)
    local SUC, RES = pcall(function()
        if not isfile(path) then
            writefile(path, contents)
            print("Created folder: " .. path)
            print(path .. " contents: " .. contents)
        end
    end)
end

-- main folder

makeFolder("SongBeats")

-- folder children

local downloadFolders = {
    "Songs",
    "DefaultSongs",
    "Settings"
}

for _, folders in ipairs(downloadFolders) do
    if not isfolder(folders) then
        wait(0.1)
        makeFolder(folders)
        print("Created main child folder: " .. folders)
    end
end

-- text children

makeFile("SongBeats/Version.txt", "SongBeats Version: V1.1")

