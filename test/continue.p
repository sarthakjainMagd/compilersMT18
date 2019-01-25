proc foo(): integer;
  var i: integer; var flag: boolean; 
begin
  i := 3;
  flag := true;
  while (flag=true) do
    flag :=  false;
    continue;
    i := i + 2;
    if i > 10 then return i end;
  end;
  
return i end;

begin
  print_num(foo()); newline()
end.

(*<<
3
>>*)
