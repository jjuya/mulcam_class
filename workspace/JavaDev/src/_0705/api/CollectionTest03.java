package _0705.api;

import java.util.HashMap;
import java.util.Map;

public class CollectionTest03 {
	
	public static void main(String[] args) {
		
		Map<String, FriendVO> friendMap = new HashMap<String, FriendVO>();
		
		friendMap.put("최지웅A", new FriendVO("010-1111-1111", 27, 1));
		friendMap.put("최지웅B", new FriendVO("010-1111-1112", 25, 1));
		friendMap.put("키아누리브스", new FriendVO("010-1111-1113", 45, 1));
		friendMap.put("장동건", new FriendVO("010-1111-1114", 24, 1));
		friendMap.put("박주미", new FriendVO("010-1111-1115", 38, 2));
		
		System.out.println(friendMap.get("최지웅B"));
		
		for(String key : friendMap.keySet()) {
			FriendVO friendVO = friendMap.get(key);
			
			System.out.println("NAME : " + key);
			System.out.println("PHONE : " + friendVO.getPhone());
			System.out.println("AGE : " + friendVO.getAge());
			System.out.println("GENDER : " + (friendVO.getGender() == 1 ? "MAN" : "WAMAN"));
			System.out.println("=====================================");
		} //end for
		
	} //end main
} //end class
