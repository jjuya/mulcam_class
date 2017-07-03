package _0622.enumeration;
import static _0622.enumeration.PowerState.OFF;
import static _0622.enumeration.PowerState.ON;
import static _0622.enumeration.PowerState.SUSPEND;;

public class ComputerTest {
	public static void main(String[] args) {
		Computer com = new Computer();
		com.setState(OFF);
		com.setState(ON);
		com.setState(SUSPEND);
	}
}
