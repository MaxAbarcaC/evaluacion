package TestJunit;

import static org.junit.Assert.assertEquals;

import java.sql.*;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import conexion.Conexion;

public class ConexionTest {

	public ConexionTest() {
		
	}
	
	@BeforeClass
	public static void setUpClass() {
		
	}
	
	@AfterClass
	public static void tearDownClass() {
		
	}
	
	@Before
	public void setUp() {
		
	}
	
	@After
	public void tearDown() {
		
	}
	
	@Test
	public void testConexion() throws SQLException {
		Conexion conx = new Conexion();
		Connection con = conx.getConexion();
		Statement st = con.createStatement();
	    ResultSet rs;
	    rs = st.executeQuery("select * from usuario where username='max' and password='admin'");
		System.out.println("Conectado");
		assertEquals(
				rs.next(), true
				);		
	}
}
