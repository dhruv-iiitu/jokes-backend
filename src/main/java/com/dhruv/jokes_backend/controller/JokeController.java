package com.dhruv.jokes_backend.controller;

import com.dhruv.jokes_backend.dto.CreateJokeRequest;
import com.dhruv.jokes_backend.dto.JokesResponse;
import com.dhruv.jokes_backend.model.Joke;
import com.dhruv.jokes_backend.service.JokeService;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/joke")
@CrossOrigin(origins = "*")
public class JokeController {

    private final JokeService jokeService;

    public JokeController(JokeService jokeService) {
        this.jokeService = jokeService;
    }

    @GetMapping("/{genre}")
    public ResponseEntity<JokesResponse> getJokes(
            @PathVariable String genre,
            @RequestParam(defaultValue = "10") int amount
    ) {
        return ResponseEntity.ok(new JokesResponse(jokeService.getJokes(genre, amount)));
    }

    @PostMapping
    public ResponseEntity<Joke> createJoke(@Valid @RequestBody CreateJokeRequest request) {
        return ResponseEntity.status(HttpStatus.CREATED).body(jokeService.createJoke(request));
    }
}
