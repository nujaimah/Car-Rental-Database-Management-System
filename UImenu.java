package jdbcoracleconnectiontemplate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
import java.sql.ResultSet;

public class UImenu {

    private Connection conn;
    static final String QUERY1 = "SELECT LiabNumber, LiabType, LiabCoverage, LiabExpenses FROM Liability";
    static final String QUERY = "SELECT LiabNumber, LiabType, LiabCoverage, LiabExpenses FROM Liability";


    UImenu(Connection conn1) {
        this.conn = conn;                         
    }
    
    public void start(Connection conn1){
        
        System.out.println(" ");    
        System.out.println("---Menu---");
        System.out.println("Please select one of the options:");
        System.out.println("1) Add a table");
        System.out.println("2) Drop a table");
        System.out.println("3) Insert data into a table");
        System.out.println("4) Update table");
        System.out.println("5) Select queries");
        System.out.println("6) Exit");
        
        Scanner myObj = new Scanner(System.in);
        String res = myObj.nextLine();
        
        switch (res){
        case "1":
                createtable(conn1);
                break;
        case "2":
                droptable(conn1);
                break;
        case "3":
                insertrecords(conn1);
                break;
        case "4":
                updaterecords(conn1);
                break;
        case "5":
                selectrecords(conn1);
                break;
        case "6":
            System.out.println("Exiting menu...");
            System.exit(0);            
        }
    }

   public void createtable(Connection conn1) {
      try (Statement stmt = conn1.createStatement()){                         
          String sql = "CREATE TABLE CUSTOMER " +
                   "(CusNumber INTEGER not NULL, " +
                   " CusName VARCHAR(255) not NULL, " + 
                   " CusEmail VARCHAR(255) unique not NULL, " + 
                   " CusUsername VARCHAR(255) unique not NULL, " + 
                   " CusPassword VARCHAR(255) not NULL, " + 
                   " CusPhone VARCHAR(255) not NULL, " + 
                   " CusCity VARCHAR(255) not NULL, " + 
                   " CusStreet VARCHAR(255) not NULL, " + 
                   " CusProvince VARCHAR(255) not NULL, " + 
                   " CusPostalCode VARCHAR(255) not NULL, " + 
                   " PRIMARY KEY ( CusNumber ))"; 
          
          String sql2 = "CREATE TABLE LIABILITY " +
                   "(LiabNumber INTEGER not NULL, " +
                   " LiabType VARCHAR(255) not NULL, " + 
                   " LiabCoverage VARCHAR(255) not NULL, " + 
                   " LiabExpenses INTEGER not NULL, " + 
                   " PRIMARY KEY ( LiabNumber ))"; 
         stmt.executeUpdate(sql);
                  stmt.executeUpdate(sql2);

         System.out.println("Created tables...");   	  
      } catch (SQLException e) {
         e.printStackTrace();       
      } 
      finally {
          start(conn1);
      }
   }
      
      public void droptable(Connection conn1) {
      try(Statement stmt = conn1.createStatement()){		      
            String sql = "DROP TABLE CUSTOMER";
            String sql2 = "DROP TABLE LIABILITY";
            stmt.executeUpdate(sql);
            stmt.executeUpdate(sql2);
            System.out.println("Deleted tables...");   	  
      } catch (SQLException e) {
         e.printStackTrace();
      }
     finally {
          start(conn1);
      } 
   } 
      
     public void insertrecords(Connection conn1) {
      try(Statement stmt = conn1.createStatement()){		      
         System.out.println("Inserting records into the table...");          
         String sql = "INSERT INTO LIABILITY VALUES (10, 'Liability', 'ttrg', 2001)";
         stmt.executeUpdate(sql);
         sql = "INSERT INTO LIABILITY VALUES (110, 'Liability', 'ttrg', 2002)";
         stmt.executeUpdate(sql);
         sql = "INSERT INTO LIABILITY VALUES (1596, 'Liability', 'ttrg', 2030)";
         stmt.executeUpdate(sql);
         System.out.println("Inserted data into tables...");   	  
      } catch (SQLException e) {
         e.printStackTrace();
      } 
            finally {
          start(conn1);
      } 
   }
     
   public void updaterecords(Connection conn1) {
      try(Statement stmt = conn1.createStatement()){		      
         String sql = "UPDATE LIABILITY " +
            "SET LiabExpenses = 30 WHERE LiabNumber = 110";
         stmt.executeUpdate(sql);
         ResultSet rs = stmt.executeQuery(QUERY1);
         
         while(rs.next()){
            System.out.print("LiabNumber: " + rs.getInt("LiabNumber"));
            System.out.print(", LiabType: " + rs.getString("LiabType"));
            System.out.print(", LiabConverage: " + rs.getString("LiabCoverage"));
            System.out.println(", LiabExpenses: " + rs.getInt("LiabExpenses"));
          
         }
         rs.close();
      } catch (SQLException e) {
         e.printStackTrace();
      } 
            finally {
          start(conn1);
      } 
   }
   
    public void selectrecords(Connection conn1) {
        
        try(Statement stmt = conn1.createStatement()){
            System.out.println("Original data in table...");
            ResultSet rs = stmt.executeQuery(QUERY);
         while(rs.next()){
            System.out.print("LiabNumber: " + rs.getInt("LiabNumber"));
            System.out.print(", LiabType: " + rs.getString("LiabType"));
            System.out.print(", LiabCoverage: " + rs.getString("LiabCoverage"));
            System.out.println(", LiabExpenses: " + rs.getInt("LiabExpenses"));
         }

         System.out.println("New data for query conditions...");
         String sql = "SELECT LiabNumber, LiabType, LiabCoverage, LiabExpenses FROM Liability" +
            " WHERE LiabNumber >= 101 ";
         rs = stmt.executeQuery(sql);

         while(rs.next()){
            System.out.print("LiabNumber: " + rs.getInt("LiabNumber"));
            System.out.print(", LiabType: " + rs.getString("LiabType"));
            System.out.print(", LiabCoverage: " + rs.getString("LiabCoverage"));
            System.out.println(", LiabExpenses: " + rs.getInt("LiabExpenses"));         }
         rs.close();
      } catch (SQLException e) {
         e.printStackTrace();
      } 
            finally {
          start(conn1);
      }   
   }
   }
   
   
  
    
