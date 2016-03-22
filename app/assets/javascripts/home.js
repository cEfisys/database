//$(document).ready(function(){
//    setBindings();
//});
//function setBindings(){
//
//    $("nav a").click(function(e){
//        e.preventDefault(); // Prevent tags session from working. Stops the anchors texts
//        var sessionID =e.currentTarget.id+ "Section";
//        $("html body").animate({
//            scrollTop: $('#' + sessionID).offset().top
//        },5000)
//    })
//}
$('body').scrollspy({ target: '#navbar-example' })
