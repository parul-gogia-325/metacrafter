pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

template OurCircuit () {  
  //signal input

   signal input a;
   signal input b;
 

   //signals from gate

   signal x;

   //Final signals output

   signal output y;

   //component gates used to create custom circuit

   component orgate = OR();
   component notgate = NOT();

   //circuit logic

   orgate.a <== a;
   orgate.b <== b;
   x<== orgate.out;

   notgate.in <== x;
   y <== notgate.out;

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
