'use strict'
function Display(images, audio, func){

	console.log('inn í disp constructor');

	var pos = [[1,2],[1,2]];
	this.Buttons.push(new Button(images, audio, pos, func));
	this.Buttons.push(new Button(images, audio, pos, func));
	this.Buttons.push(new Button(images, audio, pos, func));
	this.Buttons.push(new Button(images, audio, pos, func));
	this.Buttons.push(new Button(images, audio, pos, func));

	//implement plz
}

Display.prototype.Buttons = [];
Display.prototype.image = undefined;


Display.prototype.render = function(){
	//implements plz
};
