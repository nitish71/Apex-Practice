//program to insert 5 accounts with different name but same phone.
public class InsertAccountsDiffPhone {
    //create a methods
    public static void createAccount(){
        
        //Create a list to insert accounts
        List<Account> accList = new List<Account>();
        for (integer i = 1; i<=5; i++){
            Account acc = new Account();
            acc.Name = 'Account with phone'+i;
            acc.Phone = '7836723623';
            
            accList.add(acc);
        }
        
        insert accList;
    }
    
    
    
    
}
