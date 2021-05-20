package com.example.backtest;

import com.example.backtest.entity.Book;
import com.example.backtest.repository.BookRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class BacktestApplicationTests {
    @Autowired
    private BookRepository repository;

    @Test
    void contextLoads() {
    }

    @Test
    void test() {
        Book book = new Book();
        book.setName("Spring Boot");
        book.setAuthor("廖雪峰");
        Book book1 = repository.save(book);
        System.out.println(book1);
    }

    @Test
    void findById() {
        Book book = repository.findById(1).get();
        System.out.println(book);
    }

    @Test
    void delete() {
        repository.deleteById(17);
    }

    @Test
    void updateById() {
        Book book = repository.findById(19).get();
        book.setName("abc");
        book.setAuthor("mmmm");
        repository.save(book);
    }
}
