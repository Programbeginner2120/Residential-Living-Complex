package assignment11;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBC {

	
	/*
	 * This method executes a query on the resident table of the residentialLivingComplex database,
	 * taking in String lastName and Connection to the database conn and printing out the first name
	 * of all those records with the same last name as the parameter lastName
	 */
	public static void findResidentByLastName(String lastName, Connection conn) {
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement("SELECT * FROM resident WHERE lastName = ?");
			ps.setString(1, lastName);
			ResultSet rs = ps.executeQuery();
			
			
			System.out.println("RESULTS OF QUERY EXECUTION:\n");
			while(rs.next())
				System.out.println(rs.getString("firstName"));

		}
		catch (SQLException e){
			e.printStackTrace();
		}
	}

	public static void main (String [] args) throws SQLException {

		Statement s = null;
		Connection conn = null;

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));


		try {
			System.out.println("Please enter a valid username to log into the database"); // USERNAME: alternateUser
			String username = br.readLine();

			System.out.println("Please enter a valid password to log into the database"); // PASSWORD: 340$Uuxwp7Mcxo7Khy
			String password = br.readLine();
			
			br.close();

			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

			String dbURL = "jdbc:sqlserver://localhost:1433;databaseName=residentialLivingComplex;user=" + username + ";password=" + password; 

			conn = DriverManager.getConnection(dbURL);

			if (conn != null)
				System.out.println("Connected\n");
			else
				System.out.println("Not Connected\n");

			s = conn.createStatement();

			JDBC.findResidentByLastName("Trump", conn); // Call to static method for query
			// TRY OUT THESE LAST NAMES FOR FURTHER TESTING: "Clinton", "Sanders", ,"Pacheco", "Killeen"
		}


		catch (Exception e) {
			e.printStackTrace();
			e.getCause();
		}

		finally {
			if (s != null) {
				System.out.println("\nClosing Statement...");
				s.close();
			}
			if (conn != null) {
				System.out.println("Closing Connection...");
				conn.close();
			}
		}

	}

}
