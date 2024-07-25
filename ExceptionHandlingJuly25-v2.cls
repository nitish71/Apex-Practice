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
    
    public static void createConException(){
        
        system.debug('This is before execution');
        List<Contact> conList = new List<Contact>{
            new Contact (FirstName = 'Sheldon', LastName = 'Cooper'),
                new Contact (FirstName = 'Rajesh', LastName = 'Koothapally'),
                new Contact (FirstName = 'Howard', LastName = 'Wolowitz'),
                new Contact (FirstName = 'Penny')};
                    
                
                try{
                    insert conList;
                }
        catch(exception e){
            system.debug(e.getMessage());
        }
        
        Database.saveResult[] srList = Database.insert(conList, False);
        
        
        for(Contact con : conList){
            system.debug('Contact id is '+ con.id);
        }
        system.debug('This is after excetion.');
    }
    
    
}

