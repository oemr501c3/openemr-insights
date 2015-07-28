

var initializeDate = function () {
    
    clearTimeout(timeout);
    
    var start_date  = new String(),
        end_date    = new String(),
        date        = new Date(),
        month       = date.getMonth(),
        year        = date.getFullYear(),
        range       = [];
    
    //Account for new year
    if (month == 0)
        year = year - 1;

    //Account for 0 month in new year
    if (month == 0)
        month = 12;

    //Make 2 digit month
    if (month < 10)
        month = "0" + month;

    //Create default date
    start_date  = year + "-" + month + "-" + "01";
    end_date    = year + "-" + month + "-" + new Date(year, month, 0).getDate();

    Dashboards.fireChange("start_date_param", start_date);
    Dashboards.fireChange("end_date_param", end_date);
    
    console.log(start_date); 
    console.log(end_date); 
    
}
var timeout = setTimeout(function(){ initializeDate() }, 100);

var fireDateRange = function() {
    
    date_range_param = [start_date_param,end_date_param];

    Dashboards.fireChange("date_range_param", date_range_param);

    $( "#date_range_div" ).prepend( "From: " );  

    return date_range_param;

}; 

var toggleBTableDiv = function ( row_count, ids ) {

    if (parseInt(row_count) == 0) {
        
        $(ids).hide();
        $('#no_results_found_div').fadeIn();
    
    } else {

        $('#no_results_found_div').hide();
        $(ids).show();
    
    }
}

