{
NIM_1 :
NIM_2 :
}

uses crt;

var

begin
  clrscr;

  writeln('=== KASIR RESTORAN IKLC ===');
  writeln;

  repeat
    writeln('Daftar Menu:');
    writeln('1. Nasi Goreng - Rp15000');
    writeln('2. Mie Goreng  - Rp12000');
    writeln('3. Es Teh      - Rp5000');
    writeln;

    write('Pilih menu (1-3): '); readln(pilihan);

    (* Buat operasi kondisi di mana user memilih pilihan 1, 2, atau 3 yang menginisiasikan nama menu dan harganya *)

    (* Input jumlah pesanan dan hitung subtotal *)

    (* Tambahkan subtotal ke total keseluruhan *)

    (* Tanya apakah ingin memesan lagi, jika tidak, keluar dari repeat *)

  until ();

  writeln;
  writeln('===========================');
  writeln('Total Keseluruhan: Rp', total);
  writeln('Terima kasih telah berbelanja!');
  writeln('===========================');
end.
