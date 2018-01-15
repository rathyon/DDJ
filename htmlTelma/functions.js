function changeClass(what){

	console.log(document.getElementsByClassName('active'));

	document.getElementsByClassName('active')[0].setAttribute( 'class', ' ' );


	what.setAttribute( 'class', 'active' );


   
}