var eng1fuelon = func { 
	var key2="engines/engine[0]";
	var serviceable=getprop(key2~"/serviceable");

	if (serviceable) {	
		setprop("/controls/engines/engine[0]/cutoff", 0); 
		gui.popupTip("Engine 1 started");
	} else {
		gui.popupTip("Engine 1 not serviceable");
	}
}

var eng1fueloff = func { 
	setprop("/controls/engines/engine[0]/cutoff", 1); 
	gui.popupTip("Engine 1 stopped");
}

var eng2fuelon = func { 
	var key2="engines/engine[1]";
	var serviceable=getprop(key2~"/serviceable");

	if (serviceable) {	
		setprop("/controls/engines/engine[1]/cutoff", 0); 
		gui.popupTip("Engine 2 started");
	} else {
		gui.popupTip("Engine 2 not serviceable");
	}		
}

var eng2fueloff = func { 
	setprop("/controls/engines/engine[1]/cutoff", 1); 
	gui.popupTip("Engine 2 stopped");
}

var eng3fuelon = func { 
	var key2="engines/engine[2]";
	var serviceable=getprop(key2~"/serviceable");

	if (serviceable) {	
		setprop("/controls/engines/engine[2]/cutoff", 0); 
		gui.popupTip("Engine 3 started");
	} else {
		gui.popupTip("Engine 3 not serviceable");
	}		
}

var eng3fueloff = func { 
	setprop("/controls/engines/engine[2]/cutoff", 1); 
	gui.popupTip("Engine 3 stopped");
}

var eng4fuelon = func { 
	var key2="engines/engine[3]";
	var serviceable=getprop(key2~"/serviceable");

	if (serviceable) {	
		setprop("/controls/engines/engine[3]/cutoff", 0); 
		gui.popupTip("Engine 4 started");
	} else {
		gui.popupTip("Engine 4 not serviceable");
	}		
}

var eng4fueloff = func { 
	setprop("/controls/engines/engine[3]/cutoff", 1); 
	gui.popupTip("Engine 4 stopped");
}

var eng5fuelon = func { 
	var key2="engines/engine[4]";
	var serviceable=getprop(key2~"/serviceable");

	if (serviceable) {	
		setprop("/controls/engines/engine[4]/cutoff", 0); 
		gui.popupTip("Engine 5 started");
	} else {
		gui.popupTip("Engine 5 not serviceable");
	}		
}

var eng5fueloff = func { 
	setprop("/controls/engines/engine[4]/cutoff", 1); 
	gui.popupTip("Engine 5 stopped");
}

var eng6fuelon = func { 
	var key2="engines/engine[5]";
	var serviceable=getprop(key2~"/serviceable");

	if (serviceable) {	
		setprop("/controls/engines/engine[5]/cutoff", 0); 
		gui.popupTip("Engine 6 started");
	} else {
		gui.popupTip("Engine 6 not serviceable");
	}		
}

var eng6fueloff = func { 
	setprop("/controls/engines/engine[5]/cutoff", 1); 
	gui.popupTip("Engine 6 stopped");
}

var eng1starter = func { 
	setprop("/controls/engines/engine[0]/starter", 1); 
}

var eng2starter = func { 
	setprop("/controls/engines/engine[1]/starter", 1); 
}

var eng3starter = func { 
	setprop("/controls/engines/engine[2]/starter", 1); 
}

var eng4starter = func { 
	setprop("/controls/engines/engine[3]/starter", 1); 
}

var eng5starter = func { 
	setprop("/controls/engines/engine[4]/starter", 1); 
}

var eng6starter = func { 
	setprop("/controls/engines/engine[5]/starter", 1); 
}

var eng1start = func {
	eng1fueloff();
	eng1starter();
	settimer(eng1fuelon, 12);
}

var eng2start = func {
	eng2fueloff();
	eng2starter();
	settimer(eng2fuelon, 12);
};

var eng3start = func {
	eng3fueloff();
	eng3starter();
	settimer(eng3fuelon, 12);
};

var eng4start = func {
	eng4fueloff();
	eng4starter();
	settimer(eng4fuelon, 12);
};

var eng5start = func {
	eng5fueloff();
	eng5starter();
	settimer(eng5fuelon, 12);
};

var eng6start = func {
	eng6fueloff();
	eng6starter();
	settimer(eng6fuelon, 12);
};

var engstart = func {
	settimer(eng1start, 2);
	settimer(eng2start, 8);
	settimer(eng3start, 14);
	settimer(eng4start, 20);
	settimer(eng5start, 26);
	settimer(eng6start, 32);
}

var engstop = func {
	eng1fueloff();
	eng2fueloff();
	eng3fueloff();
	eng4fueloff();
	eng5fueloff();
	eng6fueloff();
}

var autostart = func {
	var startstatus = getprop("/sim/autostart/started");
	if ( startstatus == 0 ) {
		gui.popupTip("Autostarting...");
		setprop("/sim/autostart/started", 1);
		setprop("/controls/electric/battery-switch", 1);
		settimer(engstart, 0.5);
		gui.popupTip("Starting Engines");
	}
	if ( startstatus == 1 ) {
		gui.popupTip("Shutting Down...");
		setprop("/sim/autostart/started", 0);
		engstop();
	}
}

var checkThrottle1=func {
	var key1="controls/engines/engine[0]";
	var key2="engines/engine[0]";
	var throttle=getprop(key1~"/throttle");
	var serviceable=getprop(key2~"/serviceable");

	if (serviceable) {
		if (throttle>0.80) {
			setprop(key2~"/augmentation", 'true');
			setprop(key2~"/afterburner", 'true');
		} else {
			setprop(key2~"/augmentation", 'false');
			setprop(key2~"/afterburner", 'false');
		}
	
		if (throttle>0.90) {
			setprop(key2~"/water-injection", 'true');
		} else {
			setprop(key2~"/water-injection", 'false');
		}
	}
}

var checkThrottle2=func {
	var key1="controls/engines/engine[1]";
	var key2="engines/engine[1]";
	var throttle=getprop(key1~"/throttle");
	var serviceable=getprop(key2~"/serviceable");

	if (serviceable) {
		if (throttle>0.90) {
			setprop(key2~"/augmentation", 'true');
			setprop(key2~"/afterburner", 'true');
		} else {
			setprop(key2~"/augmentation", 'false');
			setprop(key2~"/afterburner", 'false');
		}

		if (throttle>0.95) {
			setprop(key2~"/water-injection", 'true');
		} else {
			setprop(key2~"/water-injection", 'false');
		}
	}
}

var eng1throttle_listener=setlistener("controls/engines/engine[0]/throttle", checkThrottle1);
var eng2throttle_listener=setlistener("controls/engines/engine[1]/throttle", checkThrottle2);
### The trents have no afterburners, so no check for that here ###

