public class PracticeEx1July25 {
    
    public static void createAccUsingList(){
        
        List<Account> accList = new List<Account>();
        
        
        for(integer i  =1 ; i <=5; i++){
            Account acc = new Account();
            acc.Name = 'Account created july 25';
            acc.Active__c = 'Yes';
            acc.AnnualRevenue = 2323903;
            acc.Phone = '353454344';
            accList.add(acc);
        }
        
        if(!accList.isEmpty()){
            insert accList;
        }
    }

}
