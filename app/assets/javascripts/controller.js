// The controls are a series of tables in src/index.html.erb in the #classic_controls block
// This method attaches javascript function to those tables to trigger other jascript 
// methods in this file when they are clicked.
setUpControls = function() {

  // Manage the dropdown examples
  $(".newdropdown").click(function(event) {
    var d, o, space, t;
    event.preventDefault();
    t = $(event.target);
    d = $(t.data().dropdown);
    if (d.hasClass("showdropdown")) {
      return d.removeClass("showdropdown");
    } else {
      d.addClass("showdropdown");
      o = t.offset();
      o.top = o.top + t.height();
      space = $(document).width() - o.left - d.width();
      if (space < 0) {
        o.left = o.left + space;
      }
      return d.offset(o);
    }
  });

  // Set values of examples
  $(".examples").click(function(evt) {
    evt.preventDefault();
    // If it comes from a pathway then remove the path
    if (isPathway) {
      window.history.pushState('', '', removePath(window.location.href))
    }

    var choices_str = $(this).data("choices");
    var path = '/calculator/set_options'
    $('.showdropdown').removeClass("showdropdown");

    var letters_level = ["A","B","C","D"]
    var letter_to_level = {"A": 1, "B": 2, "C": 3, "D": 4}
    var choices_arr = choices_str.split("");
    var levers = $(".lever");

    // Manage the colors of selected choices
    for (var i = 0; i <= choices_arr.length - 1; i++) {
      if ($.inArray(choices_arr[i], letters_level) >= 0) {
        choices_arr[i] = letter_to_level[choices_arr[i]]
      } else {
        choices_arr[i] = parseInt(choices_arr[i])
      }
    }

    $.ajax({
      type: 'POST',
      url: path,
      data: {choices_str: choices_str},
      beforeSend: function() {
        
        // For each lever
        for (var i = 0; i <= levers.length - 1; i++ ) {

          var lever = jQuery(levers[i]);
          var options = lever.children("td.choice").children()
          var choice = choices_arr[i]
          options.removeClass();
          options.addClass("choiceLink tooltipclass");
          jQuery(options[choice-1]).addClass("selected");

          // For each option in lever
          for (var j = 0; j <= choice - 1; j++) {
            var option = jQuery(options[j])[0]
            option.className += " level" + choice;
          }
        }
        
        // Start spinner
        $.blockUI({ message: null, overlayCSS: { backgroundColor: '#D3D3D3', color: '#fff'} });
        spinner.spin(target);
      },
      success: function(response) {
        google.charts.setOnLoadCallback(drawCharts(response.data));
      },
      error: function(error) {
        alert("Error, por favor inténtelo denuevo");
      },
      complete: function() {
        // Stop spinner
        spinner.stop()
        $.unblockUI();
      }
    });
  });

  // Manage the levers change
  $(".choiceLink").click(function(evt) {
    evt.preventDefault();

    // If it comes from a pathway then remove the path
    if (isPathway) {
      window.history.pushState('', '', '/calculator')
    }

    var path = '/calculator/set_options'
    var $self = $(this);
    var $lever = $self.parents("tr").children("td.choice").children();
    var choice = $self.data("choicelevel");
    $lever.removeClass();
    $lever.addClass("choiceLink tooltipclass");
    $self.addClass("selected");

    // Construct the string choices
    var choices_arr = []
    $.each($("a.choiceLink.selected"), function(index, value) { choices_arr.push(value.attributes["data-choicelevel"].value) } );
    choices_str = choices_arr.toString().replace(/,/gi, "")


    $.ajax({
      type: 'POST',
      url: path, 
      data: {choices_str: choices_str}, 
      beforeSend: function() {

        for(var i = 0; i <= choice - 1; ++i) {
          $lever[i].className += " level" + choice;
        }
        // Start spinner
        $.blockUI({ message: null, overlayCSS: { backgroundColor: '#D3D3D3', color: '#fff'} });
        spinner.spin(target);

      },
      success: function(response) {
        google.charts.setOnLoadCallback(drawCharts(response.data));
      },
      error: function(error) {
        alert("Error, por favor inténtelo denuevo");
      },
      complete: function() {
        // Stop spinner
        spinner.stop()
        $.unblockUI();
      }
    });
  });

  // Manage the levers hover (not finished)
  // $(".name").hover(function(evt) {
  //   evt.preventDefault();

  //   var $lever = $(this).parent().children("td.choice").children();
  //   var $choice = $(this).parent().children("td.choice").find(".selected");
  //   var choicelevel = $choice.data("choicelevel");

  //   // If it comes from a pathway then remove the path
  //   if (isPathway) {
  //     window.history.pushState('', '', '/calculator')
  //   }

  //   setTimeout(function() {
  //     console.log("Esperaste 3 segundos...");
  //     var path = '/calculator/set_options'

  //     $.each(
  //       $lever, function(index, val) {

  //         $lever.removeClass();
  //         $lever.addClass("choiceLink tooltipclass");
  //         $(val).addClass("selected");

  //         // Construct the string choices
  //         var choices_arr = []
  //         $.each($("a.choiceLink.selected"), function(index, value) { choices_arr.push(value.attributes["data-choicelevel"].value) } );
  //         choices_str = choices_arr.toString().replace(/,/gi, "")

  //         $.ajax({
  //           type: 'POST',
  //           url: path, 
  //           data: {choices_str: choices_str}, 
  //           beforeSend: function() {

  //             for(var i = 0; i <= choicelevel - 1; ++i) {
  //               $lever[i].className += " level" + choicelevel;
  //             }
  //             // Start spinner
  //             $.blockUI({ message: null, overlayCSS: { backgroundColor: '#D3D3D3', color: '#fff'} });
  //             spinner.spin(target);

  //           },
  //           success: function(response) {
  //             google.charts.setOnLoadCallback(drawCharts(response.data));
  //           },
  //           error: function(error) {
  //             alert("Error, por favor inténtelo denuevo");
  //           },
  //           complete: function() {
  //             // Stop spinner
  //             spinner.stop()
  //             $.unblockUI();
  //           }
  //         });
  //       }
  //     );

  //   }, 3500);  
  // });


  // Clear tooltip when click outside
  $("div").click(function(evt) {
    if ($('.google-visualization-tooltip').is(":visible")) {
      chart1.setSelection(null);
      chart2.setSelection(null);
      chart3.setSelection(null);
      chart4.setSelection(null);
      chart5.setSelection(null);
    }
  });

}
  
