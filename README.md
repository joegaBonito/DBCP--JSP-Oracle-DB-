# DBCP--JSP-Oracle-DB-
Add the following code into the context.xml in Tomcat(Server) folder:

	<Resource
		auth="Container"
		driverClassName="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@localhost:1522:xe"
		username="scott"
		password="tiger"
		name="jdbc/Oracle11g"
		type="javax.sql.DataSource"
		maxActive="50"
		maxWait="1000"
		factory="org.apache.tomcat.jdbc.pool.DataSourceFactory"
	/>

