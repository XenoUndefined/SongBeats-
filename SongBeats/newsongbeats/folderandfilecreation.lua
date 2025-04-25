local function enableDownloading(boolean)
          if boolean == true then
                    local function makeFolder(path)
                              local SUC, RES = pcall(function()
                                        if not isfolder(path) then
                                                  makefolder(path)
                                        else
                                                  error(path .. " already exists!")
                                        end
                              end)
                              if not SUC then
                                        game.StarterGui:SetCore("DevConsoleVisible", true)
                                        error("Failed to download: " .. path)
                              end
                    end
                    
                    local function makeFile(path, contents)
                              local SUC, RES = pcall(function()
                                        if not isfile(path) then
                                                  writefile(path, contents)
                                        else
                                                  error(path .. " already exists!")
                                        end
                              end)
                              if not SUC then
                                        game.StarterGui:SetCore("DevConsoleVisible", true)
                                        error("Failed to download: " .. path)
                              end
                    end
          end
end
