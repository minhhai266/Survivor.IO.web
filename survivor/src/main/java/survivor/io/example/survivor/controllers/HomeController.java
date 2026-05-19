package survivor.io.example.survivor.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String getHome() {
        return "index";
    }
    @GetMapping("/characters")
    public String getCharacters() {
        return "characters";
    }
    @GetMapping("/events")
    public String getEvents() {
        return "events";
    }
    @GetMapping("/header")
    public String getHeader() {
        return "header";
    }
    @GetMapping("/footer")
    public String getFooter() {
        return "footer";
    }
    @GetMapping("/weapons")
    public String getWeapons() {
        return "weapons";
    }

    
    
    
}
