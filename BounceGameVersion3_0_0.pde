import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer BGM[] = new AudioPlayer[10];
void settings() {
	size(displayWidth, displayHeight);
}


void setup() {
	minim = new Minim(this);
	BGM[0] = minim.loadFile("BGM.mp3");
	BGM[1] = minim.loadFile("BGM.mp3");
	control = new GameControl();
	setting = new GameSetting();
}

GameControl control;
GameSetting setting;
Bounce bounce;

void draw() {
	control.Output();
}

void mousePressed() {
	control.Mouse();
}

void keyPressed() {
	control.Key();
}

void stop() {
	for (int i = 0;i < BGM.length;i++) {
		BGM[i].close();
	}
	minim.stop();
	super.stop();
}
