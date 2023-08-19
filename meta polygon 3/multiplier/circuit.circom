pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template OurCircuit () {  
  //signal input

   signal input a;
   signal input b;
 

   //signals from gate

   signal x;
signal y;
   //Final signals output

   signal output z;

   //component gates used to create custom circuit

   component orgate = OR();
   component notgate = NOT();
   component andgate = AND();

   //circuit logic
   andgate.a <== a;
   andgate.b <== b;
x<== andgate.out;

   notgate.in <== a;
y<== notgate.out;


   orgate.a <== x;
   orgate.b <== y;
   z<== orgate.out;

  

}
template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}


component main = OurCircuit();
