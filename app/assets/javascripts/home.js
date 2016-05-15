//$(document).ready(function(){
//    setBindings();
//});
//function setBindings(){
//
//    $("nav a").click(function(e){
//       // e.preventDefault(); // Prevent tags session from working. Stops the anchors texts
//        var sessionID =e.currentTarget.id+ "Section";
//        $("html body").animate({
//            scrollTop: $('#' + sessionID).offset().top
//        },5000)
//    })
//}
//$('body').scrollspy({ target: '#navbar-example',duration:10 })
/*$('[data-spy="scroll"]').each(function () {
    var $spy = $(this).scrollspy('refresh')
})*/
/*$('#nav').onePageNav({
    currentClass: 'current',
    changeHash: false,
    scrollSpeed: 750
 });

$(window).scroll(function() {
  if ($(document).scrollTop() > 50) {
    $('nav').addClass('shrink');
  } else {
    $('nav').removeClass('shrink');
  }
});

 /*
  **********************************************************
  * OPAQUE NAVBAR SCRIPT
  **********************************************************
  */

  // Toggle tranparent navbar when the user scrolls the page

  /*
  **********************************************************
  * OPAQUE NAVBAR SCRIPT
  **********************************************************
  */

  // Toggle tranparent navbar when the user scrolls the page

  $(window).scroll(function() {
    if($(this).scrollTop() > 50)  /*height in pixels when the navbar becomes non opaque*/ 
    {
        $('.opaque-navbar').addClass('opaque');
    } else {
        $('.opaque-navbar').removeClass('opaque');
    }
});