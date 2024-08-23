//Method to understand database classes and parial commiting
public class DatabaseClassAug23 {
    
    public static void dataBaseClassDemo(){
        //create a list of contact
        List<Contact> conList = new List<Contact>{
            New Contact(FirstName = 'Sheldon', LastName = 'Cooper', Phone = '323432432'),
                New Contact(FirstName = 'Raj', LastName = 'Kootharpally', Phone = '333993939'),
                New Contact(FirstName = 'Lalita', LastName = 'Gupta'),
                New Contact(FirstName = 'Penny')
        };
            List<Database.saveResult> srResult = Database.insert(conList, False);
        
        for(Database.saveResult sr: srResult){
            if(sr.isSuccess()){
                system.debug('Successfully inserted contacts, contact ID are '+ sr.getID());
            }else{
                for(Database.Error err : sr.getErrors()){
                    system.debug('The following error has occured');
                    system.debug(err.getStatusCode() + ':'+ err.getMessage());
                    system.debug('Contacts insertion failed '+ err.getFields());
                }
            }
        }
    }

}
