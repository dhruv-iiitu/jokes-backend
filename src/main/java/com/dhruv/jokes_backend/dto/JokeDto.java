package com.dhruv.jokes_backend.dto;

public class JokeDto {

    private Long id;
    private String type;
    private String setup;
    private String delivery;
    private String joke;

    public JokeDto() {
    }

    public JokeDto(Long id, String type, String setup, String delivery, String joke) {
        this.id = id;
        this.type = type;
        this.setup = setup;
        this.delivery = delivery;
        this.joke = joke;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSetup() {
        return setup;
    }

    public void setSetup(String setup) {
        this.setup = setup;
    }

    public String getDelivery() {
        return delivery;
    }

    public void setDelivery(String delivery) {
        this.delivery = delivery;
    }

    public String getJoke() {
        return joke;
    }

    public void setJoke(String joke) {
        this.joke = joke;
    }
}
