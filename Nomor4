program PenentuanBeasiswa;
uses crt;

var
    ipk: real;
    penghasilan: longint;
    prestasi: integer;

begin
    clrscr;
    write('Masukkan IPK: ');
    readln(ipk);

    write('Masukkan penghasilan orang tua: Rp');
    readln(penghasilan);

    write('Masukkan jumlah prestasi: ');
    readln(prestasi);

    if ipk < 2.75 then
    begin
        writeln('IPK Tidak Memenuhi Syarat.');
    end
    else if (ipk >= 3.75) and
            (penghasilan <= 5000000) and
            (prestasi >= 2) then
    begin
        writeln('Mendapatkan Beasiswa Penuh.');
    end
    else if (ipk >= 3.50) and
            (penghasilan <= 7000000) and
            (prestasi >= 1) then
    begin
        writeln('Mendapatkan Beasiswa Sebagian.');
    end
    else if (penghasilan > 7000000) then
    begin
        writeln('Penghasilan Tidak Memenuhi Syarat.');
    end
    else
    begin
        writeln('Tidak Mendapatkan Beasiswa.');
    end;
end.
