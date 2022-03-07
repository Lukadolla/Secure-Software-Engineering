package com.example.controller;

import com.example.exception.BookNotFoundException;
import com.example.model.Book;
import com.example.model.Login;
import com.example.repository.BookRepository;
import com.example.repository.LoginRepository;
import com.example.repository.UsersRepository;
import com.example.repository.VaccineAppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    BookRepository bookRepository;

    @Autowired
    LoginRepository loginRepository;

    @Autowired
    UsersRepository usersRepository;

    @Autowired
    VaccineAppointmentRepository vaccineAppointmentRepository;

    @RequestMapping("/vaccine_register")
    public String vaccineRegister(){
        return "vaccine_register";
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }

    @GetMapping("/booking")
    public String booking(){
        return "booking";
    }

    @RequestMapping("/account_register")
    public String accountRegister(){
        return "account_register";
    }


    @PostMapping("/loginData")
    public String loginCheck(@RequestParam String username, @RequestParam String password, HttpServletRequest request){
        if(loginRepository.existsById(username)){
            if(loginRepository.findById(username).get().getPassword().equals(password)){
                request.getSession().setAttribute("login", true);
                request.getSession().setAttribute("username", username);
                return "redirect:/";
            }

        }
        if(username.contains("add")){
            Login login = new Login();
            login.setUsername(username);
            login.setPassword(password);
            loginRepository.save(login);
        }
        request.getSession().setAttribute("login", false);
        return "redirect:/login";
    }

    // See All Books on Homepage
    @RequestMapping({"/", "/list"})
    public String viewHomePage(Model model){
        List<Book> listBooks = bookRepository.findAll();
        model.addAttribute("listBooks", listBooks);
        return "homepage";
    }

    // Delete a Book
    @RequestMapping("/delete/{id}")
    public String deleteBook(@PathVariable(value = "id") Long bookId, Model model) throws BookNotFoundException{
        Book book = bookRepository.findById(bookId)
                .orElseThrow(() -> new BookNotFoundException(bookId));
        bookRepository.delete(book);
        return viewHomePage(model);
    }

    // Create a Book
    @RequestMapping("/new")
    public String createBook(){
        return "bookform";
    }
    // Save Created Book
    @PostMapping("/books")
    public String saveCreatedBook(@ModelAttribute("book") Book book, Model model){
        bookRepository.save(book);
        return viewHomePage(model);
    }

    // Update a Book
    // Get Book By ID and open the editform
    @GetMapping("/books/{id}")
    public String getBookById(@PathVariable(value="id") Long bookId, Model model) throws BookNotFoundException{
        Book book = bookRepository.findById(bookId)
                .orElseThrow(() -> new BookNotFoundException(bookId));
        model.addAttribute("book", book);
        return "editform";
    }
    // Save Updated Details
    @RequestMapping(value="/books/save", method=RequestMethod.POST)
    public String updateBook(@ModelAttribute("book") Book book, Model model){
        bookRepository.save(book);
        return viewHomePage(model);
    }
}
