package com.dojo.fullspring.starter.models;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;


// pas de @Entity donc il n'est pas transmis à la base de donnée
/*
 * Ce n'est pas une entité dans notre base de données, et nous ne 
 * l'utilisons que temporairement pour valider la saisie du formulaire 
 * lorsque l'utilisateur se connecte. Une fois que la saisie du formulaire
 *  a réussi ou non la validation et l'authentification, cela LoginUser
 * l'instance disparaît.
 */
public class LoginUser {
    
    @NotEmpty(message="Email is required!")
    @Email(message="Please enter a valid email!")
    private String email;
    
    @NotEmpty(message="Password is required!")
    @Size(min=8, max=128, message="Password must be between 8 and 128 characters")
    private String password;
    
    public LoginUser() {}

    // TODO - Don't forget to generate getters and setters
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
