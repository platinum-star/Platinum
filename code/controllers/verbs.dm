//TODO: rewrite and standardise all controller datums to the datum/controller type
//TODO: allow all controllers to be deleted for clean restarts (see WIP master controller stuff) - MC done - lighting done


/client/proc/restart_controller(controller in list("Master", "Failsafe"))
	set category = "Debug"
	set name = "Restart Controller"
	set desc = "Restart one of the various periodic loop controllers for the game (be careful!)"

	if(!holder)
		return
	switch(controller)
		if("Master")
			Recreate_MC()
			feedback_add_details("admin_verb","RMaster")
		if("Failsafe")
			new /datum/controller/failsafe()
			feedback_add_details("admin_verb","RFailsafe")

	message_admins("Admin [key_name_admin(usr)] has restarted the [controller] controller.")

/client/proc/debug_controller(controller in list("failsafe", "Master", "Ticker", "Air", "Jobs", "Sun", "Radio", "Configuration", "pAI",
	"Cameras", "Garbage", "Event", "Alarm", "Nano", "Vote", "Fires",
	"Mob", "NPC Pool", "Shuttle", "Timer", "Weather", "Space", "Mob Hunt Server","Input"))
	set category = "Debug"
	set name = "Debug Controller"
	set desc = "Debug the various periodic loop controllers for the game (be careful!)"

	if(!holder)	return
	switch(controller)
		if("failsafe")
			debug_variables(Failsafe)
			feedback_add_details("admin_verb", "dfailsafe")
		if("Master")
			debug_variables(Master)
			feedback_add_details("admin_verb","Dsmc")
		if("Ticker")
			debug_variables(SSticker)
			feedback_add_details("admin_verb","DTicker")
		if("Air")
			debug_variables(SSair)
			feedback_add_details("admin_verb","DAir")
		if("Jobs")
			debug_variables(SSjobs)
			feedback_add_details("admin_verb","DJobs")
		if("Sun")
			debug_variables(SSsun)
			feedback_add_details("admin_verb","DSun")
		if("Radio")
			debug_variables(SSradio)
			feedback_add_details("admin_verb","DRadio")
		if("Configuration")
			debug_variables(config)
			feedback_add_details("admin_verb","DConf")
		if("pAI")
			debug_variables(paiController)
			feedback_add_details("admin_verb","DpAI")
		if("Cameras")
			debug_variables(cameranet)
			feedback_add_details("admin_verb","DCameras")
		if("Garbage")
			debug_variables(SSgarbage)
			feedback_add_details("admin_verb","DGarbage")
		if("Event")
			debug_variables(SSevents)
			feedback_add_details("admin_verb","DEvent")
		if("Alarm")
			debug_variables(SSalarms)
			feedback_add_details("admin_verb", "DAlarm")
		if("Nano")
			debug_variables(SSnanoui)
			feedback_add_details("admin_verb","DNano")
		if("Vote")
			debug_variables(SSvote)
			feedback_add_details("admin_verb","DVote")
		if("Fires")
			debug_variables(SSfires)
			feedback_add_details("admin_verb","DFires")
		if("Mob")
			debug_variables(SSmobs)
			feedback_add_details("admin_verb","DMob")
		if("NPC Pool")
			debug_variables(SSnpcpool)
			feedback_add_details("admin_verb","DNPCPool")
		if("Shuttle")
			debug_variables(SSshuttle)
			feedback_add_details("admin_verb","DShuttle")
		if("Timer")
			debug_variables(SStimer)
			feedback_add_details("admin_verb","DTimer")
		if("Weather")
			debug_variables(SSweather)
			feedback_add_details("admin_verb","DWeather")
		if("Space")
			debug_variables(space_manager)
			feedback_add_details("admin_verb","DSpace")
		if("Mob Hunt Server")
			debug_variables(SSmob_hunt)
			feedback_add_details("admin_verb","DMobHuntServer")
		if("Input")
			debug_variables(SSinput)
			feedback_add_details("admin_verb","DInput")

	message_admins("Admin [key_name_admin(usr)] is debugging the [controller] controller.")