// Set the charts options and draw it.
var chart1, chart2, chart3, chart4, chart5;

function drawCharts(data) {

  var data_chart1 = google.visualization.arrayToDataTable(data.chart_energy_supply);
  var data_chart2 = google.visualization.arrayToDataTable(data.chart_energy_demand);
  var data_chart3 = google.visualization.arrayToDataTable(data.chart_sector_emisions);
  var data_chart4 = google.visualization.arrayToDataTable(data.chart_electricity_supplied);
  var data_chart5 = google.visualization.arrayToDataTable(data.chart_electricity_demanded);

  var yearFormatter = new google.visualization.NumberFormat({ pattern: '#' });
  var twoDecimalFormatter = new google.visualization.NumberFormat({ patter: '#,##' })
  // var percentageFormatter = new google.visualization.NumberFormat({ pattern: '#,##%' });

  yearFormatter.format(data_chart1, 0);
  yearFormatter.format(data_chart2, 0);
  yearFormatter.format(data_chart3, 0);
  yearFormatter.format(data_chart4, 0);
  yearFormatter.format(data_chart5, 0);

  for (i = 1; i < 11; i++) { twoDecimalFormatter.format(data_chart1, i); } // 1 to 11 (Number of rows)
  for (i = 1; i < 4; i++) { twoDecimalFormatter.format(data_chart2, i); } // 1 to 4 (Number of rows)
  for (i = 1; i < 8; i++) { twoDecimalFormatter.format(data_chart3, i); } // 1 to 8 (Number of rows)
  for (i = 1; i < 12; i++) { twoDecimalFormatter.format(data_chart4, i); } // 1 to 12 (Number of rows)
  for (i = 1; i < 2; i++) { twoDecimalFormatter.format(data_chart5, i); } // 1 to 2 (Number of rows)

  var options_chart1 = {
    chartArea:{left:30, top:30,width:'55%',height:'75%'},
    title: 'TWh',
    isStacked: true,
    areaOpacity: 0.8,
    fontSize: 11,
    focusTarget: 'category',
    tooltip:{isHtml: true, trigger: 'selection'},
    legend: {textStyle: {italic: true}},
    hAxis: {baseline: 2015, gridlines: {count: 8, color:'#fff'}, titleTextStyle: {color: '#333'}, format: ''},
    vAxis: {gridlines: {count: 11, color: '#fff'}, minValue: 0, maxValue: 1000, format: ''}
  };
  var options_chart2 = {
    chartArea:{left:30,top:30,width:'55%',height:'75%'},
    title: 'TWh',
    isStacked: true,
    areaOpacity: 0.8,
    fontSize: 11,
    focusTarget: 'category',
    tooltip:{isHtml: true, trigger: 'selection'},
    legend: {textStyle: {italic: true}},
    hAxis: {baseline: 2015, gridlines: {count: 8, color:'#fff'}, titleTextStyle: {color: '#333'}, format: ''},
    vAxis: {gridlines: {count: 11, color: '#fff'}, maxValue: 1000, minValue: 0, format: ''}
  };
  var options_chart3 = {
    chartArea:{left:30,top:30,width:'55%',height:'75%'},
    title: 'Mt CO2e',
    isStacked: true,
    areaOpacity: 0.8,
    fontSize: 11,
    focusTarget: 'category',
    tooltip:{isHtml: true, trigger: 'selection'},
    legend: {textStyle: {italic: true}},
    hAxis: {baseline: 2015, gridlines: {count: 8, color:'#fff'}, titleTextStyle: {color: '#333'}, format: ''},
    vAxis: {gridlines: {count: 11, color: '#fff'}, maxValue: 250, minValue: 0, format: ''}
  };
  var options_chart4 = {
    chartArea:{left:30,top:30,width:'55%',height:'75%'},
    title: 'TWh',
    isStacked: true,
    areaOpacity: 0.8,
    fontSize: 11,
    focusTarget: 'category',
    tooltip:{isHtml: true, trigger: 'selection'},
    legend: {textStyle: {italic: true}},
    hAxis: {baseline: 2015, gridlines: {count: 8, color:'#fff'}, titleTextStyle: {color: '#333'}, format: ''},
    vAxis: {gridlines: {count: 11, color: '#fff'}, maxValue: 250, minValue: 0, format: ''}
  };
  var options_chart5 = {
    chartArea:{left:30,top:30,width:'55%',height:'75%'},
    title: 'TWh',
    isStacked: true,
    areaOpacity: 0.8,
    fontSize: 11,
    focusTarget: 'category',
    tooltip:{isHtml: true, trigger: 'selection'},
    legend: {textStyle: {italic: true}},
    hAxis: {baseline: 2015, gridlines: {count: 8, color:'#fff'}, titleTextStyle: {color: '#333'}, format: ''},
    vAxis: {gridlines: {count: 11, color: '#fff'}, maxValue: 250, minValue: 0, format: ''}
  };

  chart1 = new google.visualization.AreaChart(document.getElementById('chart_div1'));
  chart2 = new google.visualization.AreaChart(document.getElementById('chart_div2'));
  chart3 = new google.visualization.AreaChart(document.getElementById('chart_div3'));
  chart4 = new google.visualization.AreaChart(document.getElementById('chart_div4'));
  chart5 = new google.visualization.AreaChart(document.getElementById('chart_div5'));

  chart1.draw(data_chart1, options_chart1);
  chart2.draw(data_chart2, options_chart2);
  chart3.draw(data_chart3, options_chart3);
  chart4.draw(data_chart4, options_chart4);
  chart5.draw(data_chart5, options_chart5);

}

