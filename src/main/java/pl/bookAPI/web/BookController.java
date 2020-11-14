package pl.bookAPI.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.bookAPI.book.Book;
import pl.bookAPI.repository.BookRepository;

import java.util.List;

@Controller
@RequestMapping("/admin/books")
public class BookController {

    private final BookRepository bookRepository;

    public BookController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @GetMapping("/all")
    public String showPosts(Model model) {
        List<Book> books = bookRepository.getBooks();
        model.addAttribute("books", books);
        return "/books/all";
    }

}
