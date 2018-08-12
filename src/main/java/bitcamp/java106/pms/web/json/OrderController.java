package bitcamp.java106.pms.web.json;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/order")
public class OrderController {
    
    // 구매 준비 - 10분간 유지
    @RequestMapping("purchaseReady")
    public void purchaseReady(Object object, HttpSession session) {
        session.setAttribute("purchased", object);
    }
    
    @RequestMapping("purchasedForm")
    public Object purchasedForm(HttpSession session) {
        
        Object object = session.getAttribute("purchased");
        session.removeAttribute("purchased");
        
        return object;
    }
    
    @RequestMapping("add")
    public void add() {
        
    }
    
}
