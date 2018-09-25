# name: discoursetestplugin
# about: Discourse test plugin
# version: 0.0.5
# authors: Anne

register_javascript <<JS
fullscreenbtn = document.getElementById("fullscreenbtn");
fullscreenbtn.addEventListener("click",toggleFullScreen,false);
function toggleFullScreen(){
     if (vid.requestFullScreen){
	  vid.requestFullScreen();
     } else if (vid.webkitRequestFullScreen){
	  vid.webkitRequestFullScreen();
     } else if (vid.mozRequestFullScreen){
	  vid.mozRequestFullScreen();
     }
}

$(document).ready(function() {
    $(".banner-box").hide();
    $("html.anon .banner-box").show();
/*
    var categories = [];
    $("table.category-list tbody tr").each(function() {
        var cat = {};
        var cattd = $(this).find('td').first();
        cat.id = $(this).attr('data-category-id');
        cat.color = cattd.css("border-left-color");
        cat.href = cattd.find('h3 a').attr('href');
        cat.name = cattd.find('h3 span.category-name').text();
        cat.image = cattd.find('img.category-logo').attr('src');
        cat.description = cattd.find('div.category-description').text();
        categories.push(cat);
    });

    $.each(categories, function(i,v) {
        $("body.navigation-categories .controls").append("<div class='cattegel-"+v.id+"'><a href='"+v.href+"'></a></div>");
        cattegel = $("div.cattegel-"+v.id+" a");
        cattegel.css("border-left-color", v.color);
        cattegel.append("<h3>"+v.name+"</h3>");
        cattegel.append("<img src='"+v.image+"' />");
    });
*/
});
JS
register_css <<CSS

div[class^="cattegel-"] {
    display: inline-block;
    width: 20%;
    margin: 10px 5% 10px 0;
    text-align: center;
}

div[class^="cattegel-"] a {
    width: 100%;
    height: 100%;
    display: block;
    padding: 40px 10px;
    border: 1px solid grey;
    border-left-width: 20px;
}

div[class^="cattegel-"] h3 {
    color: black;
    font-size: 1.3195em;

}
CSS
