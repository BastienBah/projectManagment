// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require_tree .
//= require jquery
//= require jquery_ujs


  $(document).ready(function() {
    $('.dropdown').select2();
  });

//enable or disable fields for licence precision
function enable_disable_licence() {

  var licence_type = document.getElementById("licence_type");
  var licence_date = document.querySelectorAll('.form-control.date')
  if(licence_type.disabled == false){
    licence_type.disabled = true;
    Array.from(licence_date).forEach(function(el) {
      el.disabled = true;
    })
  }else{
    licence_type.disabled = false;
    Array.from(licence_date).forEach(function(el) {
      el.disabled = false;
    })
  }
}

//enable or disable fields for licence precision
function enable_disable_teamviewer() {

  var login = document.getElementById("teamviewer_login");
  var password = document.getElementById("teamviewer_pass");
  if(login.disabled == false){
    login.disabled = true;
    password.disabled = true;
  }else{
    login.disabled = false;
    password.disabled = false;
  }
}