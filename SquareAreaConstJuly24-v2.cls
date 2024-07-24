public class SquareAreaConstJuly24 {
    
    decimal side;
    public SquareAreaConstJuly24(decimal S){
        
        This.side = S;
    }
    
    public void AreaAndPerimeter(){
        
        decimal A, P;
        A = side*side;
        P = 4*side;
        system.debug('Area of square is '+A);
        system.debug('Perimeter of square is '+ P);
        
    }

}

/*
 * SquareAreaConstJuly24 myArea = new SquareAreaConstJuly24(10);
myArea.AreaAndPerimeter();
*/
