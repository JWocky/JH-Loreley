var checkPayload0=func {
	# pylon 1l - no options	
	setprop("payload/weight[0]/weight-lb", 0);
	setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[0]", 0);
}

var checkPayload1=func {
	# pylon 2l - no options	
	setprop("payload/weight[1]/weight-lb", 0);
	setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[1]", 0);
}

var checkPayload2=func {
	# pylon 3l - none or RR800

	var select=getprop("payload/weight[2]/selected");

	if (select==getprop("payload/weight[2]/opt[0]/name")) {
		setprop("payload/weight[2]/weight-lb", getprop("payload/weight[2]/opt[0]/lbs"));
		setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[2]", getprop("payload/weight[2]/opt[0]/lbs"));
	}

	if (select==getprop("payload/weight[2]/opt[1]/name")) {
		setprop("payload/weight[2]/weight-lb", getprop("payload/weight[2]/opt[1]/lbs"));
		setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[2]", getprop("payload/weight[2]/opt[1]/lbs"));
	}	
}

var checkPayload3=func {
	# pylon 4l - none or RR1000

	var select=getprop("payload/weight[3]/selected");

	if (select==getprop("payload/weight[3]/opt[0]/name")) {
		setprop("payload/weight[3]/weight-lb", getprop("payload/weight[3]/opt[0]/lbs"));
		setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[3]", getprop("payload/weight[3]/opt[0]/lbs"));
	}

	if (select==getprop("payload/weight[3]/opt[1]/name")) {
		setprop("payload/weight[3]/weight-lb", getprop("payload/weight[3]/opt[1]/lbs"));
		setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[3]", getprop("payload/weight[3]/opt[1]/lbs"));
	}	
}

var checkPayload4=func {
	# pylon 5l - no options	
	setprop("payload/weight[4]/weight-lb", 0);
	setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[4]", 0);
}

var checkPayload5=func {
	# pylon c - no options	
	setprop("payload/weight[5]/weight-lb", 0);
	setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[5]", 0);
}

var checkPayload6=func {
	# pylon 5r - no options	
	setprop("payload/weight[6]/weight-lb", 0);
	setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[6]", 0);
}

var checkPayload7=func {
	# pylon 4r - none or RR1000

	var select=getprop("payload/weight[7]/selected");

	if (select==getprop("payload/weight[7]/opt[0]/name")) {
		setprop("payload/weight[7]/weight-lb", getprop("payload/weight[7]/opt[0]/lbs"));
		setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[7]", getprop("payload/weight[7]/opt[0]/lbs"));
	}

	if (select==getprop("payload/weight[7]/opt[1]/name")) {
		setprop("payload/weight[7]/weight-lb", getprop("payload/weight[7]/opt[1]/lbs"));
		setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[7]", getprop("payload/weight[7]/opt[1]/lbs"));
	}	
}

var checkPayload8=func {
	# pylon 3r - none or RR800

	var select=getprop("payload/weight[8]/selected");

	if (select==getprop("payload/weight[8]/opt[0]/name")) {
		setprop("payload/weight[8]/weight-lb", getprop("payload/weight[8]/opt[0]/lbs"));
		setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[8]", getprop("payload/weight[8]/opt[0]/lbs"));
	}

	if (select==getprop("payload/weight[8]/opt[1]/name")) {
		setprop("payload/weight[8]/weight-lb", getprop("payload/weight[8]/opt[1]/lbs"));
		setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[8]", getprop("payload/weight[8]/opt[1]/lbs"));
	}	
}

var checkPayload9=func {
	# pylon 2r - no options	
	setprop("payload/weight[9]/weight-lb", 0);
	setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[9]", 0);
}

var checkPayload10=func {
	# pylon 1r - no options	
	setprop("payload/weight[10]/weight-lb", 0);
	setprop("/fdm/jsbsim/inertia/pointmass-weight-lbs[10]", 0);
}

var payload0_listener=setlistener("payload/weight[0]/selected", checkPayload0);
var payload1_listener=setlistener("payload/weight[1]/selected", checkPayload1);
var payload2_listener=setlistener("payload/weight[2]/selected", checkPayload2);
var payload3_listener=setlistener("payload/weight[3]/selected", checkPayload3);
var payload4_listener=setlistener("payload/weight[4]/selected", checkPayload4);
var payload5_listener=setlistener("payload/weight[5]/selected", checkPayload5);
var payload6_listener=setlistener("payload/weight[6]/selected", checkPayload6);
var payload7_listener=setlistener("payload/weight[7]/selected", checkPayload7);
var payload8_listener=setlistener("payload/weight[8]/selected", checkPayload8);
var payload9_listener=setlistener("payload/weight[9]/selected", checkPayload9);
var payload10_listener=setlistener("payload/weight[10]/selected", checkPayload10);

