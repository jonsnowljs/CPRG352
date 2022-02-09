/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ca.sait.week5lab4.services;

import ca.sait.week5lab4.models.User;

/**
 *
 * @author Jason
 */
public class AccountService {
    public User login(String username, String password){
        if (username.equals("abe") && password.equals("password")) {
            return new User(username, null);
        } else if (username.equals("barb") && password.equals("password")) {
            return new User(username, null);
        } else {
            return null;
        }
    }
}
