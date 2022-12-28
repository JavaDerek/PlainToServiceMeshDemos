package com.example.restservice;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthyController {

    @GetMapping("/healthy")
    public String greeting() {
        return "alive";
    }
}