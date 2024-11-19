# Movie Collector Web App - Week 3 Code Challenge

------
#### Info
In this challenge, you will build a simple Movie Collector web app that allows a user to:

1. Enter details of a movie (title, genre, year).
2. Store the entered movie details in the browser using localStorage.
3. Display a list of all stored movies on the page.
4. Fetch movie data from an API (The Movie Database API) based on a user-entered movie title and display the movie poster.


**This challenge will help you demonstrate your understanding of:**

- Form handling in HTML.
- Storing and retrieving data using localStorage.
- Using JavaScript objects and arrays.
- Fetching data from an external API.
- Iterating over objects using a for/in loop.

------
#### Requirements
1. Data Collection
- Create a form with input fields for:
    - Movie title
    - Genre
    - Year
    
When the user submits the form, collect the values and store them as a JavaScript object.

2. Storing and Retrieving Data
- Use localStorage to store an array of movie objects.
- On page load, retrieve the stored movies from localStorage and display them in a list format.

3. Displaying Stored Data
- List all stored movies (title, genre, year) on the page.
- Allow the user to remove a movie from the list, and update both the UI and localStorage.

4. Using a for/in Loop
- Use a for/in loop to iterate over the stored movie objects when displaying them.
5. API Integration
- Use the The Movie Database API (TMDb) to search for movie posters.
- When the user enters a movie title in the search bar, fetch movie information (such as title and genre) from the API and display it on the page.

------
#### Make sure to:
- Add form validation to ensure the user enters valid data.
- Style the movie list and form using CSS.
- Add error handling in the API request if no movies are found.
------
#### File Structure
- **index.html:** The main HTML file that contains the structure of the web app.
- **config.js:** A configuration file to store your API key for the Movie Database API.
- **style.css:** A separate CSS file to handle styling for the web app.
- **script.js:** A separate JavaScript file for app logic.
- **.gitignore:** A file to prevent sensitive files (like config.js) from being pushed to the repository.