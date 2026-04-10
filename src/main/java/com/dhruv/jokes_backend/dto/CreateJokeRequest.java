package com.dhruv.jokes_backend.dto;

import jakarta.validation.constraints.NotBlank;

public class CreateJokeRequest {

    @NotBlank
    private String category;

    @NotBlank
    private String type;

    private String joke;
    private String setup;
    private String delivery;

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getJoke() {
        return joke;
    }

    public void setJoke(String joke) {
        this.joke = joke;
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
}
