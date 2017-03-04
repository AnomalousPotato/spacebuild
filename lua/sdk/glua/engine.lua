--[[============================================================================
  Project spacebuild                                                           =
  Copyright Spacebuild project (http://github.com/spacebuild)                  =
                                                                               =
  Licensed under the Apache License, Version 2.0 (the "License");              =
   you may not use this file except in compliance with the License.            =
   You may obtain a copy of the License at                                     =
                                                                               =
  http://www.apache.org/licenses/LICENSE-2.0                                   =
                                                                               =
  Unless required by applicable law or agreed to in writing, software          =
  distributed under the License is distributed on an "AS IS" BASIS,            =
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.     =
  See the License for the specific language governing permissions and          =
   limitations under the License.                                              =
  ============================================================================]]

---
-- @description Library engine
 module("engine")

--- engine.ActiveGamemode
-- @usage shared_m
-- Returns the name of the currently running gamemode.
--
-- @return string The active gamemode's name. This is the name of the gamemode's folder.
function ActiveGamemode() end

--- engine.CloseServer
-- @usage server
-- Closes the server and completely exits.
--
function CloseServer() end

--- engine.GetAddons
-- @usage shared_m
-- Gets the addons you have downloaded from the workshop.
--
-- @return table Returns a table with 6 keys (downloaded, models, title, file, mounted, wsid)
function GetAddons() end

--- engine.GetDemoPlaybackStartTick
-- @usage client_m
-- When starting playing a demo, engine.GetDemoPlaybackTick will be reset and its old value will be added to this functions return value.
--
-- @return number 
function GetDemoPlaybackStartTick() end

--- engine.GetDemoPlaybackTick
-- @usage client_m
-- Current tick of currently loaded demo.
--
-- @return number The amount of ticks of currently loaded demo.
function GetDemoPlaybackTick() end

--- engine.GetDemoPlaybackTimeScale
-- @usage client_m
-- Returns time scale of demo playback.
--
-- @return number The time scale of demo playback, value of demo_timescale console variable.
function GetDemoPlaybackTimeScale() end

--- engine.GetDemoPlaybackTotalTicks
-- @usage client_m
-- Returns total amount of ticks of currently loaded demo.
--
-- @return number Total amount of ticks of currently loaded demo.
function GetDemoPlaybackTotalTicks() end

--- engine.GetGamemodes
-- @usage shared_m
-- Returns a table containing info for all installed gamemodes
--
-- @return table gamemodes
function GetGamemodes() end

--- engine.GetGames
-- @usage shared_m
-- Returns an array of tables corresponding to all games from which Garry's Mod supports mounting content.
--
-- @return table A table containing all mountable games
function GetGames() end

--- engine.IsPlayingDemo
-- @usage client_m
-- Returns true if we're currently playing a demo.
--
-- @return boolean Whether the game is currently playing a demo or not.
function IsPlayingDemo() end

--- engine.IsRecordingDemo
-- @usage client_m
-- Returns true if the game is currently recording a demo file (.dem) using gm_demo
--
-- @return boolean Whether the game is currently recording a demo or not.
function IsRecordingDemo() end

--- engine.LightStyle
-- @usage server
-- This is a direct binding to the function “engine->LightStyle”. This function allows you to change the default light style of the map - so you can make lighting lighter or darker. You’ll need to call render.RedownloadAllLightmaps clientside to refresh the lightmaps to this new color.
--
-- @param  lightstyle number  The lightstyle to edit. 0 to 63. If you want to edit map lighting, you want to set this to 0.
-- @param  pattern string  The pattern to change the lightstyle to. "a" is the darkest, "z" is the brightest. You can use stuff like "abcxyz" to make flashing patterns. The normal brightness for a map is "m". Values over "z" are allowed, "~" for instance.
function LightStyle( lightstyle,  pattern) end

--- engine.OpenDupe
-- @usage client
-- Loads a duplication from the local filesystem.
--
-- @param  dupeName string  Name of the file. e.g, engine.OpenDupe("dupes/8b809dd7a1a9a375e75be01cdc12e61f.dupe")
-- @return string Compressed dupeData. Use util.JSONToTable to make it into a format useable by the duplicator tool.
function OpenDupe( dupeName) end

--- engine.SetMounted
-- @usage menu
-- Sets the mounting options for mountable content.
--
-- @param  depotID string  The depot id of the game to mount.
-- @param  doMount boolean  The mount state, true to mount, false to unmount
function SetMounted( depotID,  doMount) end

--- engine.TickInterval
-- @usage shared_m
-- Returns the number of seconds between each gametick.
--
-- @return number Number of seconds between each gametick.
function TickInterval() end

--- engine.VideoSettings
-- @usage client
-- Returns video recording settings set by video.Record. Used by Demo-To-Video feature.
--
-- @return table The video recording settings, see VideoData structure.
function VideoSettings() end

--- engine.WriteDupe
-- @usage client
-- Saves a duplication as a file.
--
-- @param  dupe string  Dupe table, encoded by util.TableToJSON and compressed by util.Compress
-- @param  jpeg string  The dupe icon, created by render.Capture
function WriteDupe( dupe,  jpeg) end

--- engine.WriteSave
-- @usage client
-- Stores savedata into the game (can be loaded using the LoadGame menu)
--
-- @param  saveData string  Data generated by gmsave.SaveMap
-- @param  name string  Name the save will have.
-- @param  time number  When the save was saved during the game (Put CurTime here)
-- @param  map string  The map the save is used for.
function WriteSave( saveData,  name,  time,  map) end