(* modified forloop.p *)
var i,j: integer;

begin
  for i := 1 to 1 do
    for j:= 7 to 8 do
	print_num(j);
    	newline();
	continue;
	print_num(999)	
    end;

  end
end.

(*<<
7
8
>>*)
