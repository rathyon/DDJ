function changeClass(what){

	document.getElementsByClassName('active')[0].setAttribute( 'class', ' ' );


	what.setAttribute( 'class', 'active' );
 

}

function getDocHeight() {
    var D = document;
    return Math.max(
        D.body.scrollHeight, D.documentElement.scrollHeight,
        D.body.offsetHeight, D.documentElement.offsetHeight,
        D.body.clientHeight, D.documentElement.clientHeight
    )
}

function amountscrolled(){
    var winheight= window.innerHeight || (document.documentElement || document.body).clientHeight;
    var docheight = getDocHeight();
    var scrollTop = window.pageYOffset || (document.documentElement || document.body.parentNode || document.body).scrollTop;
    var trackLength = docheight - winheight;
    var pctScrolled = Math.floor(scrollTop/trackLength * 100);
    return pctScrolled;
}
 
window.addEventListener("scroll", function(){
    var h = amountscrolled();

    console.log(h);

    if(h < 33){
    	console.log('home');

    	document.getElementsByClassName('active')[0].setAttribute( 'class', ' ' );
    	document.getElementById('aHome').setAttribute( 'class', 'active' );

    } else if ( h >= 33 && h < 66){
    	console.log('shots');

    	document.getElementsByClassName('active')[0].setAttribute( 'class', ' ' );
    	document.getElementById('aScreenshots').setAttribute( 'class', 'active' );

    } else if ( h >= 66 && h < 100){
    	console.log('video');

    	document.getElementsByClassName('active')[0].setAttribute( 'class', ' ' );
    	document.getElementById('aVideo').setAttribute( 'class', 'active' );

    } else if ( h >= 100){
    	console.log('about');

    	document.getElementsByClassName('active')[0].setAttribute( 'class', ' ' );
    	document.getElementById('aAbout').setAttribute( 'class', 'active' );

    }

    
}, false)