$(document).ready(function() {

  $('h1').fadeIn(2000);

  $('p').fadeIn(2000);

  $('input').focus();

  $('button').click( function() {
    var apiStart = 'http://api.openweathermap.org/data/2.5/weather?q='
    var apiEnd = '&units=imperial&appid=3d6f679b377e4b4c9ded52dc4d1f046f'
    var city = $('input').val();
    var cityUrl = city.replace(/\s+/g, '');
    var apiUrl = apiStart + cityUrl + apiEnd

    $.getJSON(apiUrl, function(data) {
      var temp = data.main.temp;
      $('body').append(`<p>Temperature in ${city}:</p>`);
      $('body').append(`<p>${temp} degrees F</p>`);
    });

    $('input').val('');
  });

});