// Manage the tabs
function openTab (evt, tabName) {

  // Initialize charts with values in levers
  initCharts();

  // Declare all variables
  var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the current tab, and add an "active" class to the button that opened the tab
  document.getElementById(tabName).style.display = "block";
  evt.currentTarget.className += " active";

}

// Initialize the charts with the values in the view.
function initCharts() {

  var path = '/calculator/set_options'
  var choices_str = getURLParameter("pathway");

  if (choices_str != null) {

    var choices_arr = choices_str.split("");
    var levers = $(".lever");
    var letters_level = ["A","B","C","D"]
    var letter_to_level = {"A": 1, "B": 2, "C": 3, "D": 4}

    // Manage the colors of selected choices
    for (var i = 0; i <= choices_arr.length - 1; i++) {
      if ($.inArray(choices_arr[i], letters_level) >= 0) {
        choices_arr[i] = letter_to_level[choices_arr[i]]
      } else {
        choices_arr[i] = parseInt(choices_arr[i])
      }
    }

    // For each lever
    for (var i = 0; i <= levers.length - 1; i++ ) {

      var lever = jQuery(levers[i]);
      var options = lever.children("td.choice").children()
      var choice = choices_arr[i]
      options.removeClass();
      options.addClass("choiceLink tooltipclass");
      jQuery(options[choice-1]).addClass("selected");

      // For each option in lever
      for (var j = 0; j <= choice - 1; j++) {
        var option = jQuery(options[j])[0]
        option.className += " level" + choice;
      }
    }
    levers.addClass("disabled");
  } else {
    // Construct the actual string choices
    var choices_arr = []
    $.each($("a.choiceLink.selected"), function(index, value) { choices_arr.push(value.attributes["data-choicelevel"].value) } );
    choices_str = choices_arr.toString().replace(/,/gi, "")
  }

  $.ajax({
    type: 'POST',
    url: path,
    data: {choices_str: choices_str}, 
    success: function(response) {
      google.charts.setOnLoadCallback(drawCharts(response.data));
    },
    error: function(error) {
      alert("Error, por favor inténtelo denuevo");
    }
  });
}

