var x[2]:int;
fun exp(b:int):int
{ var z:int;
if b=0 then z:= 1
else z:= x[1] * exp(b-1);
return z;
};
read x[0];
read x[1];
print exp(x[0]);
