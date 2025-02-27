package jdbcoracleconnectiontemplate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.Scanner;
 
/**
 * This program demonstrates how to make database connection with Oracle
 *
 */
public class JdbcOracleConnectionTemplate {
 
    public static void main(String[] args) {
 
        Connection conn1 = null;

        try {
            // registers Oracle JDBC driver - though this is no longer required
            // since JDBC 4.0, but added here for backward compatibility
            Class.forName("oracle.jdbc.OracleDriver");
           
            String dbURL1 = "jdbc:oracle:thin:n88ahmed/10295409@oracle.scs.ryerson.ca:1521:orcl";  // that is school Oracle database and you can only use it in the labs
																						
           //  String dbURL1 = "jdbc:oracle:thin:username/password@localhost:1521:xe";
			/* This XE or local database that you installed on your laptop. 1521 is the default port for database, change according to what you used during installation. 
			xe is the sid, change according to what you setup during installation. */
			
			conn1 = DriverManager.getConnection(dbURL1);
            if (conn1 != null) {
                System.out.println("Connected with connection #1");
            }
 			
            //In your database, you should have a table created already with at least 1 row of data. In this select query example, table testjdbc was already created with at least 2 rows of data with columns NAME and NUM.
			//When you enter your data into the table, please make sure to commit your insertions to ensure your table has the correct data. So the commands that you need to type in Sqldeveloper are
			// CREATE TABLE TESTJDBC (NAME varchar(8), NUM NUMBER);
            // INSERT INTO TESTJDBC VALUES ('ALIS', 67);
            // INSERT INTO TESTJDBC VALUES ('BOB', 345);
            // COMMIT;
		
           // String query = "select NAME, NUM from TESTJDBC";
            
            	//try (Statement stmt = conn1.createStatement()) {

		//	ResultSet rs = stmt.executeQuery(query);

			//If everything was entered correctly, this loop should print each row of data in your TESTJDBC table.
			// And you should see the results as follows:
			// Connected with connection #1
			// ALIS, 67
			// BOB, 345
			
		//	while (rs.next()) {
		//		String name = rs.getString("NAME");
		//		int num = rs.getInt("NUM");
		//		System.out.println(name + ", " + num);
		//	}
                    //	} catch (SQLException e) {
		//		System.out.println(e.getErrorCode());
		//	}
                
                UImenu classObj = new UImenu(conn1);
                classObj.start(conn1);
                        
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (conn1 != null && !conn1.isClosed()) {
                    conn1.close();
                }
     
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }			
    }
}
