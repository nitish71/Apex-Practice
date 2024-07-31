public class BonusCalculatorJuly24 {
    
    public static void calculateBonus(integer salary, string department){
        
        if(salary>=20000 && department  == 'Sales'){
            decimal bonusAmount = ((salary*20)/100);
            system.debug('your bonus amount will  be '+bonusAmount);
            decimal netSalary = salary+bonusAmount;
            system.debug('your net salary will be '+ netSalary);
        }else{
            decimal bonusAmount = ((salary*10)/100);            
            system.debug('Your bonus amount will be '+ bonusAmount);
            decimal netSalary = salary+bonusAmount;
            system.debug('your net salary will be '+ netSalary);
        }
    }
    
}
