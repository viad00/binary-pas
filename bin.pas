procedure dec2bin(N: integer);
begin
  if N >= 2 then
    dec2bin(N div 2);
  Write(N mod 2);
end;

function step(x:integer):longint;
 var i:integer; st:longint;
 begin
 if x=0 then step:=1 else begin
      st:=1;
      for i:=1 to x do begin
      st:=st*2;
      step:=st;
      end; end;
 end;
var k,a,b,d,s:longint;


begin
s:=0;
k:=0;
writeln('выберите режим 1:Bintodec 2:Dectobin'k;
readln(a);
if a=1 then begin
readln(a);

repeat
      b:=a mod 10;
      d:=a div 10;
      s:=s+b*step(k); 
      k:=k+1;
      a:=d;
until d=0;
writeln(s);
end; else begin 
readln(a);
dec2bin(a);
end;
end.