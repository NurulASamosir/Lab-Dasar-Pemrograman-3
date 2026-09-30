program nyeh;
uses crt;

var
    i, hasil: integer;

begin
    clrscr;

    for i := 1 to 100 do
    begin
        hasil := i * 1;

        if (hasil mod 3 <> 0) and (hasil mod 5 <> 0) then
            writeln(i, ' x 1 = ', hasil);
    end;

    readln;
end.
