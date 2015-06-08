// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

$(function(){
  $(".col-md-6").each(function(){
    var random = Math.random();
    console.log(random);
    if (random < 0.25) {
      $(this).addClass("primary");
    }
    else if (random > 0.25 && random < 0.5) {
      $(this).addClass("success");
    }
    else if (random > 0.5 && random < 0.75) {
      $(this).addClass("warning");
    }
    else {
      $(this).addClass("danger");
    }
  })
});
