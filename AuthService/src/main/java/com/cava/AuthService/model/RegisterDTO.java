package com.cava.AuthService.model;

public record RegisterDTO(String login, String password, UserRole role) {
}
