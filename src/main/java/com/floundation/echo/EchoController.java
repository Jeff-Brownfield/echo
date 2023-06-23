package com.floundation.echo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("api")
public class EchoController {
    
    @GetMapping("{msg}")
    public String echo(@PathVariable("msg") String msg) {
        return "Message received:" + msg;
    }
}
