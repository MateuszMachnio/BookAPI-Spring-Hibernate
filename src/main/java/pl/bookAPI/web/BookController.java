package pl.bookAPI.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.bookAPI.book.Book;
import pl.bookAPI.repository.BookRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin/books")
public class BookController {

    private final BookRepository bookRepository;

    public BookController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @GetMapping("/all")
    public String showBooks(Model model) {
        List<Book> books = bookRepository.getBooks();
        model.addAttribute("books", books);
        return "books/all";
    }

    @GetMapping("/add")
    public String addBook(Model model) {
        model.addAttribute("book", new Book());
        return "books/add";
    }

    @PostMapping("/add")
    public String addingBook(@Valid Book book, BindingResult result) {
        if (result.hasErrors()) {
            return "books/add";
        }
        bookRepository.addBook(book);
        return "redirect:all";
    }

    @GetMapping("/edit/{id}")
    public String editBook(Model model, @PathVariable long id) {
        model.addAttribute("book", bookRepository.getBook(id));
        return "books/edit";
    }

    @PostMapping("/edit")
    public String editingBook(@Valid Book book, BindingResult result) {
        if (result.hasErrors()) {
            return "books/edit";
        }
        bookRepository.updateBook(book);
        return "redirect:all";
    }

    @GetMapping("/delete/{id}")
    public String deleteBook(Model model, @PathVariable long id) {
        model.addAttribute("book", bookRepository.getBook(id));
        return "books/delete";
    }

    @PostMapping("/delete")
    public String deletingBook(Book book) {
        bookRepository.deleteBook(book.getId());
        return "redirect:all";
    }
}