// Copy the path url to share
function share() {

  // Construct the actual string choices
  var choices_arr = []
  $.each($("a.choiceLink.selected"), function(index, value) { choices_arr.push(value.attributes["data-choicelevel"].value) } );
  path = "?pathway=" + choices_arr.toString().replace(/,/gi, "")

  // Copy the url in clipboard
  var $temp = $("<input>");
  $("body").append($temp);
  $temp.val(window.location.href + path).select();
  document.execCommand("copy");
  $temp.remove();

  // Display message if no exist  
  if ($("#alert").length == 0) { 
    message = "<div id='alert' class='alert alert-success alert-dismissable fade in'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>Bien!</strong> Ya copiaste la dirección web de tu escenario para compartir:<br><strong><span id='copiedUrl'></span></strong></div>"
    $("#results").prepend(message);
    // $("#copiedUrl").val() = $temp.val();
    document.getElementById("copiedUrl").innerHTML = $temp.val();;
    setTimeout(function() { $("#alert").alert('close'); }, 8000)
  }
  
}

// Check if come from a pathway or not
function isPathway(url) {
  if (getURLParameter("pathway") != null) {
    return true;
  } else {
    return false;
  }
}

// Get a parameter from a URL
function getURLParameter(name) {
  return decodeURIComponent((new RegExp('[?|&]' + name + '=' + '([^&;]+?)(&|#|;|$)').exec(location.search) || [null, ''])[1].replace(/\+/g, '%20')) || null;
}

// Remove the path from URL
function removePath(url) {
  var arr = url.split('?');
  arr.pop();
  return( arr.join('/') );
}

$(document).on('turbolinks:load', function() {

  // Load the google charts api
	google.charts.load('current', {'packages':['corechart']});

  // Spinners's options and initializer
  spinner_options = {
    lines: 13 // The number of lines to draw
  , length: 28 // The length of each line
  , width: 14 // The line thickness
  , radius: 42 // The radius of the inner circle
  , scale: 1 // Scales overall size of the spinner
  , corners: 1 // Corner roundness (0..1)
  , color: '#000' // #rgb or #rrggbb or array of colors
  , opacity: 0.25 // Opacity of the lines
  , rotate: 0 // The rotation offset
  , direction: 1 // 1: clockwise, -1: counterclockwise
  , speed: 1 // Rounds per second
  , trail: 60 // Afterglow percentage
  , fps: 20 // Frames per second when using setTimeout() as a fallback for CSS
  , zIndex: 2e9 // The z-index (defaults to 2000000000)
  , className: 'spinner' // The CSS class to assign to the spinner
  , top: '50%' // Top position relative to parent
  , left: '50%' // Left position relative to parent
  , shadow: false // Whether to render a shadow
  , hwaccel: false // Whether to use hardware acceleration
  , position: 'absolute' // Element positioning
  };

  target = document.getElementById("ajax_loader");
  spinner = new Spinner(spinner_options);

  // This is the first thing that gets called when everything has been loaded.
  // It wires up the controls, sets up the initial view and loads the first
  // pathway.
  $(document).ready( function() {

    // Listener to check the levers changes
    setUpControls();

    // Listener to resize the charts
    $(window).on("throttledresize", function (event) {
      // Initialize charts with values in levers
      if (window.location.href.includes("calculator")) {
        initCharts();
      }
    });

	});
});

