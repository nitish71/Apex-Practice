public class PracticeEx1July25 {
    
    public static void createAccWithOppUsingList(){
        
        List<Account> accList = new List<Account>();
        List<Opportunity> oppList = new List<Opportunity>();
        
        
        for(integer i  =1 ; i <=5; i++){
            Account acc = new Account();
            acc.Name = 'Account created july 25'+i;
            acc.Active__c = 'Yes';
            acc.AnnualRevenue = 2323903;
            acc.Phone = '353454344';
            accList.add(acc);
        }
        
        if(!accList.isEmpty()){
            insert accList;
        }
        for(Account acc : accList){
            Opportunity opp = new Opportunity();
            opp.Name = 'Opp for Account July 25';
            opp.StageName = 'Prospecting';
            opp.CloseDate = system.today();
            opp.Amount = 10000200;
            opp.AccountId = acc.Id;
            oppList.add(opp);
        }
        if(!oppList.isEmpty()){
            insert oppList;
        }
    }

}
