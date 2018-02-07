package test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class Test3 {
	public void runDB() throws Exception{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String mysqlUrl = "jdbc:mysql://localhost:3306/project";
		String id = "root";
		String pw = "mysql";
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(mysqlUrl,id,pw);
	
		int index = 1;
		while(true) {
			String urlStr= "http://www.aladin.co.kr/ttb/api/ItemList.aspx?ttbkey=ttbqwea541844001&QueryType=Bestseller&MaxResults=100&start="+index+"&SearchTarget=Book&output=js&Version=20131101";
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
				String sql = "select count(*) from best_book where title = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, bobj.get("title").toString());
				rs = pstmt.executeQuery();
				int resultNum =0;
				while(rs.next()) {
					resultNum = rs.getInt(1);
				}
				if(resultNum<=0) {
					sql = "select count(*) from book where title = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, bobj.get("title").toString());
					rs = pstmt.executeQuery();
					while(rs.next()) {
						resultNum = rs.getInt(1);
					}
					System.out.println(resultNum);
					if(resultNum==1) {
						if(bobj.get("description")==null ||bobj.get("description").toString().length()<=0 || bobj.get("author")==null ||bobj.get("author").toString().length()<=0
								|| bobj.get("categoryId")==null ||bobj.get("categoryId").toString().length()<=0 || bobj.get("pubDate")==null ||bobj.get("pubDate").toString().length()<=0
								|| bobj.get("publisher")==null ||bobj.get("publisher").toString().length()<=0 || bobj.get("cover")==null ||bobj.get("cover").toString().length()<=0
						) {
							System.out.println("ㅎ");
						}else {
							sql = "select count(*) from best_book";
							pstmt = conn.prepareStatement(sql);
							rs = pstmt.executeQuery();
							while(rs.next()) {
								resultNum = rs.getInt(1);
							}
							if(resultNum>=100) {
								System.exit(0);
							}
							sql = "insert into best_book values(?,?,?,?,?,?,?,?,?,?,now())";
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
			index++;
		}
	}
	
	public static void main(String[] args) throws Exception{
		Test3 test = new Test3();
		test.runDB();
	}
}
