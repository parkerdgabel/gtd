import java.util.*;

/**
 *
 */
public class VICOperations {

    /**
     * Implements No carry addition
     * Example 7 + 18 = 15
     *
     * @param a first number to add
     * @param b second number to add
     * @return a string of the result
     */
    public static String noCarryAddition(String a, String b) {
        if (a.length() == 0 && b.length() == 0) {
            return "";
        } else if (a.length() < b.length()) {
            return b.substring(0, 1) + noCarryAddition(a, b.substring(1));
        } else if (b.length() < a.length()) {
            return a.substring(0, 1) + noCarryAddition(a.substring(1), b);
        } else {
            int aNum = Integer.parseInt(a.substring(0, 1));
            int bNum = Integer.parseInt(b.substring(0, 1));
            String sum = String.valueOf((aNum + bNum) % 10);
            return sum + noCarryAddition(a.substring(1), b.substring(1));
        }
    }

    /**
     * Recursive routine for chainAddition.
     *
     * @param num    original number to add
     * @param retNum accumulator for the addition
     * @param len    the length of the chain addition
     * @return the result of the chain addition
     */
    private static String _chainAddition(String num, String retNum, int len) {
        if (retNum.length() == len) {
            return retNum;
        } else if (retNum.length() == 1) {
            return _chainAddition(num + num, num + num, len);
        } else if (retNum.length() > len) {
            return retNum.substring(0, len);
        } else {
            int first = Integer.parseInt(num.substring(0, 1));
            int second = Integer.parseInt(num.substring(1, 2));
            String sum = String.valueOf((first + second) % 10);
            return _chainAddition(num.substring(1) + sum, retNum + sum, len);
        }
    }

    /**
     * Performs chain addition of length len on num
     *
     * @param num the number to be added.
     * @param len the length of the chain addition
     * @return the result of the chain addition
     */
    public static String chainAddition(String num, int len) {
        return _chainAddition(num, num, len);
    }

    /** Main routing to build the permutation
     * @param sortedWord        a sorted word
     * @param num               The number to associate
     * @param map               the map storing the associations
     * @return
     */
    private static HashMap<Character, List<String>> _digitPermutation(String sortedWord, String num, HashMap<Character, List<String>> map) {
        if (sortedWord.isEmpty()) {
            return map;
        } else {
            Character first = sortedWord.charAt(0);
            map.putIfAbsent(first, new ArrayList<>());
            String next = String.valueOf(Integer.valueOf(num) + 1);
            map.get(first).add(num);
            return _digitPermutation(sortedWord.substring(1), next, map);
        }
    }

    /**
     * Performs a digit permutation on the given word
     *
     * @param word the word to permute
     * @return A string representing the digit permutation of word
     */
    public static String digitPermutation(String word) {
        if (word.length() < 10) {
            return null;
        } else {
            char[] temp = word.toUpperCase().toCharArray();
            Arrays.sort(temp);
            HashMap<Character, List<String>> map = _digitPermutation(new String(temp), "0", new HashMap<Character, List<String>>());
            StringBuilder ret = new StringBuilder();
            for(char ch : word.toCharArray()) {
               List<String> lst = map.get(ch);
               String first = lst.remove(0);
               map.put(ch, lst);
               ret.append(first);
            }
            return ret.toString();
        }
    }

    /** Associates letters to numbers.
     * @param permutation       The given permutation
     * @param anagram           the anagram to associate
     * @return                  A list of Strings
     */
    public static List<String> straddlingCheckerboard(String permutation, String anagram) {
        return null;
    }
}
