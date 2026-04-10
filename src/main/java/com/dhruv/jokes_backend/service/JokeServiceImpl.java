package com.dhruv.jokes_backend.service;

import com.dhruv.jokes_backend.dto.CreateJokeRequest;
import com.dhruv.jokes_backend.dto.JokeDto;
import com.dhruv.jokes_backend.model.Joke;
import com.dhruv.jokes_backend.repository.JokeRepository;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class JokeServiceImpl implements JokeService {

    private final JokeRepository jokeRepository;

    public JokeServiceImpl(JokeRepository jokeRepository) {
        this.jokeRepository = jokeRepository;
    }

    @Override
    public List<JokeDto> getJokes(String genre, int amount) {
        if (amount <= 0) {
            throw new IllegalArgumentException("Amount must be greater than 0");
        }

        List<Joke> jokes = "Any".equalsIgnoreCase(genre)
                ? jokeRepository.findByActiveTrue()
                : jokeRepository.findByCategoryIgnoreCaseAndActiveTrue(genre);

        Collections.shuffle(jokes);

        return jokes.stream()
                .limit(amount)
                .map(this::toDto)
                .toList();
    }

    @Override
    public Joke createJoke(CreateJokeRequest request) {
        validateRequest(request);

        Joke joke = new Joke();
        joke.setCategory(request.getCategory());
        joke.setType(request.getType());
        joke.setJoke(request.getJoke());
        joke.setSetup(request.getSetup());
        joke.setDelivery(request.getDelivery());
        joke.setActive(true);

        return jokeRepository.save(joke);
    }

    private JokeDto toDto(Joke joke) {
        return new JokeDto(
                joke.getId(),
                joke.getType(),
                joke.getSetup(),
                joke.getDelivery(),
                joke.getJoke()
        );
    }

    private void validateRequest(CreateJokeRequest request) {
        if ("single".equalsIgnoreCase(request.getType())) {
            if (isBlank(request.getJoke())) {
                throw new IllegalArgumentException("Single joke must contain joke text");
            }
            request.setSetup(null);
            request.setDelivery(null);
            return;
        }

        if ("twopart".equalsIgnoreCase(request.getType())) {
            if (isBlank(request.getSetup()) || isBlank(request.getDelivery())) {
                throw new IllegalArgumentException("Two-part joke must contain setup and delivery");
            }
            request.setJoke(null);
            return;
        }

        throw new IllegalArgumentException("Type must be either single or twopart");
    }

    private boolean isBlank(String value) {
        return value == null || value.isBlank();
    }
}
