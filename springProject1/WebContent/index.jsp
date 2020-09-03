<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/poc">
select id, username, phone from poc
</sql:query>

<html>
  <head>
    <title>MySQL DB Test</title>
  </head>
  <body>

  <h2>Query From Database Results</h2>

	<c:forEach var="row" items="${rs.rows}">
	    id ${row.id}<br/>
	    name ${row.username}<br/>
	    phone ${row.phone}<br/>
	</c:forEach>

  </body>
</html>