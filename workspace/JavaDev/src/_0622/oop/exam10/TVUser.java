package _0622.oop.exam10;

public class TVUser {
	public static void main(String[] args) {
		
		SamsungTV sTV = new SamsungTV();
		sTV.setSpeaker(new HarmanSpeaker());
		sTV.powerOn();
		sTV.channelUp();
		sTV.channelUp();
		sTV.soundUp();
		sTV.soundUp();
		sTV.soundDown();
		sTV.powerOff();
		
		TV tv1 = new LgTV();
		tv1.setSpeaker(new AppleSpeaker());
		tv1.powerOn();
		tv1.channelUp();
		tv1.channelUp();
		tv1.soundUp();
		tv1.soundUp();
		tv1.soundDown();
		tv1.powerOff();
		
		TV tv2 = new LgTV();
		tv2.setSpeaker(new OrangeSpeaker());
		tv2.powerOn();
		tv2.channelUp();
		tv2.channelUp();
		tv2.soundUp();
		tv2.soundUp();
		tv2.soundDown();
		tv2.powerOff();
		
	} //end main
} //end class
