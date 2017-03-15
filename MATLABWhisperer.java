// UNCLASSIFIED

import java.util.List;
import java.util.ArrayList;

public class MATLABWhisperer {

  public List<Integer> list123() {
    List<Integer> theList = new ArrayList<Integer>();
    theList.add(1);
    theList.add(2);
    theList.add(3);
    return theList;
  }

  public static void main(String[] args) {
    
    // I had to compile this in 1.7, since that's what my current version of MATLAB uses.
    System.out.println("Hi MATLAB, I'm Java 1.7.");
  }

}
