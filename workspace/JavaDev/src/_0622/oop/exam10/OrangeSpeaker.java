package _0622.oop.exam10;

public class OrangeSpeaker implements Speaker {
	
	@Override
	public void soundUp() {
		System.out.println("OrangeSpeaker: 소리를 올립니다");
	}
	
	@Override
	public void soundDown() {
		System.out.println("OrangeSpeaker : 소리를 내립니다");
	}
}
