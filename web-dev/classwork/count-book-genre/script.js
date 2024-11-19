const books = {
    book1: { title: "The Great Gatsby", author: "F. Scott Fitzgerald", genre: "Fiction" },
    book2: { title: "To Kill a Mockingbird", author: "Harper Lee", genre: "Fiction" },
    book3: { title: "1984", author: "George Orwell", genre: "Science Fiction" },
    book4: { title: "Pride and Prejudice", author: "Jane Austen", genre: "Fiction" },
    book5: { title: "The Hobbit", author: "J.R.R. Tolkien", genre: "Fantasy" }
};

$(document).ready(function() {
    // follow the instructions provided in the README to solve this
    // create a function called coubtBooksByGenre(books, genre) that takes thisobject and a genre as input and returns the number of books in that genre.
    function countBooksByGenre(books, genre){
        //use a for/in loop
        for(var book in books ){
            var count = 0;
            if(books[book]["genre"] == genre){
                count++
                //print count to p tag 
                $("#result").append(count);
            }
        }
    }
    //click function to run countbooksbygenrefunction
    $("#countBooksButton").click(function(){
        var genre = $("#genreSelector").val()
        countBooksByGenre(books, genre);
    })


});

//instructor solution

    // &("#countBooksButton").click(function(){
    //     const selectedGenre = $("#genreSelector").val() // getting the value of what is being selected
    //     console.log(selectedGenre);

    //     const resultElement = $("#result");

    //     var count = 0
    //     for(var book in books){
    //         if(books[book].genre === selectedGenre){
    //             count ++;
    //             console.log(count);
    //         }
    //     }
    //     resultElement.text('Number of ${selectedGenre} books: ${count}`);
    // })


//insturctor 

    // function countBooksByGenre(book, genre){
    //     var count = 0
    //      for(var book in books){
    //          if(books[book].genre === genre){
    //              count ++;
    //              console.log(count);
    //          }
    //      }
    //      return count;
    // }

    // $("#countBooksButton").click(function(){
    //     const selectedGenre = ($"#genreSelector").val()

    //     const resultElement =$("#result");

    //     const bookCount = countBooksByGenre(books,selectedGenre);

    //     resultElement.text = stuff 
    // })