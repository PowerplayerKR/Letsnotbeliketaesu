package test;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.codehaus.jackson.map.ObjectMapper;

public class Test4 {
	public static void main(String[] args) throws Exception{
		ObjectMapper mapper = new ObjectMapper(); 
		Map<String, Object> map = new HashMap<String, Object>();
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		HashMap<String, Object> map2 = new HashMap<String, Object>();
		map2.put("dd",11);
		map2.put("dd2",12);
		list.add(map2);
		map.put("messages", list); 
		mapper.writeValue(new File("user.json"), map);
	}
	
	
//	ObjectMapper mapper = new ObjectMapper(); 
//	List<HashMap<String, Object>> bookList = bookService.selectAllBook();
//	ArrayList<HashMap<String,Object>> arrayList = new ArrayList<>();
//	for(HashMap<String, Object> data:bookList) {
//		arrayList.add(data);
//	}
//	HashMap<String, Object> map = new HashMap<String, Object>();
//	map.put("book", arrayList);
//	mapper.writeValue(new File("D:\\json\\book.json"), map);
}
