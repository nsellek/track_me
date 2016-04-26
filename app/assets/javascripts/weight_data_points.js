$(function(){
  var weight_vals = [];
  var dates = [];
  
  var data_points = $('.grab_me').children();
  for (var i = 0; i < data_points.length; i++) {
    if (data_points[i].className === 'weight'){
    weight_vals.push(parseFloat(data_points[i].innerHTML));
    }
    if (data_points[i].className === 'date'){
      dates.push(data_points[i].innerHTML);
    }
  }
    
  // console.log(weight_vals);
  // console.log(data_points);
  // console.log(dates);
  
  var data = {
    labels: [dates],
    series: [weight_vals]
  }
  
  var options = {
    lineSmooth: Chartist.Interpolation.simple({divisor: 2})
  }

  Chartist.Line('.ct-chart', data, options);
});