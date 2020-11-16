package pl.bookAPI.service;

import org.springframework.stereotype.Service;
import pl.bookAPI.repository.BookRepository;
import pl.bookAPI.book.Book;
import pl.bookAPI.book.BookService;

import java.util.List;
import java.util.Optional;

@Service
public class JpaBookService implements BookService {

    private final BookRepository bookRepository;

    public JpaBookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }


    @Override
    public List<Book> getBooks() {
        return bookRepository.findAll();
    }



    @Override
    public void addBook(Book book) {
        bookRepository.save(book);
    }

    @Override
    public Optional<Book> getBook(Long bookId) {
        return bookRepository.findById(bookId);
    }

    @Override
    public void updateBook(Book book) {
        bookRepository.save(book);
    }

    @Override
    public void deleteBook(Long bookId) {
        bookRepository.deleteById(bookId);
    }
}
