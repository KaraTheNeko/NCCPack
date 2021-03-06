--[[
==============[ ███╗░░██╗░█████╗░░█████╗░██████╗░░█████╗░░█████╗░██╗░░██╗ ]==============|
==============[ ████╗░██║██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║░██╔╝ ]==============|
==============[ ██╔██╗██║██║░░╚═╝██║░░╚═╝██████╔╝███████║██║░░╚═╝█████═╝░ ]==============|
==============[ ██║╚████║██║░░██╗██║░░██╗██╔═══╝░██╔══██║██║░░██╗██╔═██╗░ ]==============|
==============[ ██║░╚███║╚█████╔╝╚█████╔╝██║░░░░░██║░░██║╚█████╔╝██║░╚██╗ ]==============|
==============[ ╚═╝░░╚══╝░╚════╝░░╚════╝░╚═╝░░░░░╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝ ]==============|
                 Made By KyleLee15 (https://github.com/KyleLee15/NCCPack)
]]

local customnames = {}
local customhandles = {}
local customdept = {}

function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end

function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end

function firstToUpper(str)
    return (str:gsub("^%l", string.upper))
end


--[[
███╗░░██╗░█████╗░███╗░░░███╗███████╗  ░░░░░░░  ████████╗░██╗░░░░░░░██╗████████╗
████╗░██║██╔══██╗████╗░████║██╔════╝  ░░██╗░░  ╚══██╔══╝░██║░░██╗░░██║╚══██╔══╝
██╔██╗██║███████║██╔████╔██║█████╗░░  ██████╗  ░░░██║░░░░╚██╗████╗██╔╝░░░██║░░░
██║╚████║██╔══██║██║╚██╔╝██║██╔══╝░░  ╚═██╔═╝  ░░░██║░░░░░████╔═████║░░░░██║░░░
██║░╚███║██║░░██║██║░╚═╝░██║███████╗  ░░╚═╝░░  ░░░██║░░░░░╚██╔╝░╚██╔╝░░░░██║░░░
╚═╝░░╚══╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝  ░░░░░░░  ░░░╚═╝░░░░░░╚═╝░░░╚═╝░░░░░╚═╝░░░

██████╗░███████╗██╗░░░░░░█████╗░████████╗███████╗██████╗░
██╔══██╗██╔════╝██║░░░░░██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
██████╔╝█████╗░░██║░░░░░███████║░░░██║░░░█████╗░░██║░░██║
██╔══██╗██╔══╝░░██║░░░░░██╔══██║░░░██║░░░██╔══╝░░██║░░██║
██║░░██║███████╗███████╗██║░░██║░░░██║░░░███████╗██████╔╝
╚═╝░░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝╚═════╝░]]

if EnableNameChange == true then
	RegisterCommand("name", function(source, args)

		if not args[2] then
			TriggerClientEvent('chatMessage', source, "^*Error: Please enter a first and last name.")
			return
		end
			
		local serverID = source
		local fullname = firstToUpper(args[1]) .. ' ' .. firstToUpper(args[2])
			
		TriggerClientEvent('chatMessage', source, "^*Updated Name: "..fullname)
		customnames[serverID] = fullname
			
	end, false)
end





if EnableTwtCommands == true then
	RegisterCommand("twthandle", function(source, args)
		if not args[1] then
			TriggerClientEvent('chatMessage', source, "^*Error: Please enter a valid Twotter username.")
			return
		end
		
		local randomNumber = math.random (100, 999)
		local serverID = source
		local fulltwhandle = args[1]..""..randomNumber 
				
		TriggerClientEvent('chatMessage', source, "^*Updated Twotter Username: "..fulltwhandle)
		customhandles[serverID] = fulltwhandle
		TriggerClientEvent("handlechange", -1, customhandles)
	end, false)
end










































--[[
██████╗░███████╗██████╗░░█████╗░██████╗░████████╗███╗░░░███╗███████╗███╗░░██╗████████╗
██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝████╗░████║██╔════╝████╗░██║╚══██╔══╝
██║░░██║█████╗░░██████╔╝███████║██████╔╝░░░██║░░░██╔████╔██║█████╗░░██╔██╗██║░░░██║░░░
██║░░██║██╔══╝░░██╔═══╝░██╔══██║██╔══██╗░░░██║░░░██║╚██╔╝██║██╔══╝░░██║╚████║░░░██║░░░
██████╔╝███████╗██║░░░░░██║░░██║██║░░██║░░░██║░░░██║░╚═╝░██║███████╗██║░╚███║░░░██║░░░
╚═════╝░╚══════╝╚═╝░░░░░╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░░░░╚═╝╚══════╝╚═╝░░╚══╝░░░╚═╝░░░

██████╗░███████╗██╗░░░░░░█████╗░████████╗███████╗██████╗░
██╔══██╗██╔════╝██║░░░░░██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
██████╔╝█████╗░░██║░░░░░███████║░░░██║░░░█████╗░░██║░░██║
██╔══██╗██╔══╝░░██║░░░░░██╔══██║░░░██║░░░██╔══╝░░██║░░██║
██║░░██║███████╗███████╗██║░░██║░░░██║░░░███████╗██████╔╝
╚═╝░░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝╚═════╝░]]




if EnableDeptChange == true then
	RegisterCommand("department", function(source, args)
		fulldept = ""
		if not args[1] then
			TriggerClientEvent('chatMessage', source,"^*Error: Please enter a valid department.")
			return
		end

		fulldept = string.upper(args[1])

		if fulldept == "SO" then
			fulldept = "BCSO"
			local updatedDeptMess

		elseif fulldept == "PD" then
			fulldept = "LSPD"
			local updatedDeptMess

		elseif fulldept == "HP" then
			fulldept = "SAHP"
			local updatedDeptMess

		elseif fulldept == "CIV" then
			fulldept = "Civ"
			local updatedDeptMess

		elseif fulldept == "Civ" then
			fulldept = "Civ"
			local updatedDeptMess

		elseif fulldept == "FD" then
			fulldept = "LSFD"
			local updatedDeptMess
		else
			TriggerClientEvent('chatMessage', source, "^*[Invalid Department] Please choose from the following: SO, PD, HP, Civ or FD.")
		end
		
		updatedDeptMess = TriggerClientEvent('chatMessage', source, "^*Your department has been updated to "..fulldept)

		local serverID = source
			
		customdept[serverID] = fulldept
		TriggerClientEvent("deptchange", -1, customdept)
	end, false)
end





--[[
░█████╗░██╗░░██╗░█████╗░████████╗  ██████╗░███████╗██╗░░░░░░█████╗░████████╗███████╗██████╗░
██╔══██╗██║░░██║██╔══██╗╚══██╔══╝  ██╔══██╗██╔════╝██║░░░░░██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
██║░░╚═╝███████║███████║░░░██║░░░  ██████╔╝█████╗░░██║░░░░░███████║░░░██║░░░█████╗░░██║░░██║
██║░░██╗██╔══██║██╔══██║░░░██║░░░  ██╔══██╗██╔══╝░░██║░░░░░██╔══██║░░░██║░░░██╔══╝░░██║░░██║
╚█████╔╝██║░░██║██║░░██║░░░██║░░░  ██║░░██║███████╗███████╗██║░░██║░░░██║░░░███████╗██████╔╝
░╚════╝░╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░  ╚═╝░░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝╚═════╝░]]


if EnableChatCommand == true then
	--Standard Chat
	if EnableStandChat == true then
		AddEventHandler('chatMessage', function(source, name, message)
			if string.sub(message, 1, string.len("/")) ~= "/" then
				--local name = GetPlayerName(source)
				local name = customnames[source]
				local dept = customdept[source]
				local stockname = GetPlayerName(source)
				if dept and name then
					TriggerClientEvent("SendProximityMessage", -1, source, "["..dept.."]‎ ‎"..name, message)
				elseif name then
					TriggerClientEvent("SendProximityMessage", -1, source, name, message)
				elseif dept then
					TriggerClientEvent("SendProximityMessage", -1, source, "["..dept.."]‎ ‎"..stockname, message)
				else
					TriggerClientEvent("SendProximityMessage", -1, source, stockname, message)
				end		
			end
			CancelEvent()
		end)
	end


	
	--/me Command
	if EnableMeChat == true then
		RegisterCommand('me', function(source, args, user)
			local name = customnames[source]
			local dept = customdept[source]
			local stockname = GetPlayerName(source)
			if dept and name then
				TriggerClientEvent("SendProximityMessageMe", -1, source, "["..dept.."]‎ ‎"..name, table.concat(args, " "))
			elseif name then
				TriggerClientEvent("SendProximityMessageMe", -1, source, name, table.concat(args, " "))
			elseif dept then
				TriggerClientEvent("SendProximityMessageMe", -1, source, "["..dept.."]‎ ‎"..stockname, table.concat(args, " "))
			else
				TriggerClientEvent("SendProximityMessageMe", -1, source, GetPlayerName(source), table.concat(args, " "))
			end
		end, false)
	end

		--/mer Command
	if EnableMerChat == true then
		RegisterCommand('mer', function(source, args, user)
			local name = customnames[source]
			local dept = customdept[source]
			local stockname = GetPlayerName(source)
			if dept and name then
				TriggerClientEvent("SendProximityMessageMer", -1, source, "["..dept.."]‎ ‎"..name, table.concat(args, " "))
			elseif name then
				TriggerClientEvent("SendProximityMessageMer", -1, source, name, table.concat(args, " "))
			elseif dept then
				TriggerClientEvent("SendProximityMessageMer", -1, source, "["..dept.."]‎ ‎"..stockname, table.concat(args, " "))
			else
				TriggerClientEvent("SendProximityMessageMer", -1, source, GetPlayerName(source), table.concat(args, " "))
			end
		end, false)
	end

	--/ooc Command
	if EnableOOCChat == true then
		RegisterCommand('ooc', function(source, args, user)
			local name = customnames[source]
			local dept = customdept[source]
			local stockname = GetPlayerName(source)
			if dept and name then
				TriggerClientEvent("SendProximityMessagePOOC", -1, source, "["..dept.."]‎ ‎"..name, table.concat(args, " "))
			elseif name then
				TriggerClientEvent("SendProximityMessagePOOC", -1, source, name, table.concat(args, " "))
			elseif dept then
				TriggerClientEvent("SendProximityMessagePOOC", -1, source, "["..dept.."]‎ ‎"..stockname, table.concat(args, " "))
			else
				TriggerClientEvent("SendProximityMessagePOOC", -1, source, GetPlayerName(source), table.concat(args, " "))
			end
		end, false)
	end
		
	--/oocr
	if EnableOOCRChat == true then
		RegisterCommand('oocr', function(source, args, user)
			local name = customnames[source]
			local dept = customdept[source]
			local stockname = GetPlayerName(source)
			if dept and name then
				TriggerClientEvent("SendProximityMessagePOOCr", -1, source, "["..dept.."]‎ ‎"..name, table.concat(args, " "))
			elseif name then
				TriggerClientEvent("SendProximityMessagePOOCr", -1, source, name, table.concat(args, " "))
			elseif dept then
				TriggerClientEvent("SendProximityMessagePOOCr", -1, source, "["..dept.."]‎ ‎"..stockname, table.concat(args, " "))
			else
				TriggerClientEvent("SendProximityMessagePOOCr", -1, source, GetPlayerName(source), table.concat(args, " "))
			end
		end, false)
	end

		--/twt Command
	if EnableTwtCommands == true then
		RegisterCommand('twt', function(source, args, user)
			local name = customhandles[source]
			if name then
			TriggerClientEvent('chatMessage', -1, "^*[Twotter] @" .. name .. "^r", {4, 196, 255}, table.concat(args, " "))
			else
				TriggerClientEvent('chatMessage', source, "^*Please create Twotter account \"/twthandle {username}\"")
			end
		end, false)
	end

	--/gooc Command
	if EnableGOOCChat == true then
		RegisterCommand('gooc', function(source, args, user)
			local name = customnames[source]
			local dept = customdept[source]
			local stockname = GetPlayerName(source)
			if dept and name then
			TriggerClientEvent('chatMessage', -1, "["..dept.."]‎ ‎"..name, {4, 134, 255}, table.concat(args, " "))
			elseif name then
				TriggerClientEvent('chatMessage', -1, name , {4, 134, 255}, table.concat(args, " "))
			elseif dept then
				TriggerClientEvent('chatMessage', -1, "["..dept.."]‎ ‎"..stockname, {4, 134, 255}, table.concat(args, " "))
			else 
			TriggerClientEvent('chatMessage', -1, GetPlayerName(source), {4, 134, 255}, table.concat(args, " "))
			end
		end, false)
	end

	--/dw Command
	if EnableDwChat == true then
		RegisterCommand('dw', function(source, args, user)
			TriggerClientEvent('chatMessage', -1, "^8^*[^*Dark Web] @^*Anonymous^r", {0, 0, 0}, table.concat(args, " "))
		end, false)
	end
end
-------------------------------------------------------------------------------

if EnableChatCommand == true then

	--String Splitting																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									
	function stringsplit(inputstr, sep)
		if sep == nil then
			sep = "%s"
		end
		local t={} ; i=1
		for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
			t[i] = str
			i = i + 1
		end
		return t
	end
end

-------------------------------------------------------------------------------

print [[NCCPack (1.0.1) Has been successfully started!
Made By KyleLee15 (https://github.com/KyleLee15/NCCPack)]]
