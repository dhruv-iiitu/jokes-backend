package com.dhruv.jokes_backend.repository;

import com.dhruv.jokes_backend.model.Joke;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface JokeRepository extends JpaRepository<Joke, Long> {

    List<Joke> findByActiveTrue();

    List<Joke> findByCategoryIgnoreCaseAndActiveTrue(String category);
}
