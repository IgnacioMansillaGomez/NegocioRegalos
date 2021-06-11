package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



public class Gestor {
        private Connection conex;
	private final String CONEX = "jdbc:sqlserver://NACHO-PC:1433;databaseName=Negocio_Regalos";
	private final String USER = "sa";
	private final String PASS = "nachito47874";

	private void openConex() {
            try {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		conex = DriverManager.getConnection(CONEX, USER, PASS);
            } catch (Exception ex) {
		ex.printStackTrace();
            }
	}
	private void closeConex(){
            try{
                if (conex != null && !conex.isClosed()) {
                    conex.close();
		}
            }
            catch (SQLException ex){
                ex.printStackTrace();
            }
	}
	public ArrayList<Articulo> getArticulos() {
		ArrayList<Articulo> lista = new ArrayList<Articulo>();
		try{
                    openConex();
                    String sql = "select * from Articulos";
                    Statement st = conex.createStatement();
                    ResultSet rst = st.executeQuery(sql);
                    while (rst.next()){
                        int codigo = rst.getInt("codigo");
                        float precio = rst.getFloat("precio");
                        String descripcion = rst.getString("descripcion");
                        lista.add(new Articulo(codigo,precio,descripcion));
                    }
                    rst.close();
		}catch (SQLException ex){
                    ex.printStackTrace();
		} finally {
                    closeConex();
		}
		return lista;
	}
        public ArrayList<Pareja> getParejas() {
		ArrayList<Pareja> lista = new ArrayList<Pareja>();
		try{
                    openConex();
                    String sql = "select * from Parejas";
                    Statement st = conex.createStatement();
                    ResultSet rst = st.executeQuery(sql);
                    while (rst.next()){
                        int codigo = rst.getInt("codigoPareja");
                        String nombre = rst.getString("nombre");
                        lista.add(new Pareja(codigo,nombre));
                    }
                    rst.close();
		}catch (SQLException ex){
                    ex.printStackTrace();
		} finally {
                    closeConex();
		}
		return lista;
	}
        public void insertarArticulo(Articulo art) {
            try{
                openConex();
                PreparedStatement pst = conex.prepareStatement("INSERT INTO Articulos VALUES (?, ?)");
                pst.setFloat(1,art.getPrecio());
                pst.setString(2,art.getDescripcion());
                pst.executeUpdate();
            } catch(Exception exc){
                exc.printStackTrace();
            }finally{
                closeConex();
                
            }
	}
        public void insertarPareja(Pareja p) {
            try{
                openConex();
                PreparedStatement pst = conex.prepareStatement("INSERT INTO Parejas VALUES (?)");
                pst.setString(1,p.getNombrePareja());
                pst.executeUpdate();
            } catch(Exception exc){
                exc.printStackTrace();
            }finally{
                closeConex();
                
            }
	}
        public Pareja obtenerParejaPorCodigo(int codigo) {
            Pareja parM=null;
            try {
			openConex();
			String sql = "select * from Parejas WHERE codigoPareja=?";
			PreparedStatement st = conex.prepareStatement(sql);
			st.setInt(1,codigo); 
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
                            int codigoPareja = rs.getInt("codigoPareja");
                            String nombre = rs.getString("nombre");
                            parM= new Pareja(codigoPareja,nombre);
			}
			rs.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			closeConex();
		}
            return parM;
	}
        public void modificarPareja(Pareja pareja) {
		try {
			openConex();
			String sql = "UPDATE Parejas SET nombre=? WHERE codigoPareja=?";
			PreparedStatement st = conex.prepareStatement(sql);
			st.setString(1,pareja.getNombrePareja());
                        st.setInt(2, pareja.getCodigoPareja());
			st.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
                    closeConex();
		}
	}
        public void eliminarCompra(int codigoPareja){
                try {
			openConex();
			String sql = "DELETE FROM Compra WHERE codigoPareja =?;";
			PreparedStatement st = conex.prepareStatement(sql);
			st.setInt(1,codigoPareja); 
			st.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			closeConex();
		}
        }
        public void eliminarDeposito(int codigoPareja){
                try {
			openConex();
			String sql = "DELETE FROM Deposito WHERE codigoPareja =?;";
			PreparedStatement st = conex.prepareStatement(sql);
			st.setInt(1,codigoPareja); 
			st.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			closeConex();
		}
        }
        public boolean eliminarPareja(int codigoPareja) {
            boolean result=false;
                try {
                        eliminarCompra(codigoPareja);
                        eliminarDeposito(codigoPareja);
			openConex();
			String sql = "DELETE FROM Parejas WHERE codigoPareja =?;";
			PreparedStatement st = conex.prepareStatement(sql);
			st.setInt(1,codigoPareja); 
			st.executeUpdate();
                        result=true;
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			closeConex();
		}
            return result;
	}
        public boolean existeUsuario(String username, String password) {
	if (username.equals("parcial") && password.equals("lab4")) {
            return true;
	}
           return false;
	}
        public Articulo obtenerArticuloPorCodigo(int codigoA) {
            Articulo artM=null;
            try {
			openConex();
			String sql = "select * from Articulos WHERE codigo=?";
			PreparedStatement st = conex.prepareStatement(sql);
			st.setInt(1,codigoA); 
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
                            int codigo = rs.getInt("codigo");
                            float precio = rs.getFloat("precio");
                            String descripcion = rs.getString("descripcion");
                            artM = new Articulo(codigo,precio,descripcion);
			}
			rs.close();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			closeConex();
		}
            return artM;
	}
        public void modificarArticulo(Articulo articulo) {
		try {
			openConex();
			String sql = "UPDATE Articulos SET precio=?, descripcion=? WHERE codigo=?";
			PreparedStatement st = conex.prepareStatement(sql);
			st.setFloat(1, articulo.getPrecio());
			st.setString(2,articulo.getDescripcion());
                        st.setInt(3, articulo.getCodigo());
			st.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
                    closeConex();
		}
	}
        public void eliminarArticulo(int codigo) {
		try {
			openConex();
			String sql = "DELETE FROM Articulos WHERE codigo = ?;";
			PreparedStatement st = conex.prepareStatement(sql);
			st.setInt(1, codigo); 
			st.executeUpdate();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			closeConex();
		}
	}
        public void insertarDeposito(Deposito deposito) {
            try{
                openConex();
                PreparedStatement pst = conex.prepareStatement("INSERT INTO Deposito VALUES (?,?,?,?)");
                pst.setFloat(1,deposito.getImporte());
                pst.setInt(2,deposito.getCodigoPareja());
                pst.setString(3,deposito.getNombreDepositante());
                pst.setString(4,deposito.getApellidoDepositante());
                pst.executeUpdate();
            } catch(Exception exc){
                exc.printStackTrace();
            }finally{
                closeConex();
            }
	}
        public void insertarCompra(Compra compra) {
            try{
                openConex();
                PreparedStatement pst = conex.prepareStatement("INSERT INTO Compra VALUES (?,?)");
                pst.setInt(1,compra.getCodigoPareja());
                pst.setInt(2,compra.getCodigo());
                pst.executeUpdate();
            } catch(Exception exc){
                exc.printStackTrace();
            }finally{
                closeConex();
                
            }
	}
        public ArrayList<ArticulosParejaDTO>obtenerCompras(int codigoPareja){
            ArrayList<ArticulosParejaDTO>listaArticulosPareja = new ArrayList<>();
            try {
                openConex();
		String sql = "SELECT codigoCompra , descripcion , precio\n" +
                            "FROM Compra c JOIN Articulos a on c.codigo=a.codigo JOIN Parejas"
                            + " p on c.codigoPareja=p.codigoPareja\n" +
                            "WHERE c.codigoPareja=?";
		PreparedStatement st = conex.prepareStatement(sql);
		st.setInt(1,codigoPareja); 
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
                int codigoCompra=rs.getInt("codigoCompra");
                String descripcion=rs.getString("descripcion");
                float precio= rs.getFloat("precio");
                ArticulosParejaDTO artp= new ArticulosParejaDTO(codigoCompra,descripcion,precio);
                listaArticulosPareja.add(artp);
                }
		rs.close();
		} catch (SQLException ex) {
                    ex.printStackTrace();
		} finally {
                    closeConex();
		}
            return listaArticulosPareja;
        }
        public boolean eliminarArticuloCompra(int codigoCompra){
            boolean resultadito=false;
            try {
			openConex();
			String sql = "DELETE FROM Compra WHERE codigoCompra = ?;";
			PreparedStatement st = conex.prepareStatement(sql);
			st.setInt(1, codigoCompra); 
			st.executeUpdate();
                        resultadito=true;
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			closeConex();
		}
            return resultadito;
            
        }
        public TotalesDTO totales(int codigoPareja){
            TotalesDTO t= null;
            try {
                openConex();
		String sql ="SELECT p.codigoPareja,SUM(importe)'Dinero disponible',SUM(precio) 'Total Compra',SUM(importe)-SUM(precio)'Devolucion'\n" +
                            "FROM Parejas p JOIN Compra c on p.codigoPareja=c.codigoPareja "
                            + "JOIN Deposito d on p.codigoPareja=d.codigoPareja "
                            + "JOIN Articulos a on c.codigo=a.codigo\n" +
                            "WHERE p.codigoPareja=?\n" +
                            "group by p.codigoPareja";
		PreparedStatement st = conex.prepareStatement(sql);
		st.setInt(1,codigoPareja); 
		ResultSet rs = st.executeQuery();
		if(rs.next()) {
                    float totalDeposito=rs.getFloat("Dinero disponible");
                    float totalCompra=rs.getFloat("Total Compra");
                    float devolucion=rs.getFloat("Devolucion");
                    t=new TotalesDTO(totalCompra,totalDeposito,devolucion);
                }
		rs.close();
		} catch (SQLException ex) {
                    ex.printStackTrace();
		} finally {
                    closeConex();
		}
            return t;
        }
        public ArrayList<listadoParejasDepDTO> getParejasDepositos(){
            ArrayList<listadoParejasDepDTO> listaParejasDep = new ArrayList<>();
            try {
                openConex();
		String sql ="SELECT p.nombre,COUNT(codigoDeposito)'Cantidad Depositos',SUM(importe)'Total Depositado'\n" +
                            "FROM Parejas p JOIN Deposito d on p.codigoPareja=d.codigoPareja \n" +
                            "group by p.nombre";
		Statement st = conex.createStatement();
                ResultSet rst = st.executeQuery(sql);
                while (rst.next()){
                  String nombre = rst.getString("nombre");
                  int cantidadDepositos=rst.getInt("Cantidad Depositos");
                  float totalDepositado=rst.getFloat("Total Depositado");
                  listaParejasDep.add(new listadoParejasDepDTO(nombre,cantidadDepositos,totalDepositado));
                }
                rst.close();
		} catch (SQLException ex) {
                    ex.printStackTrace();
		} finally {
                    closeConex();
		}
            return listaParejasDep;
        }
        public float getTotalFacturado(){
           float total=0;
            try {
                openConex();
		String sql ="SELECT SUM(precio)'Total facturado'\n" +
                            "FROM Articulos a JOIN Compra c on a.codigo=c.codigo";
		Statement st = conex.createStatement();
                ResultSet rst = st.executeQuery(sql);
                if(rst.next()){
                  total=rst.getFloat("Total facturado");
                }
                rst.close();
		} catch (SQLException ex) {
                    ex.printStackTrace();
		} finally {
                    closeConex();
		}
            return total;
        }
        public ArrayList<productosMasSolicitados> getArticulosMasSolicitados(){
            ArrayList<productosMasSolicitados> listita = new ArrayList<>();
            try {
                openConex();
		String sql ="SELECT TOP 5 a.descripcion'Articulo',COUNT(*)'Cantidad de parejas que solicitaron'\n" +
                            "FROM Articulos a JOIN Compra c on a.codigo=c.codigo\n" +
                            "group by a.descripcion";
		Statement st = conex.createStatement();
                ResultSet rst = st.executeQuery(sql);
                while(rst.next()){
                  String descripcion=rst.getString("Articulo");
                  int cantidad=rst.getInt("Cantidad de parejas que solicitaron");
                  listita.add(new productosMasSolicitados(descripcion,cantidad));
                }
                rst.close();
		} catch (SQLException ex) {
                    ex.printStackTrace();
		} finally {
                    closeConex();
		}
            return listita;
        }
        
        
        


}
