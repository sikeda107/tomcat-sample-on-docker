<%@ page contentType="text/html; charset=UTF-8" %>
<html>
  <head>
    <title>Sample Application JSP Page</title>
  </head>
  <body bgcolor="white">
    <table border="0">
      <tr>
        <td align="center">
          <img src="images/cat.jpg" width="128" height="128"/>
        </td>
        <td>
          <h1>Sample Application JSP Page</h1>
          This is the output of a JSP page that is part of the Hello, World
          application.
        </td>
      </tr>
    </table>

    <%= new String("Hello!") %> 
    <%
    out.println("暗黙オブジェクトoutの使用例です。");
    out.println("<br />");
    //forループ内で変数xを1ずつ増加させ、その結果をprintlnメソッドで表示
    for (int x = 1; x <= 10; x++) {
        out.println("ループ: " + x);
        out.println("<br />");
    }
    %>
  </body>
</html>
