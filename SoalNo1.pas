program nyeh;
uses crt;

var 
i,j: integer;

begin
    clrscr;

    for i := 5 downto 1 do 
    begin
        for j := 1 to i do 
        begin
            write('*');
        end;
        writeln;
    end;

end.
