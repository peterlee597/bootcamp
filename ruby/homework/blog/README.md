# README
# Blog Application: Ruby on Rails 

This Application is a Ruby on Rails blog that is aimed in helping myself improve my skills with web development through Ruby on Rails.

In this Blog, you can see my own applications of C.R.U.D through the creation of categories and articles.
>There are also other things added such as css styling 

<ins>**These are the steps in which we took to get our blog to where it is at the moment:**</ins>

-Validation: Ensure that articles must belong to a category. Validate that each article is associated with a category during article creation and editing. (you need to update Article model belongs_to association)

-Category Descriptions: These descriptions can provide additional context or information about the category's content, display it on category index as italicized (in view).

-Category Description Rake Task: Add rake task to backfill existing categories description.

-C - Action: Create the ability for signed-in users to create a category. Include view and form as partial.

-R - Action: Add the ability for signed-in users to read a category by navigating to localhost:3000/categories/:id. Include view.

-U - Action: Add the ability for signed-in users to edit a category. Include view. Add edit button (on show view).

-D - Action: Add the ability for signed-in users to delete a category. Include view. Add delete button (on show view).

-Category Count: Display the number of articles within each category next to the category name in the category index page. This provides a quick overview of each category's content.

-Category Field on Article Forms: Ensure the article creation and editing forms contain a form field for selecting a category. Modify your Article model to handle this association. The form should allow users to select a category when creating or editing an article. 

-Category Migration: Create a migration to add a priority_level column to the categories table. This column is an integer that represents the priority of each category (e.g. numbers like 1, 2, 3 for priority levels when using integers)

-Style: Style the blog app to be user-friendly and aesthetically pleasing. This is a very important point. Remember to separate style files for each view. (look up how to style using css for Rails app)

-README: Update your README.md file to describe your project, include any rake tasks that need to be run, and general info about your app. Read this article for basic writing and formatting syntax.


**WILL UPDATE MORE**



