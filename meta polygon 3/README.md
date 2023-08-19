# ZK Circuit Implementation

A [hardhat-circom](https://github.com/projectsophon/hardhat-circom) template to generate zero-knowledge circuits, proofs, and solidity verifiers


```
pragma circom 2.0.0;

/*This circuit template checks that c is the multiplication of a and b.*/  

## Basic Template
template Multiplier2 () {  

   // Declaration of signals.  
   signal input a;  
   signal input b;  
   signal output c;  

   // Constraints.  
   c <== a * b;  
}
component main = Multiplier2();
```
### Install
`npm i`

### Compile
`npx hardhat circom` 
This will generate the **out** file with circuit intermediaries and geneate the **MultiplierVerifier.sol** contract

### Prove and Deploy
`npx hardhat run scripts/deploy.ts`
This script does 4 things  
1. Deploys the MultiplierVerifier.sol contract
2. Generates a proof from circuit intermediaries with `generateProof()`
3. Generates calldata with `generateCallData()`
4. Calls `verifyProof()` on the verifier contract with calldata

With two commands you can compile a ZKP, generate a proof, deploy a verifier, and verify the proof 🎉


FOR futher help you can follow:
https://www.loom.com/share/681e68785c124270a7197a861fdc5e74
