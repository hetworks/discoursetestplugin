# name: discoursetestplugin
# about: Discourse test plugin
# version: 0.0.3
# authors: Anne

register_javascript <<JS
$(document).ready(function() {
    console.log('js test in plugin.rb');
    $(".controls").append("<p>Hier een blokje dingetjes</p>");
});
JS