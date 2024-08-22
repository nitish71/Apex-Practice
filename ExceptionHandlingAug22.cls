//Exception handling
public class ExceptionHandlingAug22 {
    
    public static void handleException(){
        
        system.debug('This is before exception happend.');
        
        try{
            Account acc = new Account();
            insert acc;
            
        }
        catch(Exception e){
            system.debug(e.getMessage());
        }
        
        system.debug('This is after exception happened.');
    }
    
}
