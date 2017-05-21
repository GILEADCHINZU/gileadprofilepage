<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="header.jsp"></c:import>
<c:import url="sidebar.jsp"></c:import>




    <h1>Form Submitted to the database</h1><br/> 
    <h3>The following information was supplied by you </h3>
      <p> Name: <c:out value="${nam}"></c:out></p>
      <p> Email: <c:out value="${email}"></c:out></p>
      <p> Password: <c:out value="${pwd}"></c:out></p>  		  
		  </div><!--close content_container-->			  
		</div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content-->  	
  </div><!--close main-->

 <c:import url="footer.jsp"></c:import>