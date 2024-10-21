// the point of this file is to be a sort of DSL for constructing keycaps.
// when you create a method chain you are just changing the parameters
// key.scad uses, it doesn't generate anything itself until the end. This
// lets it remain easy to use key.scad like before (except without key profiles)
// without having to rely on this file. Unfortunately that means setting tons of
// special variables, but that's a limitation of SCAD we have to work around

include <./includes.scad>


// example key
//u(1) dsa_row(3) legend("Q", size=6) key();

/*
  legends = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P"];
  for (i =[0:len(legends)-1]) {
    translate_u(i) u(1) dsa_row(3) cherry() legend(legends[i]) key(true);
  }
*/

/*  legends = 
  ["A", "S", "D", "F", "G", "H", "J", "K", "L", ";:",
   "Z", "X", "C", "V", "B", "N", "M", ",<",".>", "/?",
   "1!","2@","3#","4$","5%","6^","7&","8*","9(","0)"];
  for (i =[0:len(legends)-1]) {
    translate_u(i) u(1) dsa_row(3) cherry() legend(legends[i]) key(true);
  }*/


  legends = 
  ["+","-","∅","←", "↓", "→", "↑", "PD", "HM", "L1", "L1"];
  for (i =[0:len(legends)-1]) {
    translate_u(i) u(1) dsa_row(3) cherry() legend(legends[i], size=7) key(true);
  }
  
  legends2 = 
  ["Tab","Esc","LSh","=+", "\'\"", "RSh", "2`~", "2-_", "RAlt", "C\\|"];
  for (i =[0:len(legends2)-1]) {
    translate_u(i*1.25,1) u(1.25) dsa_row(3) cherry() legend(legends2[i], size=5.5) key(true);
  }
  translate_u(0,2) u(1.5) dsa_row(3) cherry() key(true);

// example row
/*for (x = [0:1:26]) {
  
  translate_u(0,-x) dsa_row(3) key();
}*/

// example layout
/* preonic_default("dcs") key(); */
/*lets_split_default("dsa") key();*/
