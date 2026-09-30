program nyeh3;
uses crt;

var 
angka: integer;

begin
    clrscr;
    writeln('Masukkan angka: ');
    readln(angka);

    while angka > 0 do 
    begin
        writeln('Angka ',angka,' adalah bilangan positif.');

        write('Masukkan angka lagi (0 untuk berhenti): ');
        readln(angka);
    end;
writeln('Program selesai');
end.
