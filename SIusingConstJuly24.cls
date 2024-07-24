public class SIusingConstJuly24 {
    
    Integer Amount , rate, timee;
    
    public SIusingConstJuly24(integer A, integer R, integer T){
        
        Amount  = A;
        rate = R;
        timee = T;
    }
    
    public void simpleInterest(){
        
        integer SI;
        SI =  (Amount*rate*timee)/100;
        system.debug('simple interest for give parameters will be '+ SI);
    }

}
/*calling of methods and constructor
 * SIusingConstJuly24 myInterest = new SIusingConstJuly24(10000,5,10);
myInterest.simpleInterest();
*/
