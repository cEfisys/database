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
$('body').scrollspy({ target: '#navbar-example',duration:1000 })
/* my "Go To Top" link element */
var link = document.id('gototop');
/* scrollspy instance */
var ss = new ScrollSpy({
    min: 300,
    onEnter: function() {
        link.fade('in'); //show the "Go To Top" link
    },
    onLeave: function() {
        link.fade('out'); //hide the "Go To Top" link
    }
});