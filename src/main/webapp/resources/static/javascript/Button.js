
Button.prototype.position = undefined;
Button.prototype.image = undefined;
Button.prototype.audio = undefined;
Button.prototype.actionFunc = undefined;

function Button(pos, img, audio, actionFunc){

	console.log('inn i button constr');
	//implement plz
}


Button.prototype.render = function(){
	//implement plz
};

Button.prototype.action = function(){
	//implement plz
};

Button.prototype.getPosition = function(){
	return this.position;
}

Button.prototype.getImage = function(){
	return this.image;
}

Button.prototype.getAudioPath = function(){
	//implement plz
}