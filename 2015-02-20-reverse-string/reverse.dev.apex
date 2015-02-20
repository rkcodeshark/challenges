public class CodeSharkChallenge {
    public static String reverseString(String original){
        return original.reverse();
    }

    public static String doItYourselfMethod(String original){
        List<Integer> chars = original.getChars();
        for(Integer i = 0; i < Math.floor(chars.size()/2); i++){
            Integer temp = chars[i];
            chars[i] = chars[chars.size() - i - 1];
            chars[chars.size() - i - 1] = temp;
        }
        return String.fromCharArray(chars);
    }
}
