(

// LOAD MIDI STUFF

~soprano = [72, 67, 72, 72, 70, 70, 69, 67, 63, 67, 65, 63, 62, 63, 62, 60];
~alto = [63, 62, 66, 67, 69, 69, 66, 62, 60, 60, 62, 59, 60, 60, 59, 55];
~tenor = [55, 58, 60, 63, 62, 62, 63, 62, 60, 59, 60, 55, 56, 57, 55, 55, 53, 51];
~bass = [48, 46, 45, 54, 55, 48, 50, 43, 56, 51, 53, 54, 55, 43, 48];

~minDur = 2;
~maxDur = 8;

if(
	MIDIClient.initialized==false,
	{
		MIDIClient.init;
		"done initializing midi".postln;
		m = MIDIOut(0);
		"done creating MIDIOut".postln;
		m.control(0, 16, 0);
		"done sending out a control message".postln;
	},
	{ "MIDI is up and running".postln }
);

~sopranoScore = Pbind(
	\type, \midi,
	\midinote, Pseq(~soprano, inf) + [0, 12],
	\dur, Pwhite(~minDur, ~maxDur),
	\midiout, m,
	\legato, 1
);

~altoScore = Pbind(
	\type, \midi,
	\midinote, Pseq(~alto, inf) + [0, 12],
	\dur, Pwhite(~minDur, ~maxDur),
	\midiout, m,
	\legato, 1
);

~tenorScore =Pbind(
	\type, \midi,
	\midinote, Pseq(~tenor, inf),
	\dur, Pwhite(~minDur, ~maxDur),
	\midiout, m,
	\legato, 1
);

~bassScore = Pbind(
	\type, \midi,
	\midinote, Pseq(~bass, inf) + Prand([0, -12], inf),
	\dur, Pwhite(~minDur, ~maxDur),
	\midiout, m,
	\legato, 1
);

"yoshimi --state=/home/ruviaro/Desktop/bachagainfiles/yoshimi-bach.state".unixCmd;
);





