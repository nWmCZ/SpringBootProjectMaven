package hello;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;

@Controller
@EnableAutoConfiguration
public class SampleController {

    @Autowired
    private RequestRepository requestRepository;

    @RequestMapping("/")
    @ResponseBody
    String home(@RequestHeader(value="User-Agent", defaultValue="defaultValue") String userAgent,
                @RequestParam(value = "param", required = false) String param) {

        Request r = new Request();
        r.setSource(userAgent);
        r.setDateTime(LocalDateTime.now());
        r.setParam(param);

        requestRepository.save(r);

        return "Added " + r ;
    }

    @GetMapping(path="/all")
    public @ResponseBody Iterable<Request> getAllRequests() {
        // This returns a JSON or XML with the users
        return requestRepository.findAll();
    }
}