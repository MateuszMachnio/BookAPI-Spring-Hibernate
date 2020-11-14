package pl.bookAPI.JpaRepository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.bookAPI.book.Book;

public interface JpaBookRepository extends JpaRepository<Book, Long> {
}
