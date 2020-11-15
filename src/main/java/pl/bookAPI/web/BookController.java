package pl.bookAPI.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.bookAPI.book.Book;
import pl.bookAPI.repository.JpaBookService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin/books")
public class BookController {

    private final JpaBookService jpaBookService;

    public BookController(JpaBookService jpaBookService) {
        this.jpaBookService = jpaBookService;
    }

    @GetMapping("/all")
    public String showBooks(Model model) {
        List<Book> books = jpaBookService.getBooks();
        model.addAttribute("books", books);
        return "books/all";
    }

    @GetMapping("/get/{id}")
    public String showBook(Model model, @PathVariable long id) {
        model.addAttribute("book", jpaBookService.getBook(id));
        return "books/showBook";
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
        jpaBookService.addBook(book);
        return "redirect:all";
    }

    @GetMapping("/edit/{id}")
    public String editBook(Model model, @PathVariable long id) {
        model.addAttribute("book", jpaBookService.getBook(id));
        return "books/edit";
    }

    @PostMapping("/edit")
    public String editingBook(@Valid Book book, BindingResult result) {
        if (result.hasErrors()) {
            return "books/edit";
        }
        jpaBookService.updateBook(book);
        return "redirect:all";
    }

    @GetMapping("/delete/{id}")
    public String deleteBook(Model model, @PathVariable long id) {
        model.addAttribute("book", jpaBookService.getBook(id));
        return "books/delete";
    }

    @PostMapping("/delete")
    public String deletingBook(Book book) {
        jpaBookService.deleteBook(book.getId());
        return "redirect:all";
    }
}
