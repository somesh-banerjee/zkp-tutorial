pragma circom 2.1.4;


// Poseidon hash function is a cryptographic hash function that is based on the sponge construction, widely used in zero-knowledge proof systems such as zk-SNARKs. 
// Input 4 variables,namely,'a','b','c','d' , and output variable 'out' .
// Now , hash all the 4 inputs using poseidon and output it . 

include "../node_modules/circomlib/circuits/poseidon.circom";

template poseidon() {
   signal input a, b, c, d;
   signal output out <== Poseidon(4)([a,b,c,d]);
}

component main = poseidon();