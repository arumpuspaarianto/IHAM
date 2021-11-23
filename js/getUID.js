$(document).ready(function(){
  document.getElementById("getUIDbtn").click(function(){
      done();
  });
});

 function done() {
   setTimeout( function() { 
   updates(); 
   done();
   }, 200);
 }
  
 function updates() {
  $.getJSON("getGrafikData.php", function(data) {
    document.getElementById("uidInput").setAttribute('value',this['rfid_uid']);
    $.each(data.result, function(){
     document.getElementById("uidInput").setAttribute('value',this['rfid_uid']);
    });
  });
 }