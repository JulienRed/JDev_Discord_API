
RegisterCommand('testResource', function(source, args, rawCommand)
	local user = source; -- The user 




	local roleName = "Founder"; 

	local roleID = GetRoleIdFromRoleName(roleName);
	print("[JDev_Perms Example] The roleID for (" .. roleName .. ") is: " .. tostring(roleID));

	local isVerified = IsDiscordEmailVerified(user);
	print("[JDev_Perms Example] Player " .. GetPlayerName(user) .. " has Discord email verified?: " .. tostring(isVerified));

	local emailAddr = GetDiscordEmail(user);
	print("[JDev_Perms Example] Player " .. GetPlayerName(user) .. " has Discord email address: " .. tostring(emailAddr));

	local name = GetDiscordName(user);
	print("[JDev_Perms Example] Player " .. GetPlayerName(user) .. " has Discord name: " .. tostring(name));


	local icon_URL = GetGuildIcon();
	print("[JDev_Perms Example] Guild icon URL is: " .. tostring(icon_URL));


	local splash_URL = GetGuildSplash();
	print("[JDev_Perms Example] Guild splash URL is: " .. tostring(splash_URL));


	local guildName = GetGuildName();
	print("[JDev_Perms Example] Guild name is: " .. tostring(guildName));

	local guildDesc = GetGuildDescription();
	print("[JDev_Perms Example] Guild description is: " .. tostring(guildDesc));

	local guildMemCount = GetGuildMemberCount();
	print("[JDev_Perms Example] Guild member count is: " .. tostring(guildMemCount));

	local onlineMemCount = GetGuildOnlineMemberCount();
	print("[JDev_Perms Example] Guild online member count is: " .. tostring(onlineMemCount));

	local avatar = GetDiscordAvatar(user);
	print("[JDev_Perms Example] Player " .. GetPlayerName(user) .. " has Discord avatar: " .. tostring(avatar));

	local nickname = GetDiscordNickname(user);
	print("[JDev_Perms Example] Player " .. GetPlayerName(user) .. " has Discord nickname: " .. tostring(nickname));

	local roles = GetGuildRoleList();
	for roleName, roleID in pairs(roles) do 
		print(roleName .. " === " .. roleID);
	end

	local roles = GetDiscordRoles(user)
	for i = 1, #roles do  
		print(roles[i]);
	end

	local isRolesEqual = CheckEqual("Founder", 597446100206616596);
	local isRolesEqual2 = CheckEqual("FounderRef", "Founder"); 
:
	SetNickname(user, "🦡JDev", "Set nickname")
	SetNickname(user, "", "Reset nickname")


	AddRole(user, "1038448129709723670", "Add role")

	SetRoles(user, { "1038448129709723670" }, "Set roles")

	RemoveRole(user, "1038448129709723670", "Remove role")

	ChangeDiscordVoice(user, 123456789123456789)
	ChangeDiscordVoice(user, 123456789123456789, "Moved "..GetPlayerName(user).." to the admin channel")
end)
