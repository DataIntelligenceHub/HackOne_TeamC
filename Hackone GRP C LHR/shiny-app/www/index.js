$(document).ready(function() {
  
  //$(document.body).preappend('');
  $('.col-sm-8').html('<img id="logo" src = "logo.png" />');
  $('#logo').css({
    "width": "55px",
    "margin-top": "-83px",
    "margin-left": "-450px",
    "background": "black"
  });
  $('h1').css("margin-left", "70px");
  $(document.body).append('<div id="loader"><img id="loading" src="gears.gif" style="display: none; margin-left: 20px;" /></div><div id="result"></div>');
  $(document).on('click', '#submit', function(e) {

    e.preventDefault();
    $('#loading').css("display", "block");
    var num_rooms = $('#rooms').val();

    var appl = $('#kw_num').val();

    var type = $('#type').val();

    var main_data = {
                    "Inputs": {
                      "input1": {
                        "ColumnNames": [
                          "Column 0",
                          "X",
                          "Sr_.no_",
                          "Urban_Peri.Urban",
                          "Province",
                          "city",
                          "Region",
                          "District",
                          "Belts",
                          "gps_lat",
                          "gps_lang",
                          "gender",
                          "fem_mem_grp",
                          "home_type",
                          "no_of_rooms",
                          "owenership_status",
                          "edu_level",
                          "Amount",
                          "ES20",
                          "Repairing.House_Rent",
                          "Food",
                          "Lightning_Energy_Fuel",
                          "Transport",
                          "Clothes",
                          "Health.care",
                          "srcofenergy",
                          "winter",
                          "summer",
                          "alt_sources",
                          "low_kw_app",
                          "med_kw_app",
                          "high_kw_app"
                        ],
                        "Values": [
                          [
                            "0",
                            "0",
                            "0",
                            type,
                            "value",
                            "value",
                            "value",
                            "value",
                            "value",
                            "0",
                            "0",
                            "value",
                            "0",
                            "value",
                            num_rooms,
                            "value",
                            "value",
                            "0",
                            "0",
                            "0",
                            "0",
                            "0",
                            "0",
                            "0",
                            "0",
                            "0",
                            "0",
                            "0",
                            "0",
                            "0",
                            "0",
                            appl
                          ]
                        ]
                      }
                    },
                    "GlobalParameters": {}
                  };

    var api_key = "BIXXFkGCdtOm4/iivCURYums5e3JQlW3XHdYI7pFtw7QKVS11ZHeRHXety6mn+/kQtjAGefcn5uiPmzzf7eQbQ==";

    var azure_url = "https://ussouthcentral.services.azureml.net/workspaces/94f467a0e00c486a870b9fa49fa7a644/services/1be8e3de22894aa7b5e5e7662b8e1824/execute?api-version=2.0&details=true";

    $.ajax({

      url: azure_url,
      headers: {
        "Accept": "application/json",
        "Authorization":"Bearer " + api_key,
        //"Content-Length": "1000",
        "Content-Type": "application/json"
      },

      type: 'POST',
      data: JSON.stringify(main_data),
      dataType: 'json',
      
      success: function(res) {
        $('#loading').css("display", "none");
        var new_bill = res;
        
        //console.log(new_bill.Results.output1.value.Values[4]);
        var col_val = new_bill.Results.output1.value.Values[0];
        console.log(col_val[4]);
        $('#result').html("<div class='container' style='margin-left: 20px;'> <div class='row'> <h3>Your expected bill is: </h3>"+Math.round(col_val[4])+ " PKR. </div></div>");
      }

    });

  });

});
