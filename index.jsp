<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
 <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style_login.css">

  
</head>

<body>
  <div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          
          <form action="${pageContext.request.contextPath}/Login_Control" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" name="fname" required autocomplete="off" />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text" name="lname" required autocomplete="off"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" name="emailAddr" value="${password_ErrorMsg }" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password" name="pwd" required autocomplete="off"/>
          </div>
          
          <button type="submit" class="button button-block"/>Register</button>
          
          </form>

        </div>
        
        <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="${pageContext.request.contextPath}/Login2_Control" method="post">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" name="email_addr" required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" name="pwd2" required autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block"/>Log In</button>
          
          </form>

        </div>
        
       
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->

 
   
   
    <c:if test='${regMsg.equals("Registered Successful") }'>
    
    
    
    <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/profile" 
    user="gilead" password="JoLLy5050"/>
    
    
    <sql:query var="result" dataSource="${ds}">
         SELECT * From users where Email=?;
         <sql:param value="${param.emailAddr }"></sql:param>
    </sql:query>
    
    <c:choose>
    
       <c:when test="${result.rowCount > 0 }">
       
            <div class="centered" style= "width:20%; margin:0 auto;">
                   <h3>This email already exist</h3>
             </div>
       
       </c:when>
       
       <c:otherwise>
       
                <sql:update dataSource="${ds}" var="count">
                    INSERT INTO users values (?,?,?,?);
                   <sql:param value="${param.fname }"></sql:param>
                   <sql:param value="${param.lname }"></sql:param>
                   <sql:param value="${param.emailAddr }"></sql:param>
                   <sql:param value="${param.pwd }"></sql:param>
                </sql:update>
            
       
               <div class="centered" style= "width:20%; margin:0 auto;">
                    <h3>${regMsg}</h3>
               </div>
       
       </c:otherwise>
       
    </c:choose>
    
    
          
    </c:if>
    
    
    
    <c:if test='${login.equals("login user") }'>
    
    
     <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/profile" 
    user="gilead" password="JoLLy5050"/>
    
    
    <sql:query var="result" dataSource="${ds}">
         SELECT * From users where Email=? and Password=?;
         <sql:param value="${param.email_addr }"></sql:param>
         <sql:param value="${param.pwd2 }"></sql:param>
    </sql:query>
    
    <c:choose>
    
    
    <c:when test="${result.rowCount > 0 }">
    
         <jsp:forward page="home.jsp" />
         
    </c:when>
    
    <c:otherwise>
    
       <div class="centered" style= "width:40%; margin:0 auto;">
                   <h3>user not registered! please register to login</h3>
       </div>
    
    </c:otherwise>
    
    </c:choose>
    
    
    </c:if>
        
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>
    
    
   
    
    

</body>
</html>
