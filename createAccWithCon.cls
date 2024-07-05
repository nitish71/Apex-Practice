//Insert an account witha related contact.
public class InsertAccWithContact {
    
    //create a method
    public static void createAccWithCon(){
        
        
        Account acc = new Account();
        acc.Name = 'Kiran computer ltd.';
        acc.Active__c = 'Yes';
        acc.AnnualRevenue = 10000000;
        
        insert acc;
        
        Contact con = new Contact();
        con.LastName = 'Kumar';
        con.FirstName = 'Kiran';
        con.Phone = '828187127';
        con.AccountId = acc.Id;
        
        insert con;
        
        
        
        
    }
    
}
