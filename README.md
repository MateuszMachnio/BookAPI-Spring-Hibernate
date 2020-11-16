# BookAPI-Spring-Hibernate
It is a project implemented after passing the sixth module of the course in CodersLab. \
This module was focused on __Hibernate__.
## What programme is that?
The created controller allows you to manage the catalog of books from the level of the website. \
Entering the URL: .../admin/books/all shows the list of all books loaded at server startup. \
From here you can add a new book, view the details of the book, edit the book and delete the book.
## How it works? 
I used the __Spring__ and __Hibernate__ frameworks to build the application. \
Thanks to __Spring Data__ and the JpaRepository interface, performing database operations is very easy. \
BookController is responsible for all interaction with the user. \
Data collection takes place via the JpaBookService service layer, which uses the BookRepository interface to retrieve the data. \
The downloaded data is transferred to the corresponding .jsp files. \
If the user adds or edits the book, the entered data is additionally validated.
