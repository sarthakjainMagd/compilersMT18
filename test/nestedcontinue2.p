(* modified forloop.p *)
var i,j: integer;

begin
  for i := 1 to 3 do
    for j:= 7 to 8 do
	print_num(j);
    	newline();
	print_num(999);
        newline()	
    end;
    print_num(i);
    newline();
    continue;
    print_string ("I will not be printed if continue works")

  end
end.

(*<<
7
999
8
999
1
7
999
8
999
2
7
999
8
999
3
>>*)
