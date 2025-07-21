package com.sraghav.store;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class StoreApplication {

    public static void main(String[] args) {
        SpringApplication.run(StoreApplication.class, args);

//        var user = User.builder()
//                .id(1L)
//                .name("Shiv")
//                .email("shiv@email.com")
//                .password("pass123")
//                .build();
//
//        var profile = Profile.builder()
//                .bio("bio")
//                .build();
//
//        user.addProfile(profile);
//
//        System.out.println(user);
    }


}
