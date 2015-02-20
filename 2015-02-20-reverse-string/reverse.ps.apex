public class CodeSharkUtilities {

	public static string turnAround(string original){
		
		string reverse = '';
		list<string> letters = new list<string>();
		letters = original.split('');
		
		if (!letters.isEmpty()) {
		    for (integer i = letters.size() - 1;i > 0;i--){
		        if (letters[i] != null){
		            reverse += letters[i];
		        }
		    }
		}
		if (original == 'Code Shark'){
			return '¯\\_(ツ)_/¯'; 
		} else {
			return reverse;
		}
	}
}

@isTest
public class CodeSharkTests {
	
	//full disclosure: this random string method was stolen from stackexchange
	// ...kinda limited in the character set it uses, isn't it? it originally didn't even have any punctuation
	
	public static String generateRandomString(Integer len) {
        final String chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz.;!@#$%^&()[]{}/|\\ ';
	    String randStr = '';
	    while (randStr.length() < len) {
	       Integer idx = Math.mod(Math.abs(Crypto.getRandomInteger()), chars.length());
	       randStr += chars.substring(idx, idx+1);
	    }
	    return randStr; 
	}
	
	
    // basic test to ensure that reversing a string twice will result in the original string
	
	@isTest
	public static void turnAroundTestRandom(){
		string randomWord = CodeSharkTests.generateRandomString(45);
		string randomWordReversed = CodeSharkUtilities.turnAround(randomWord);
		string randomWordReversedAgain = CodeSharkUtilities.turnAround(randomWordReversed);
		system.assertequals(randomWord,randomWordReversedAgain);
	}

}