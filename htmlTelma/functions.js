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

    if(h < 33){
    	document.getElementsByClassName('active')[0].setAttribute( 'class', ' ' );
    	document.getElementById('aHome').setAttribute( 'class', 'active' );

    } else if ( h >= 33 && h < 66){

    	document.getElementsByClassName('active')[0].setAttribute( 'class', ' ' );
    	document.getElementById('aVideo').setAttribute( 'class', 'active' );

    } else if ( h >= 66 && h < 100){

    	document.getElementsByClassName('active')[0].setAttribute( 'class', ' ' );
    	document.getElementById('aScreenshots').setAttribute( 'class', 'active' );

    } else if ( h >= 100){

    	document.getElementsByClassName('active')[0].setAttribute( 'class', ' ' );
    	document.getElementById('aAbout').setAttribute( 'class', 'active' );

    }

    
}, false)