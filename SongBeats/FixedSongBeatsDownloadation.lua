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
    "SongBeats/Songs",
    "SongBeats/DefaultSongs",
    "SongBeats/Settings"
}

for _, folders in ipairs(downloadFolders) do
    if not isfolder(folders) then
        wait(0.1)
        makeFolder(folders)
        print("Created main child folder: " .. folders)
    else
        print("SongBeats folders already exist.")
    end
end

-- text children

makeFile("SongBeats/Version.txt", "SongBeats Version: V1.1")

-- check if files work
if not isfolder(downloadFolders[1]) or isfolder(downloadFolders[2]) or isfolder(downloadFolders[3]) then
     game.Players.LocalPlayer:Kick("Failed to re-initiate new SongBeats downloadation.)
end
