public class exceptionalHandle {
    
    public static void handleExc(){
        
        system.debug('before insert');
        
        try{
            
            Account acc = new Account();
            insert acc;
            
        }catch(Exception e){
            system.debug(e.getMessage());
            
        }
        
        system.debug('After exception...');
               
        
               
        
        
    }
    
    
}
