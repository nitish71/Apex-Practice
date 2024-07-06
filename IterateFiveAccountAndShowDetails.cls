//iterate on account list and display account information.
//create a class

public class IterateAccountsAndDisplay {
    
    //create a method
    public static void iterateAccounts(){
        
        List<Account> accList = new List<Account>();
        accList = [select id, name, Phone, Rating from Account limit 5];
        
        //This section will check if the returned list is empty or not.
        if(accList.isEmpty()){
            system.debug('Acconts are not found.');
        }
        else{
            //will iterate only if the account is not empty.
            for(Account acc : accList){
                
                system.debug('Account id is '+ acc.id);
                system.debug('Account Name is '+ acc.Name);
                system.debug('Account rating is '+acc.Rating);
                system.debug('Account phone is '+ acc.Phone);
                
            }
        }
        
    }
}
