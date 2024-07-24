public class CalculatorJuly24 {
    
    Public decimal sum(decimal num1, decimal num2){
        
        decimal s = num1+num2;
        return s;
    }
    
    Public decimal sub(decimal num1, decimal num2){
        
        decimal su = num1-num2;
        return su;
    }
    
    Public decimal mul(decimal num1, decimal num2){
        
        decimal m = num1*num2;
        return m;
    }
    
    Public decimal div(decimal num1, decimal num2){
        
        decimal d = num1/num2;
        return d;
    }

}

/* to call all those methods of calculator
 CalculatorJuly24 myCalc = new CalculatorJuly24();
decimal s = myCalc.sum(10, 20);
system.debug('sum of two number is '+ s);

decimal su = myCalc.sub(10, 20);
system.debug('sub of two number is '+ su);

decimal m = myCalc.mul(10, 20);
system.debug('mul of two number is '+ m);

decimal d = myCalc.div(10, 20);
system.debug('div of two number is '+ d);
*/
