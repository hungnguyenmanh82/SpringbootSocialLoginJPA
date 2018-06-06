package com.example.demo.ultils;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 *  Password cần Encrypt trc khi save vào Database. Để tránh lộ password thông qua đọc database.
 */
public class EncrytedPasswordUtils {
 
    // Encryte Password with BCryptPasswordEncoder
    public static String encrytePassword(String password) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        return encoder.encode(password);
    }
 
}
