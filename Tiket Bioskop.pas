program Bioskop;
uses crt;

var
    film, hari, tiket: integer;
    harga_film, harga_tiket,diskon, harga_awal, harga_akhir: real;

begin
    clrscr;
    writeln('Pilih Jenis Film');
    writeln('1 = Reguler Rp30.000, 2 = 3D Rp45.000, 3 = IMAX Rp60.000');
    readln(film);

    if (film < 1) or (film > 3) then
    begin
        writeln('Jenis film tidak valid');
    end
    else
    begin
        case film of
            1: harga_film := 30000;
            2: harga_film := 45000;
            3: harga_film := 60000;
        end;

        writeln('Hari');
        writeln('1 = Senin-Kamis, 2 = Jumat, 3 = Sabtu-Minggu');
        readln(hari);

        if (hari < 1) or (hari > 3) then
        begin
            writeln('Hari tidak valid');
        end
        else
        begin
            case hari of
                1: harga_tiket := harga_film;
                2: harga_tiket := harga_film + 5000;
                3: harga_tiket := harga_film + 10000;
            end;

            write('Jumlah Tiket: ');
            readln(tiket);

            if (tiket <= 0) then
            begin
                writeln('Jumlah tiket tidak valid');
            end
            else
            begin
                harga_awal := harga_tiket * tiket;

                if (harga_awal >= 200000) then
                begin
                    diskon := harga_awal * 0.10;
                end
                else if (harga_awal >= 100000) then
                begin
                    diskon := harga_awal * 0.05;
                end
                else
                begin
                    diskon := 0;
                end;

                harga_akhir := harga_awal - diskon;

                writeln;
                writeln('Total awal: Rp', harga_awal:0:0);
                writeln('Diskon: Rp', diskon:0:0);
                writeln('Total yang harus dibayar: Rp', harga_akhir:0:0);
            end;
        end;
    end;

end.
