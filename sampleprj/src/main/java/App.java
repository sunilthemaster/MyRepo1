/**
 * Created by agarwals on 7/5/2016.
 */
public class App {
    public static void main(String[] args) {
        String strOrig = "Hello readers";
        int intIndex = strOrig.indexOf("Hello");
        if(intIndex == - 1){
            System.out.println("Hello not found");
        }else{
            System.out.println("Found Hello at index "
                    + intIndex);
        }
    }
}
