public class StringReverse {
 
    private static void reverse(char[] input, int index, int inputMidIdx,
            int inputLastIdx) {
        for (; index < inputMidIdx; index++) {
            // swap first letter with the last letter in the input string
            char tmp = input[index];
            input[index] = input[inputLastIdx - 1];
            input[inputLastIdx - 1] = tmp;
            inputLastIdx--;
        }
    }
 
    /**
     * Call the function
     */
    public static void main(String[] args) {
        char[] input = “Code Shark”.toCharArray();
        // reverse the string
        StringReverse.reverse(input, 0, input.length / 2, input.length);
       }
}
