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
        cat.color = cattd.css("border-left-color");
        cat.href = cattd.find('h3 a').attr('href');
        cat.name = cattd.find('h3 span.category-name').html();
        cat.description = cattd.find('div.category-description').html();
        categories.push(cat);
    });
    console.log(categories);
    $("body.navigation-categories .controls").append("<p>Hier een blokje dingetjes</p>");
});
JS