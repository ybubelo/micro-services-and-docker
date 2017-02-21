package demo;

import java.util.concurrent.atomic.AtomicLong;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ServerTimeController {

    @RequestMapping("/api/servertime")
    public ServerTimeResponse serverTime() {
        return new ServerTimeResponse();
    }
}
