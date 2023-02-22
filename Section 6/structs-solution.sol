pragma solidity >= 0.7.0 < 0.9.0;

//Struct are types that are used to represent a record. Suppose you want to keep track of your movies in a library. 
// You might want to track the following attributes about each movie −


contract learnStructs {
    
 struct Movie {
     // add director variable add movie title variable add movie id variable 
     
     string title;
     string director;
     uint movie_id;
 }

    Movie movie;
    Movie comedy;
    

    function setMovie() public {
       // movie = Movie('Blade Runner', 'Ridley Scott', 2);
       // movie = Movie('Escape From New York', 'John Carpenter', 3);
       comedy = Movie('Zoolander', 'Ben Stiller', 4);
    }

    function getMovieId() public view returns(uint) {
        //return movie.movie_id;
        return comedy.movie_id;
    }

}

// 1. create a new movie and set it up so that it updates to the movie in the setMovie function
// 2. return the id of the new movie
// 3. create a new var called comedy and set up comedy to the datatype Movie 
//4. update the setMovie function with a comedy movie that contain name, director, and an id
//5. return the movie id of the comedy. 