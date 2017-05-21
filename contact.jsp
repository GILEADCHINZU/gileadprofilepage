<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:import url="header.jsp">
<c:param name="title" value="Welcome to Mycontact Page"></c:param>
</c:import>
<c:import url="sidebar.jsp"></c:import>
		  <div class="form_settings">
            <h1>Contact Us</h1>
            <p style="padding-bottom: 15px;">Contact me for any questions you may have about Java/J2ee web developments, IT service & consulting or any technology your business may need.</p>
            <form action="${pageContext.request.contextPath}/Form_Control" method="post">          
			<p><span>Name</span><input class="contact" type="text" name="your_name" value="${vis.name}" /></p>
            <p><span>Email Address</span><input class="contact" type="text" name="your_email" value="${vis.email}" /></p>
			<p><span>Message</span><textarea class="contact textarea" rows="8" cols="50" name="your_message"></textarea></p>
            <p style="padding: 10px 0 10px 0;">Please enter the answer to this simple maths question (to prevent spam)</p>
			<p><span>Maths Question: 9 + 3 = ?</span><input type="text" name="user_answer" class="contact" /><input type="hidden" name="answer" value="4d76fe9775" /></p>
            <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="contact_submitted" value="Send" /></p>
            </form>
          </div><!--close form_settings-->
		</div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content-->  	
  </div><!--close main-->
   <c:import url="footer.jsp"></c:import>
   