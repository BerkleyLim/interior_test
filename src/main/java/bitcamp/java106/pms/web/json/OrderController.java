package bitcamp.java106.pms.web.json;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import bitcamp.java106.pms.domain.Order;
import bitcamp.java106.pms.service.OrderService;

@RestController
@RequestMapping("/order")
public class OrderController {
    
    @Autowired ServletContext sc;
    
    OrderService orderService;
    
    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }
     //관리자 list
    @RequestMapping("adList")
    public Object adList(int no) {        
        return orderService.adList(no);
    }
    
    //관리자 update
    @RequestMapping("adUpdate")
    @ResponseStatus(HttpStatus.OK) // 기본 값이 OK 이다. 
    public Object adUpdate(Order order) throws Exception {
        
        
        return orderService.adUpdate(order);
    }
    
    //관리자 view
    @RequestMapping("adview/{no}")
    public Order adView(@PathVariable int no) throws Exception {
        
        return orderService.adGet(no);
    }
    
    
    
    //add
//    @RequestMapping("add")
//    @ResponseStatus(HttpStatus.CREATED)
//    public void add(Order order) throws Exception {
//        orderService.add(order);
//    }
    
    
    //list
//    @RequestMapping("list")
//    public Object list(int no) {        
//        return orderService.list(no);
//    }
    
    //update
//    @RequestMapping("update")
//    @ResponseStatus(HttpStatus.OK) // 기본 값이 OK 이다. 
//    public Object update(Order order) throws Exception {
//        
//        return orderService.update(order);
//    }
    
   
    //view   
//    @RequestMapping("{no}")
//    public Order view(@PathVariable int no) throws Exception {
//        return orderService.get(no);
//    }
    
    
    // 장바구니 및 제품상세에서 구매하기 버튼 클릭시 세션에 임시 저장
    // 장바구니에 있는 DB 테이블도 동시에 지운다.
    @RequestMapping("purchaseReady")
    public void purchaseReady(Object object, HttpSession session) {
        session.setAttribute("purchased", object);
        
    }
    
    // 먼저 이벤트 후 바로 구매 관련 세션 바로 제거
    @RequestMapping("purchasedForm")
    public Object purchasedForm(HttpSession session) {
        Object object = session.getAttribute("purchased");
        session.removeAttribute("purchased"); // 세션 바로 제거 (어차피 세션 쓴건 임시로 데이터 담아서 가져온거라서)
        
        return object;
    }
    
    // 주문 추가
    @RequestMapping("add")
    public void add() {
        
    }
    
    
    
}
