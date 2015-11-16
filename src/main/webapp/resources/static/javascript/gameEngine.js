function gameEngine(image, audio){
	console.log('inn í gameEngine constructor');

	this.calculator = new Calculator();

	this.databaseConnector = new DBconnector();

	this.displays.push(new Display(image, audio, this.receiveInput));

	this.displays.push(new Display(image, audio, this.render));

	return this;

	//implementa calculator, userdata, databaseConnector og display
}

gameEngine.prototype.userData = undefined;

gameEngine.prototype.calculator = undefined;
gameEngine.prototype.dataBaseConnectot = undefined;

gameEngine.prototype.displayScreen = 0;
gameEngine.prototype.displays = [];

gameEngine.prototype.isMuted = false;




gameEngine.prototype.calculate = function(time){

    console.log('innn í calculate',time);
	//implementa hvað calculator þarf að gera
}

gameEngine.prototype.saveUserData = function(){
	//implementa 
}

gameEngine.prototype.render = function(display){
     console.log('innn í render');
	//implementa
}

gameEngine.prototype.receiveInputs = function(display){
     console.log('innn í receiveinput');
	//implementa
}

gameEngine.prototype.buyUpgrade = function(index){
	//implementa
}

gameEngine.prototype.punch = function(factor){
	//implementa
}

gameEngine.prototype.chanceDisplay = function(display){
	this.displayScreen = display;
}

gameEngine.prototype.exit = function(){
	//implementa
}


/////////////////////////////////////////////////
// GAME LOOP SECTION
/////////////////////////////////////////////////
gameEngine.prototype._frameTime_ms = null;
gameEngine.prototype._frameTimeDelta_ms = null;

// Perform one iteration of the mainloop
gameEngine.prototype.iter = function (frameTime) {

    // Use the given frameTime to update all of our game-clocks
    this._updateClocks(frameTime);

    // Perform the iteration core to do all the "real" work
    this._iterCore(this._frameTimeDelta_ms);
};

gameEngine.prototype._updateClocks = function (frameTime) {

    // First-time initialisation
    if (this._frameTime_ms === null) this._frameTime_ms = frameTime;

    // Track frameTime and its delta
    this._frameTimeDelta_ms = frameTime - this._frameTime_ms;
    this._frameTime_ms = frameTime;
};

gameEngine.prototype._iterCore = function (dt) {

    this.calculate(dt);

    this.receiveInputs();
    
    this.render();

    this.Loop();
};


// Annoying shim for Firefox and Safari
window.requestAnimationFrame =
    window.requestAnimationFrame ||        // Chrome
    window.mozRequestAnimationFrame ||     // Firefox
    window.webkitRequestAnimationFrame;    // Safari

// This needs to be a "global" function, for the "window" APIs to callback to
function mainIterFrame(frameTime) {
    gameEngine.prototype.iter(frameTime);
}

gameEngine.prototype._requestNextIteration = function () {
    window.requestAnimationFrame(mainIterFrame);
};


gameEngine.prototype.Loop = function () {

    // Grabbing focus is good, but it sometimes screws up jsfiddle,
    // so it's a risky option during "development"
    //
    //window.focus(true);

    // We'll be working on a black background here,
    // so let's use a fillStyle which works against that...
    //
    g_ctx.fillStyle = "blue";

    this._requestNextIteration();
};



//////////////////////////////////////////////////////
// END OF GAME LOOP SECTION
//////////////////////////////////////////////////////
