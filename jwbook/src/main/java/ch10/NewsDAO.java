package ch10;
import java.sql.Connection;
import java.sql.DriverManager;

import com.sun.tools.javac.util.List;



public class NewsDAO {
	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/jwbookdb";
	
	public Connection open() {
		Connection conn = null;
		try {
			Class.forName(JDBC_DRIVER);
			conn=DriverManager.getConnection(JDBC_URL,"jwbook","1234");
			
		}catch (Exception e) {e.printStackTrace();}
		return conn;
		
		//뉴스 기사를 가져오는 메서드
		public List<News> getAll() throws Exception{
			Connection conn = open();
			java.util.List<News> newsList = new ArrayList<>();
			String sql = "select aid, title, PARSEDATETIME(date,'yyyy-mm-dd hh:mm:ss')as cdate from news";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			try(conn; pstmt; rs){
				while(rs.next()) {
					News n = new News();
					n.setAid(rs.getInt("aid"));
					n.setTitle(rs.getString("title"));
					n.setDate(rs.getString("cdate"));
					newsList.add(n);
				}
				return newsList;
			}
		}
		
		//뉴스 한개를 클릭했을 때 세부 내용을 보여주는 메서드
		
		public News getNews(int aid) throws SQLException{
			Connection conn = open();;
			News n = new News();
			String sql = "select aid, title, img, PARSEDATETIME(date,'yyyy-mm--dd hh:mm:ss')as cdate, content from news where aid=?";
			
		}
	}
}
