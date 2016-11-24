--[[
			  ____                      _       _           _       
			 / ___| _   _ _ __   ___   / \   __| |_ __ ___ (_)_ __  
			 \___ \| | | | '_ \ / __| / _ \ / _` | '_ ` _ \| | '_ \ 
			  ___) | |_| | | | | (__ / ___ \ (_| | | | | | | | | | |
			 |____/ \__, |_| |_|\___/_/   \_\__,_|_| |_| |_|_|_| |_|
			        |___/                                                                                         
                           

			@Description: Synchronized Admin Commands | Settings Module
			@Author: Dominik [VolcanoINC], Hannah [DataSynchronized]
			@Date of Creation: 13th, September, 2016 | Powered by British Tea


					Synchronized Administrative Commands Loader Below
	======================================================================================
	Authors 				Hannah Jane [DataSynchronized], Dominik [VolcanoINC]
	Description				This module contains settings for SyncAdmin.
	--------------------------------------------------------------------------------------
	
	Note
	----
	You cannot use this in Studio mode. This is due to Roblox limitations as well as security on our side
	to protect from users gathering the internal workings of SyncAdmin. We hope you understand our concern
	for keeping our product secure :)
	
--]]

return {
	
	--// Google Analytics Reporting 
	--// This is used to report usage information to SyncAdmin
	GoogleAnalytics		 	 = true;
	
	--// General Settings
	--// These settings allow you to change the basic functionality of SyncAdmin such as the key used to open the command bar, etc
	CmdPrefix				 = "!!"; 	-- Change what key will be used to run plugin commands e.g. !!respawn Player1
	CmdSeparator 			 = "|"; 	-- Change what key will be used to run several plugins commands e.g. !!tp me Player1 | !!respawn Player2
	CommandBarKey			 = ";";		-- Change what key will open the SyncAdmin command bar
	AllowDonatorPermissions	 = true;	-- Toggle on and off if you want to allow SyncAdmin donators to have access to donator plugins
	FriendJoinNotifications	 = true;	-- Toggle on and off notifications when friends join
	
	--// Developer Settings
	--// These settings manage SyncAdmin internally, this can be used to debug your game, etc
	DebugMode				 = false;	-- Toggle on and off SyncAdmin prints. If this is disabled, SyncAdmin will not print anything to the server console unless an unhandled exception occurs
	AutoAssignNetworkOwner	 = false;	-- If this is enabled, SyncAdmin will automatically assign network ownership of the player model to the player object
	ChatBubblesEnabled		 = false;	-- Toggle this if your game is using a custom chat system
	
	--// BETA Settings
	--// This setting allows you to access experimental features of SyncAdmin
	BetaUser				 = false;	-- Toggle SyncAdmin BETA build. NOTE: If you're using BETA, updates on this build may be unstable
	
	--// Security Settings
	UseExploiterDatabase	 = true;	-- Turn this on if you want to use a default ban list for SyncAdmin
	
	--// Global DataStore Settings
	--// These settings manage how SyncAdmin will use DataStore in your game
	SaveUserPermissions		 = true;	-- Toggle this to false if you do not want in game permission changes to save
	
	--// Moderators - Add users to SyncAdmin with level 1 permissions
	--// One table per user you want to add to the moderator list
	Moderators = {
		{ Username = "Player"; UserId = 0; };
		{ Username = "YourFriend"; UserId = 0; };
		-- Format: { Username = "UsernameHere"; UserId = 0000000; };
	};
	
	--// Administrators - Add users to SyncAdmin with level 2 permissions
	--// One table per user you want to add to the administrator list
	Administrators = {
		{ Username = "Player2"; UserId = 0; };
		{ Username = "YourBestFriend"; UserId = 0; };
		-- Format: { Username = "UsernameHere"; UserId = 0000000; };
	};
	
	--// Super Administrators - Add users to SyncAdmin with level 3 permissions
	--// One table per user you want to add to the super administrator list
	SuperAdministrators = {
		{ Username = "Player3"; UserId = 0; };
		{ Username = "GameOwner"; UserId = 0; };
		-- Format: { Username = "UsernameHere"; UserId = 0000000; };
	};
	
	--// Group Permissions - Add groups to your game who should receive administrator permissions
	GroupPermissions = {
		{ GroupId = 0; Moderator = 255; Administrator = 255; SuperAdministrator = 255; }; 
		-- Format: { GroupId = 000000; Moderator = 0 to 255; Administrator = 0 to 255; SuperAdministrator = 0 to 255; }; 
	};
	
	--// Banned - Add users who should be banned on your game
	--// One table per user you want to add to the banned list
	Banned = {
		{ Username = "Player4"; UserId = 0; };
		{ Username = "BadBadNoob"; UserId = 0; };
	};
	
	--// Banned Groups - Add groups who should be banned on your game
	--// One table per group you want to add to the banned list
	BannedGroups = {
		{ GroupId = 0000000; Reason = "You're all nibs"; }; -- Ban the entire group
		{ GroupId = 0000001; Reason = "The nib ranks are nibs"; BannedRanks = {"Nib 1", "Nib 2"}; }; -- Ban certain ranks within a group
		-- Format: { GroupId = 0000001; Reason = "Your reason here"; BannedRanks = {"Rank title", "Rank title"}; };
	};
}
