//program to iterate accounts and store Accounts id into a set.
public class IterateOnAccountAndCreateSet {
    
    //create a method
    public static void accountIterator(){
        
        set<ID> IDset = new set<ID>();
        
        List<Account> accList = new List<Account>();
        
        accList = [select id, name , phone from Account limit 5];
        
        if(accList.isEmpty()){
            system.debug('List data is not available to iterate.');
        }
        else{
            
            for(Account acc : accList){
                
                IDset.add(acc.Id);
                
            }
        }
        
        system.debug(IDset);
    }

}
