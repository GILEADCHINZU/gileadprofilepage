<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="header.jsp"></c:import>
<c:import url="sidebar.jsp"></c:import>





    <h1>Form not submitted due to invalid email or incorrect spam answer or both</h1><br/>
    <h3>Check your information again, thanks.</h3> 
    <h3>The following information was supplied by you </h3>
      <p> Name: <c:out value="${vis.name}"></c:out></p>
      <p> Email: <c:out value="${vis.email}"></c:out></p>
      <p> Message: <c:out value="${vis.message}"></c:out></p>  		  
		  </div><!--close content_container-->			  
		</div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content-->  	
  </div><!--close main-->

 <c:import url="footer.jsp"></c:import>