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
	CmdPrefix				 = ":"; 	-- Change what key will be used to run plugin commands e.g. !!respawn Player1
	CmdSeparator 			 = "|"; 	-- Change what key will be used to run several plugins commands e.g. !!tp me Player1 | !!respawn Player2
	CommandBarKey			 = "'";		-- Change what key will open the SyncAdmin command bar
	AllowDonatorPermissions	 = false;	-- Toggle on and off if you want to allow SyncAdmin donators to have access to donator plugins
	
	--// Developer Settings
	DebugMode				 = true;	-- Toggle on and off SyncAdmin prints. If this is disabled, SyncAdmin will not print anything to the server console
	AutoAssignNetworkOwner	 = false;	-- If this is enabled, SyncAdmin will automatically assign network ownership of the player model to the player object
	ChatBubblesEnabled		 = false;	-- Toggle this if your game is using a custom chat system
	
	--// BETA Settings
	BetaUser				 = false;	-- Toggle SyncAdmin BETA build. NOTE: If you're using BETA, updates on this build may be unstable
	
	--// Security Settings
	UseExploiterDatabase	 = true;	-- Turn this on if you want to use a default ban list for SyncAdmin
	
	--// Global DataStore Settings
	SaveUserPermissions		 = false;	-- Toggle this to false if you do not want in game permission changes to save
	
	--// Moderators - Add users to SyncAdmin with level 1 permissions
	Moderators = {
		{ Username = "SomeMod"; UserId = 1; };
	};
	
	--// Administrators - Add users to SyncAdmin with level 2 permissions
	Administrators = {
		{ Username = "BestFriend"; UserId = 1; };
	};
	
	--// Super Administrators - Add users to SyncAdmin with level 3 permissions
	SuperAdministrators = {
		{ Username = "GameOwner"; UserId = 1; };
	};
	
	--// Group Permissions - Add groups to your game who should receive administrator permissions
	GroupPermissions = {
		{ GroupId = 2849639; Moderator = 250; Administrator = 251; SuperAdministrator = 254; }; -- Example: Change the "255" to the role number this should apply to.
	};
	
	--// Banned - Add users who should be banned on your game
	Banned = {
		{ Username = "Noob"; UserId = 0; };
	};
}
