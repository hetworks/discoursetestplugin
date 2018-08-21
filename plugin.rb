# name: discoursetestplugin
# about: Discourse test plugin
# version: 0.0.3
# authors: Anne

register_javascript <<JS
$(document).ready(function() {
    console.log('js test in plugin.rb');
    var categories = [];
    $("table.category-list tbody tr").each(function() {
        var cat = {};
        var cattd = $(this).find('td').first();
        cat.id = $(this).attr('data-category-id');
        cat.color = cattd.css("border-left-color");
        cat.href = cattd.find('h3 a').attr('href');
        cat.name = cattd.find('h3 span.category-name').text();
        cat.image = cattd.find('img.category-logo');
        cat.description = cattd.find('div.category-description').text();
        categories.push(cat);
    });
    console.log(categories);
    $.each(categories, function(i,v) {
        $("body.navigation-categories .controls").append("<div class='cattegel-"+v.id+"'><a href='"+v.href+"'></a></div>");
        cattegel = $("div.cattegel-"+v.id+" a");
        cattegel.css("border-left-color", v.color);
        cattegel.append("<h3>"+v.name+"</h3>");
        cattegel.append("<img src='"+v.image+"' />");
    });

});
JS