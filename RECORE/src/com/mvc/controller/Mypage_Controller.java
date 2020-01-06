package com.mvc.controller;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.dao.AccountDaoImp;
import com.mvc.dao.MyPageDaoImp;
import com.mvc.dao.ProductDaoImp;
import com.mvc.vo.Vo_Account;
import com.mvc.vo.Vo_Mypage_Paging;
import com.mvc.vo.Vo_Product;
import com.mvc.vo.Vo_QnA;

@WebServlet("/mypage.do")
public class Mypage_Controller extends HttpServlet {
   private static final long serialVersionUID = 1L;

    public Mypage_Controller() {
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      response.setContentType("text/html; charset=UTF-8");
      
      String command = request.getParameter("command");
      //임의로 로그인 세션 set
//      AccountDaoImp dao = new AccountDaoImp();
//      Vo_Account vo = dao.A_selectAccount("user1", "user1");
      //로그인 객체 가져오기
      HttpSession session = request.getSession();
      Vo_Account vo = (Vo_Account)session.getAttribute("vo");
//      session.setAttribute("vo", vo);
      
      //map 가져오기
      MyPageDaoImp mdao = new MyPageDaoImp();
      System.out.println("계정넘버 : " + vo.getAcc_no());
      Map<String,Object> map = mdao.selectMypage(vo.getAcc_no());
      
      //wish, cart insert
      ProductDaoImp pdao = new ProductDaoImp();
      
      if(command.equals("orderlist")) {
         System.out.println(map.get("list_order"));
         List list = (List)map.get("list_order");
         System.out.println("orderlist 사이즈가??" + list.size());
         int pageNo = Integer.parseInt(request.getParameter("pageno"));
         System.out.println("pageNo : " + pageNo);
         
         Vo_Mypage_Paging paging = new Vo_Mypage_Paging();
         paging.setPageNo(pageNo);
         paging.setTotalCount(list.size());
         System.out.println("paging vo의 startpage : " + paging.getStartPage());
         System.out.println("paging vo의 endpage : " + paging.getEndPage());
         
         if(list.isEmpty()) {
            response.sendRedirect("RECOREMain/RECOREMypage/Mypage_OrderList.jsp");
         }else {
            request.setAttribute("list_order", map.get("list_order"));
            request.setAttribute("page", paging);
            dispatch("./RECOREMain/RECOREMypage/Mypage_OrderList.jsp", request, response);
         }
         
      }else if(command.equals("main")){
         List list = (List)map.get("list_order");
         System.out.println("main에 넘어갈 사이즈"+list.size());
         request.setAttribute("list_order", map.get("list_order"));
         dispatch("./RECOREMain/RECOREMypage/Mypage_Main.jsp", request, response);
         
      }else if(command.equals("fundinglist")) {
    	  System.out.println(map.get("list_fun_d"));
          List list = (List)map.get("list_fun_d");
          int pageNo = Integer.parseInt(request.getParameter("pageno"));
          System.out.println("pageNo : " + pageNo);
          
          Vo_Mypage_Paging paging = new Vo_Mypage_Paging();
          paging.setPageNo(pageNo);
          paging.setTotalCount(list.size());
          
          if(list.isEmpty()) {
             response.sendRedirect("RECOREMain/RECOREMypage/Mypage_FundingList.jsp");
          }else {
             request.setAttribute("list_fun", map.get("list_fun"));
             request.setAttribute("list_fun_d", map.get("list_fun_d"));
             request.setAttribute("page", paging);
             dispatch("./RECOREMain/RECOREMypage/Mypage_FundingList.jsp", request, response);
          }
         
      }else if(command.equals("wishlist")) {
         System.out.println(map.get("list_wish"));
         List list = (List)map.get("list_wish");
         int pageNo = Integer.parseInt(request.getParameter("pageno"));
         System.out.println("pageNo : " + pageNo);
         
         Vo_Mypage_Paging paging = new Vo_Mypage_Paging();
         paging.setPageNo(pageNo);
         paging.setTotalCount(list.size());
         
         if(list.isEmpty()) {
            response.sendRedirect("RECOREMain/RECOREMypage/Mypage_WishList.jsp");
         }else {
            request.setAttribute("list_wish", map.get("list_wish"));
            System.out.println("서블릿 map의 wish : " + map.get("list_wish"));
            request.setAttribute("page", paging);
            dispatch("./RECOREMain/RECOREMypage/Mypage_WishList.jsp", request, response);
         }
         
      }else if(command.equals("deletewishone")){
         int prod_no = Integer.parseInt(request.getParameter("prod_no"));
         boolean res = mdao.My_deleteWish_One(vo.getAcc_no(), prod_no);
         
         if(res) {
            jsResponse("삭제 성공", "mypage.do?command=wishlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=wishlist", response);
         }
         
      }else if(command.equals("deletecheckedwish")) {
         String prod_no = request.getParameter("arr_chk");
         String[] list_prod_no = prod_no.split(",");
         System.out.println("넘어온 arr" + list_prod_no[0]);
         boolean res = false;
         for(int i=0;i<list_prod_no.length;i++) {
            res = mdao.My_deleteWish_One(vo.getAcc_no(), Integer.parseInt(list_prod_no[i]));
         }
         
         if(res) {
            jsResponse("삭제 성공", "mypage.do?command=cartlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("deletewishall")) {
         boolean res = mdao.My_deleteWish_All(vo.getAcc_no());
         
         if(res) {
//            jsResponse("삭제 성공", "RECOREMain/RECOREMypage/Mypage_WishList.jsp", response);
            jsResponse("삭제 성공", "mypage.do?command=wishlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=wishlist", response);
         }
         
      }else if(command.equals("mileage")) {
         request.setAttribute("acc_point", vo.getAcc_point());
         request.setAttribute("list_order", map.get("list_order"));
         List list = (List)map.get("list_order");
         
         int pageNo = Integer.parseInt(request.getParameter("pageno"));
         System.out.println("pageNo : " + pageNo);
         
         Vo_Mypage_Paging paging = new Vo_Mypage_Paging();
         paging.setPageNo(pageNo);
         paging.setTotalCount(list.size());
         
         request.setAttribute("page", paging);
         
         System.out.println(list.size());
         dispatch("./RECOREMain/RECOREMypage/Mypage_Mileage2.jsp", request, response);
         
      }else if(command.equals("boardlist")) {
    	 System.out.println("command : " + command);
    	 List list = (List)map.get("list_qna");
         int pageNo = Integer.parseInt(request.getParameter("pageno"));
         System.out.println("pageNo : " + pageNo);
         
         Vo_Mypage_Paging paging = new Vo_Mypage_Paging();
         paging.setPageNo(pageNo);
         paging.setTotalCount(list.size());
    	 
    	 if(list.isEmpty()) {
    		 response.sendRedirect("./RECOREMain/RECOREMypage/Mypage_BoardList2.jsp");
    	 }else {
    		 request.setAttribute("list_qna", map.get("list_qna"));
             request.setAttribute("page", paging);
//    		 System.out.println("서블릿에서 listqna : " + map.get("list_qna"));
    		 dispatch("./RECOREMain/RECOREMypage/Mypage_BoardList2.jsp", request, response);
    	 }
         
      }else if(command.equals("boarddetail")) {
    	  int qna_no = Integer.parseInt(request.getParameter("qnano"));
    	  Vo_QnA vo_qna = mdao.My_selectBoardOne(qna_no);
    	  request.setAttribute("vo_qna", vo_qna);
    	  
    	  Vo_Product vo_prod = pdao.P_selectOne(vo_qna.getQna_prod_no());
    	  request.setAttribute("vo_prod", vo_prod);
    	  request.setAttribute("catd", vo_prod.getProd_catd());
    	  
    	  dispatch("./RECOREMain/RECOREMypage/Mypage_Board_Detail.jsp", request, response);
    	  
      }else if(command.equals("deleteboard")) {
    	  boolean result = Boolean.valueOf(request.getParameter("result"));
    	  int qna_no = Integer.parseInt(request.getParameter("qnano"));
    	  if(result) {
    		  boolean res = mdao.My_deleteBoard(vo.getAcc_no(), qna_no);
    		  if(res) {
    	            jsResponse("삭제 성공", "mypage.do?command=boardlist&pageno=1", response);
    	         }else {
    	            jsResponse("삭제 실패", "mypage.do?command=boarddetail&qnano="+qna_no, response);
    	         }
    	  }else {
    		  dispatch("mypage.do?command=boarddetail&qnano="+qna_no, request, response);
    	  }
    	  
      }else if(command.equals("cartlist")) {
         System.out.println("command : " + command);
         List list = (List)map.get("list_cart");
         
         if(list.isEmpty()) {
            response.sendRedirect("./RECOREMain/RECOREMypage/Mypage_Cart.jsp");
//            dispatch("./RECOREMain/RECOREMypage/Mypage_Cart.jsp", request, response);
         }else {
            request.setAttribute("list_cart", map.get("list_cart"));
            System.out.println("서블릿에서 listcart : " + map.get("list_cart"));
            dispatch("./RECOREMain/RECOREMypage/Mypage_Cart.jsp", request, response);
         }
         
      }else if(command.equals("deletecartone")) {
         int prod_id = Integer.parseInt(request.getParameter("prod_id"));
         boolean res = mdao.My_deleteCart_One(vo.getAcc_no(), prod_id);
         
         if(res) {
            jsResponse("삭제 성공", "mypage.do?command=cartlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("deletecartall")) {
         boolean res = mdao.My_deleteCart_All(vo.getAcc_no());
         if(res) {
            jsResponse("삭제 성공", "./RECOREMain/RECOREMypage/Mypage_Cart.jsp", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("deletecheckedcart")) {
         String prod_id = request.getParameter("arr_chk");
         String[] list_prod_id = prod_id.split(",");
         System.out.println("넘어온 arr" + list_prod_id[0]);
         boolean res = false;
         for(int i=0;i<list_prod_id.length;i++) {
            res = mdao.My_deleteCart_One(vo.getAcc_no(), Integer.parseInt(list_prod_id[i]));
         }
         
         if(res) {
            jsResponse("삭제 성공", "mypage.do?command=cartlist", response);
         }else {
            jsResponse("삭제 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("cartupdate")) {
         int prod_id = Integer.parseInt(request.getParameter("prod_id"));
         System.out.println("업데이트 할 prod_id" + prod_id);
         int cart_amount = Integer.parseInt(request.getParameter("cart_amount"));
         System.out.println("업데이트 할 수량 : " + cart_amount);
         boolean res = mdao.My_updateCart(prod_id, cart_amount);
         
         if(res) {
            jsResponse("변경 성공", "mypage.do?command=cartlist", response);
         }else {
            jsResponse("변경 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("insertwish")) {
         int prod_no = Integer.parseInt(request.getParameter("prod_no"));
         boolean res = pdao.P_insertWish(vo.getAcc_no(), prod_no);
         
         if(res) {
            jsResponse("등록 성공", "mypage.do?command=cartlist", response);
         }else {
            jsResponse("등록 실패", "mypage.do?command=cartlist", response);
         }
         
      }else if(command.equals("insertcart")) {
         int prod_id = 0; //수정@@@@@
         boolean res = pdao.P_insertCart(vo.getAcc_no(), prod_id);
         
         if(res) {
            jsResponse("등록 성공", "mypage.do?command=wishlist", response);
         }else {
            jsResponse("등록 실패", "mypage.do?command=wishlist", response);
         }
         
      }
      
   }
   
   private void dispatch(String url, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      RequestDispatcher dispatch = request.getRequestDispatcher(url);
      dispatch.forward(request, response);
      
   }
   
   private void jsResponse(String msg, String url, HttpServletResponse response) throws IOException {
      String s = "<script type='text/javascript'>"+"alert('"+msg+"');" + "location.href='" + url +"';" + "</script>";
      
      PrintWriter out = response.getWriter();
      out.print(s);
   }
   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }

}