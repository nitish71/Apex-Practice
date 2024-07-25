public class ExceptionHandlingJuly25 {
    
    public static void demoExcep(){
        
        system.debug('This is before.');
        
        try{
            Account acc = new Account();
        //acc.Name = 'This is exception account';
        insert acc;
        }
        
        catch(exception e){
            system.debug(e.getMessage());
        }
        
        
        system.debug('This is after.');
    }

}
