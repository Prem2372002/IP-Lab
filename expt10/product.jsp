<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="productobj.productobj1"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ExpNo10</title>
       
    </head>
    <body>
        <%
            out.println("hello");
            productobj1  st=new productobj1("product3","$20.50","yes");
            productobj1  st1=new productobj1 ("product1","$10.99","no");
            productobj1  st2=new productobj1 ("product2","$5.99","yes");
            ArrayList<productobj1 > obj=new ArrayList<productobj1 >();
            obj.add(st);
            obj.add(st1);
             obj.add(st2);
//            for(student a:obj){
//                out.println(a.name);
//            }

pageContext.setAttribute("obj", obj);
        %>
        <table border="2px"><tr><th>Name</th><th>price</th><th>instock</th></tr>
        <c:forEach items="${pageScope.obj}" var="i">
           
                <tr> <td>${i.getName()}</td>
                    <td>${i.getprice()}</td>
                    <td>${i.getstock()}</td>
                </tr>
        </c:forEach>  
        </table>
       </table>
    </body>
</html>

