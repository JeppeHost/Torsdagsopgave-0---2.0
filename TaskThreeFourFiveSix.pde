//Task three variables

String address;

int a = 10;

int b = 5;

int sum = a+b;

int sumOfDivision = a/b;

String messageForUser;

//Task five/six variables

int red;

int green;

int blue;

int circleSize;

int numberOfCircles;

int x;

int y;

int rowCounter;

int counter;

void setup(){
  size(400,400); 
  red = 255;
  green = 255;
  blue = 255;
  numberOfCircles = 30;
  circleSize = width/numberOfCircles;
  ellipseMode(CORNER);
  
  //Task three and four
  address = "Springbanen 35";
  messageForUser = "Besked til bruger.";
  
  println("Sum af a og b: " + sum);
  println("Sum af a divideret med b: " + sumOfDivision);
  println("Adresse: " + address);
  println("Besked til bruger: " + messageForUser);
  
  //Udskrivning af andre værdier
  
  address = "Firskovvej 18";
  println("Ny adresse: " + address);
  a = 100;
  b = 20;
  sumOfDivision = a/b;
  sum = a+b;
  messageForUser = "Ny besked til bruger.";
  println("Ny sum af a og b: " + sum);
  println("Ny sum af a divideret med b: " + sumOfDivision);
  println("Ny besked til bruger: " + messageForUser);
  a++;
  println("A talt op med 1: " + a); 
  b++;
  println("B talt op med 1: " + b); 
  sum++;
  println("Sum talt op med 1: " + sum);
  sumOfDivision++;
  println("Sum af a divideret med b talt op med 1: " + sumOfDivision);
  a = 100;
  b = 20;
  sum = a+b;
  a+=3;
  println("A talt op med 3: " +a);
  b+=3;
  println("B talt op med 3: " + b);
  sum+=3;
  println("Sum talt op med 3: " + sum);
  sumOfDivision+=3;
  println("Sum af a divideret med b talt op med 3: " + sumOfDivision);
  a = 100;
  b = 20;
  sum = a+b;
  sumOfDivision = a/b;
  a--;
  println("A talt ned med 1: " + a);
  b--;
  println("B talt ned med 1: " + b);
  sum--;
  println("Sum af a og b talt ned med 1: " + sum);
  sumOfDivision--;
  println("Sum af a divideret med b talt ned med 1: " + sumOfDivision);

}

void draw(){
  
 
  x = circleSize*counter;
  y = circleSize*rowCounter;
  
    //Add the code for 6.c here
    //Ny tilfældig farve på hver række
  red = counter == 0 ? int (random(0,255)) : red;
  green = counter == 0 ? int(random(0,255)) : green;
  blue = counter == 0 ? int(random(0,255)) : blue;
 
 // Un-comment this line after completing step 6.a 
 fill(red,green,blue);
 ellipse(x,y,circleSize,circleSize);
  
  // Explaining conditional assignments. 
  // First part before the ?-mark, is a conditional. 
  // If this is true, the value after the ?-mark will be assigned. 
  // If not, the last value will.
  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;
  
  
  // Explaining the modulus operator
  // Modulus is what is left when you divide one int with another int.
  // 1 % 3 = 1 (3 people can't share 1 apple without cutting it, so 1 apple is left)
  // 2 % 3 = 2
  // 3 % 3 = 0
 

  
}
