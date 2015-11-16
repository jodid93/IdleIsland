

// ========
// gameEngine
// ========
/*

The mainloop is one big object with a fairly small public interface
(e.g. init, iter, gameOver), and a bunch of private internal helper methods.

The "private" members are identified as such purely by the naming convention
of having them begin with a leading underscore. A more robust form of privacy,
with genuine name-hiding *is* possible in JavaScript (via closures), but I
haven't adopted it here.

*/
var g_canvas = document.getElementById("myCanvas");
var g_ctx = g_canvas.getContext("2d");

function AudioPreload(){
	console.log('load audio')
	return 'audio'
	//implementa	
}

function imagePreload(){

	console.log('load imgs')
	return 'image'
	//implementa
}

function init(){
	console.log('starting');

	var images = imagePreload();
	var audio = AudioPreload();
	console.log('preload done');
	var leikur = new gameEngine(images, audio);
	console.log('game engine done');
	leikur.Loop();

}


//Starting point of the game
init();