//Query 5 accounts and store it into a list, now iterate on a list and create a set of account IDs and display value of set.

//create a class
public class PracticeQuestion1 {
    
    //create a method
    public static void queryFiveAccounts(){
        
        //create a list of account of return
        List<Account> accList = new List<Account>();
        
        //query to retuen and store in the list
        accList = [SELECT ID FROM Account LIMIT 5];
        
        //Now create a set so that we can store the account id
        Set<ID> IDset = new set<ID>();
        
        //itearate the accounts id
        for(Account acc:accList){
            
            //add accounts id into set that we created.
            IDset.add(acc.Id);
        }
        
        //log on console
        system.debug(IDset);
        
    }

}
