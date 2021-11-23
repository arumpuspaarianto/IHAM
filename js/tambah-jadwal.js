function getDokter() {
    $("#loaderIcon").show();
    jQuery.ajax(
    {
        url: "getDokter.php",
        data:'uid_jadwaldok='+$("#uid_jadwaldok").val(),
        type: "POST",
        success:function(data)
        {
            $("#get_data_dokter").html(data);
            $("#loaderIcon").hide();
        },
            error:function (){}
        }); 
    }