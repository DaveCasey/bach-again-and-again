// =======
// STEP 1
// =======
"bach-again-midi.scd".loadRelative;

// =======
// STEP 2
// =======
// CHOOSE YOUR PLAYER (pick one and comment it out, RUN this line):
~myScore = ~sopranoScore;

// ~myScore = ~altoScore;
// ~myScore = ~tenorScore;
// ~myScore = ~bassScore;

// =======
// STEP 3
// =======
// GO CONNECT STUFF TO YOSHIMI IN JACK MIDI TAB
//
// nanoKONTROL --> Yoshimi
// AND
// SuperCollider --> Yoshimi
//
// Then Run this
m.control(chan: 0, ctlNum: 16, val: 0);

// =======
// STEP 4
// =======
// Use this line to START playing
~myPlayer = ~myScore.play;

// Use this line to STOP playing (and/or K6 volume down manually)
~myPlayer.stop;