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
-- @description Library cleanup
 module("cleanup")

--- cleanup.Add
-- @usage server
-- Adds an entity to a player's cleanup list.
--
-- @param  pl Player  Who's cleanup list to add the entity to.
-- @param  type string  The type of cleanup.
-- @param  ent Entity  The entity to add to the player's cleanup list.
function Add( pl,  type,  ent) end

--- cleanup.CC_AdminCleanup
-- @usage server
-- This is an internal function or feature.
--This means you will be able to use it, but you really shouldn't.
-- @param  pl Player  The player that called the console command.
-- @param  command string  The console command that called this function.
-- @param  args table  First and only arg is the cleanup type.
function CC_AdminCleanup( pl,  command,  args) end

--- cleanup.CC_Cleanup
-- @usage server
-- This is an internal function or feature.
--This means you will be able to use it, but you really shouldn't.
-- @param  pl Player  The player that called the console command.
-- @param  command string  The console command that called this function.
-- @param  args table  First and only arg is the cleanup type.
function CC_Cleanup( pl,  command,  args) end

--- cleanup.GetList
-- @usage server
-- Gets the cleanup list.
--
function GetList() end

--- cleanup.GetTable
-- @usage shared
-- Gets the table of cleanup types.
--
-- @return table cleanup_types
function GetTable() end

--- cleanup.Register
-- @usage shared
-- Registers a new cleanup type.
--
-- @param  type string  Name of type.
function Register( type) end

--- cleanup.ReplaceEntity
-- @usage server
-- Replaces one entity in the cleanup module with another
--
-- @param  from Entity  Old entity
-- @param  to Entity  New entity
-- @return boolean Whether any action was taken.
function ReplaceEntity( from,  to) end

--- cleanup.UpdateUI
-- @usage client
-- Repopulates the clients cleanup menu
--
function UpdateUI() end