package com.dhruv.jokes_backend.dto;

import java.util.List;

public class JokesResponse {

    private List<JokeDto> jokes;

    public JokesResponse() {
    }

    public JokesResponse(List<JokeDto> jokes) {
        this.jokes = jokes;
    }

    public List<JokeDto> getJokes() {
        return jokes;
    }

    public void setJokes(List<JokeDto> jokes) {
        this.jokes = jokes;
    }
}
