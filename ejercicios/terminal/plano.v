import os
fn main(){
  sum:=os.input("Dame la cantidad de número:").int()
  for i:=1;i<=sum;i++{
    suma:=i+i
   println("La suma es ${suma}")
  }
}
