package pl.bookAPI.book;

import java.util.List;
import java.util.Optional;

public interface BookService {

    List<Book> getBooks();

    void addBook(Book book);

    Optional<Book> getBook(Long bookId);

    void updateBook(Book book);

    void deleteBook(Long bookId);
}
