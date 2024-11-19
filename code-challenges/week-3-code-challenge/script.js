$(function () {
    // add click function & logic for AJAX request here
    // do not forget to hide API key 
    var URL = "http://www.omdbapi.com/?apikey=" + apiKey + "&t=";
    $.ajax({
        url: URL + title,
        method: "GET",
        success: function(data){
            if (data.Response === "true"){

                };
            }
        })
});
    

//click function to store user input into a javascript object.
    $("#submit").click(function(){ 
        addMovie();
    });

 // first check to see if the movies are stored within our local storage. IF NOT create an object for us to store the movies
    if(localStorage.getItem(movies)){
        var movies = JSON.parse(localStorage.getItem(movies));
    }else{
        var movies = [];
    };
        //grab the values of the input
        // add the user Input into an object list
     function addMovie(){
        var title = $("#title").val();
        var genre = $("#genre").val();
        var year =  $("#year").val();
        //create an object  
            var movieInfo = {
                movieTitle: title,
                movieGenre: genre,
                movieYear: year
            };
            movies.push(movieInfo);
            localStorage.movies = JSON.stringify(movies);

            $("#movie-list").append()
        };
        

    
