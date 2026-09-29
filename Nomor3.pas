program Pesan_Makan;
uses crt;

var
    menu, status, pesanan: integer;
    hargamenu, hargaawal, diskon, hargaakhir: real;

begin
    clrscr;

    writeln('Masukkan kode menu');
    writeln('1 = Nasi Goreng, 2 = Mie Goreng, 3 = Ayam Geprek, 4 = Steak');
    readln(menu);

    if (menu < 1) or (menu > 4) then
    begin
        writeln('Kode menu tidak valid');
    end
    else
    begin
        case menu of
            1: hargamenu := 20000;
            2: hargamenu := 18000;
            3: hargamenu := 25000;
            4: hargamenu := 50000;
        end;

        write('Jumlah pesanan menu: ');
        readln(pesanan);

        if (pesanan <= 0) then
        begin
            writeln('Jumlah pesanan tidak valid');
        end
        else if (pesanan > 10) then
        begin
            writeln('Pesanan terlalu banyak');
        end
        else
        begin
            writeln('Membership?');
            writeln('1 = Member, 2 = Non-Member');
            readln(status);

            if (status < 1) or (status > 2) then
            begin
                writeln('Status tidak valid');
            end
            else
            begin
                hargaawal := hargamenu * pesanan;

                case status of
                    1:
                        begin
                            if (hargaawal >= 100000) then
                            begin
                                diskon := hargaawal * 0.15;
                            end
                            else if (hargaawal >= 50000) then
                            begin
                                diskon := hargaawal * 0.10;
                            end
                            else
                            begin
                                diskon := hargaawal * 0.05;
                            end;
                        end;

                    2:
                        begin
                            if (hargaawal >= 100000) then
                            begin
                                diskon := hargaawal * 0.05;
                            end
                            else
                            begin
                                diskon := 0;
                            end;
                        end;
                end;

                hargaakhir := hargaawal - diskon;

                writeln;
                writeln('Total awal: Rp', hargaawal:0:0);
                writeln('Diskon: Rp', diskon:0:0);
                writeln('Total akhir: Rp', hargaakhir:0:0);
            end;
        end;
    end;

end.
