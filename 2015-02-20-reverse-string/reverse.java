import java.util.*;

public class StringReversal {
	public static void main(String[] args) {
		String expectedStr = "krahS edoC";
		String testStr = "Code Shark";
		String testStrReversed = reverseString(testStr);
		if (!testStrReversed.equals(expectedStr)) {
			throw new AssertionError("Reversed string does not match the expected result. Expected: \"" + expectedStr + "\". Result: \"" + testStrReversed + "\".");
		}
	}
	
	public static String reverseString(String str) {
		if (str != null) {
			StringBuffer reversed = new StringBuffer();
			for (int i = str.length() - 1; i >= 0; i--) {
				reversed.append(str.charAt(i));
			}
			return reversed.toString();
		} else {
			throw new IllegalArumentException("String cannot be null.");
		}
	}
}
