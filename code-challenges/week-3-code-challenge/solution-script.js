$(function (){

    $('#movie-form').on('submit', function (event){
        event.preventDefault();
        // get form values
        const title = $('#title').val()
        const genre = $('#genre').val()
        const year = $('#year').val()
        // greate movie object
        const movie = { title, genre, year};

        console.log(movie);
    })
    let movies;
    //Get movies from localStorage
    if(localStorage.getItem('movies')){
        let movies = JSON.parse(localStorage.movies);
        
    }else{
        let movies = [];
    }

    // add the new movie to the array
    movies.push(movie);

    //store the updated movie back to local storage
    localStorage.setItem('movies',JSON.stringify(movies));

    function displayMovies(){
        const movieList = $('#movie-list');
        movieList.empty();

        // get movies from localStorage
        let movies = JSON.parse(localStorage.getItem('movies')) || [];

        // use for/in loop

        for (let index in movies){
            let movie = movies[index];
            let listItem = $('<li></li>').text('${movie.title},(${movie.genre}), (${Movie.year})');
            movieList.append(listItem);
        }

        var URL = "https://www.omdbapi.com/?apikey=" + apiKey + "&t=";

        $('#search-btn').click(function(){
            var movie = $('#search-movie').val();

            $.ajax({
                url: URL + movie,
                method: "GET",
                success: function(data){
                    if(data.Response === "True"){
                        const movieInfo = '
                        <h3>${data.Title}</h3>
                        <p> Genre: ${data.Genre}</p>
                        <p> Year: ${data.year} </p>
                        <img src = ${data.Poster}></img> '
                        ;
                        $('movie-data').append(movieInfo);
                    }else{
                        $('movie-data').append("movie not found");
                    }
                }
            })
        })
        

})