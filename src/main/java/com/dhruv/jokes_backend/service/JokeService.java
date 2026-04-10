package com.dhruv.jokes_backend.service;

import com.dhruv.jokes_backend.dto.CreateJokeRequest;
import com.dhruv.jokes_backend.dto.JokeDto;
import com.dhruv.jokes_backend.model.Joke;

import java.util.List;

public interface JokeService {

    List<JokeDto> getJokes(String genre, int amount);

    Joke createJoke(CreateJokeRequest request);
}
