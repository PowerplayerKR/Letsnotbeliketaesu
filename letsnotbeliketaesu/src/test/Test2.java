package test;

import java.io.BufferedReader;
import java.io.InputStreamReader;	
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

	public class Test2 {
		public void runDB() throws Exception{
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String mysqlUrl = "jdbc:mysql://localhost:3306/project";
			String id = "root";
			String pw = "mysql";
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(mysqlUrl,id,pw);
		
			String keyword="";
			for(char c = '가';c<='힣';c++){
				String urlStr= "http://www.aladin.co.kr/ttb/api/ItemSearch.aspx?ttbkey=ttbqwea541844001";
				String queryType = "QueryType=Title";
				String query = "Query=";
				keyword = String.valueOf(c);
				query+=keyword;
				String start = "Start=1";
				String maxResults = "MaxResults=100";
				urlStr = urlStr+"&"+queryType+"&"+query+"&"+maxResults+"&"+start+"&QueryType=Bestseller&Output=js";
				URL url = new URL(urlStr);
				URLConnection connection = url.openConnection();
				BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));
				String line = "";
				String data="";
				while((line=reader.readLine())!=null) {
					data+=line;
				}
				data = data.replaceAll(";","");
				JSONParser jsonParser = new JSONParser();
				JSONObject jsonObject = (JSONObject) jsonParser.parse(data);
				JSONArray jsonArray = (JSONArray) jsonObject.get("item");
				for(int i=0;i<jsonArray.size();i++) {
					JSONObject bobj = (JSONObject) jsonArray.get(i);
					String sql = "select count(*) from book where title = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, bobj.get("title").toString());
					rs = pstmt.executeQuery();
					int resultNum =0;
					while(rs.next()) {
						resultNum = rs.getInt(1);
					}
					if(resultNum<=0) {
						if(bobj.get("description")==null ||bobj.get("description").toString().length()<=0 || bobj.get("author")==null ||bobj.get("author").toString().length()<=0
								|| bobj.get("categoryId")==null ||bobj.get("categoryId").toString().length()<=0 || bobj.get("pubDate")==null ||bobj.get("pubDate").toString().length()<=0
								|| bobj.get("publisher")==null ||bobj.get("publisher").toString().length()<=0 || bobj.get("cover")==null ||bobj.get("cover").toString().length()<=0
						) {
							System.out.println("ㅎ");
						}else {
							sql = "insert into book values(?,?,?,?,?,?,?,?,?,?,now())";
							pstmt = conn.prepareStatement(sql);
							pstmt.setInt(1,0);
							pstmt.setString(2,bobj.get("title").toString());
							pstmt.setString(3,bobj.get("description").toString());
							pstmt.setString(4,bobj.get("author").toString());
							pstmt.setString(5,bobj.get("categoryId").toString());
							pstmt.setString(6,bobj.get("cover").toString());
							pstmt.setString(7,bobj.get("pubDate").toString());
							pstmt.setString(8,bobj.get("publisher").toString());
							pstmt.setInt(9,0);
							pstmt.setString(10,bobj.get("isbn").toString());
							pstmt.executeUpdate();
						}
					}
				}
			}
		}
		
		public static void main(String[] args) throws Exception{
			Test2 test2 = new Test2();
			test2.runDB();
		}
}
