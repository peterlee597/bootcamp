//create a click function to input user location
$("#search").click(function(){
    var location = $("#location").val();
    var URL = "";
    //check if user inputs zip code or city
    //verify if the location is a city
    var city = isNaN(location);

    if(city){
        URL = "https://api.openweathermap.org/data/2.5/weather?q=" + location + "$appid=" + apiKey+ "&units=imperial";
    }else{
        URL = "https://api.openweathermap.org/data/2.5/weather?zip=" + location + ",us&appid=" + apiKey + "&units=imperial";
    }
  console.log(URL);
  $("#weather").empty();
    $.ajax({
        url: URL,
        method: "GET",
        success: function(data){
            var weather = data.weather[0].main;
            var windspeed = data.wind.speed;
            var temp = data.main.temp;
            var humidity = data.main.humidity;

            if(data){
                $("#weather").append("Today's Weather: " + weather + "<br>"  + "Windspeed: " + windspeed + " mph" + "<br>" + "Temperature: " + temp + " degrees Fareneheit" +"<br>" + "Humidity :" + humidity + "%"); 
            }else{
                $("#weather").append("Unable to find this location. Please try again")
            }
        },
        error: function(xhr){
            var status = xhr.status;
            var errorMessage = xhr.responseJSON ? xhr.responseJSON.Error : "An unknown error occurred."
            $("#weather").append("Error retrieving weather data: " + status + " - " + errorMessage);
        }
    })    
})