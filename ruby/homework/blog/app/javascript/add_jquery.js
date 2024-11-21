// import jquery from "jquery";

// window.jQuery = jquery;

// window.$ = jquery;

console.log("toggle button feature jquery");

var articleContent = $('#article-content');

$('#toggle-content-button').on('click', function(){
    if ($(articleContent).css('display') === 'none') {
        $(articleContent).css('display', 'block');
        $('#toggle-content-button').text('Hide Content');
    } else {
        $(articleContent).css('display', 'none');
        $('#toggle-content-button').text('Show Content');
    }
})


 // Dynamic content loading for comments
 $('#load-comments').on('click', function() {
    const categoryId = $('#category-id').data('category');
    const articleId = $('#load-comments').data('article');
    console.log(categoryId)
    console.log(articleId)
    
    const url = `/categories/${categoryId}/articles/${articleId}/comments`;
    console.log($.getJSON(url));
    $.getJSON(url, function(data){
        console.log(data);
        // Append the new comments to the container #comments
    })
        // add .fail callback to handle error messaging
    });