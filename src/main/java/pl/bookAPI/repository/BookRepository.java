package pl.bookAPI.repository;

import org.springframework.context.annotation.Primary;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.bookAPI.JpaRepository.JpaBookRepository;
import pl.bookAPI.book.Book;
import pl.bookAPI.book.BookService;

import java.util.List;
import java.util.Optional;

@Repository
public class BookRepository implements BookService {

    private final JpaBookRepository jpaBookRepository;

    public BookRepository(JpaBookRepository jpaBookRepository) {
        this.jpaBookRepository = jpaBookRepository;
    }


    @Override
    public List<Book> getBooks() {
        return jpaBookRepository.findAll();
    }



    @Override
    public void addBook(Book book) {
        jpaBookRepository.save(book);
    }

    @Override
    public Optional<Book> getBook(Long bookId) {
        return jpaBookRepository.findById(bookId);
    }

    @Override
    public void updateBook(Book book) {
        jpaBookRepository.save(book);
    }

    @Override
    public void deleteBook(Long bookId) {
        jpaBookRepository.deleteById(bookId);
    }
}
