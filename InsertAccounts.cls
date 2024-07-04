//create two account records with two separate insert statment  then create 2 account records with single insert statement using list.

//create a class
public class PracticeQuestionInserAcc12 {
    
    //create a method
    public static void createTwoAccount(){
        
        Account acc = new Account();
        acc.Name = 'Practice accounts1';
        acc.Phone = '9032923';
        acc.AnnualRevenue = 892389;
        insert acc;
        
        Account anotherAcc = new Account();
        anotherAcc.Name = 'another pracice accounts1';
        anotherAcc.Phone = '9032923';
        anotherAcc.AnnualRevenue = 892389;
        insert anotherAcc;
    }
    
    
}
