package springSecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyController {

    @GetMapping("/")
    public String getInfoForAllEmployees() {
        return "view_info_for_all_employees";
    }

    @GetMapping("/manager_info")
    public String managerInfo() {
        return "view_manager_info";
    }

    @GetMapping("/admin_info")
    public String adminInfo() {
        return "view_admin_info";
    }

}
