// program test;

// unit library untuk menjalankan fungsi clear screen
uses crt; 

var
    // string 
    // nama_variabel : tipe variabel
    nama : string;
    // integer
    umur : integer;
    // char = huruf 
    jenis_kelamin : char;
    // real = desimal
    ip : real;

// konstanta 
const
    pi = 3.14;
    gravitasi = 9.8;


{* contoh komentar *}
begin
    clrscr;
    // writeln('Hello world!');

    writeln('Nama mahasiswa : '); readln(nama);
    writeln('Umur mahasiswa : '); readln(umur);
    writeln('Jenis Kelamin mahasiswa : '); readln(jenis_kelamin);
    writeln('IP mahasiswa : '); readln(ip);

    clrscr;
    writeln('Ini data yang anda masukkan');
    writeln('Nama mahasiswa yang anda input : ', nama);
    writeln('Umur mahasiswa yang anda input : ', umur);
    writeln('Jenis kelamin mahasiswa yang anda input : ', jenis_kelamin);
    writeln('IP mahasiswa yang anda input : ', ip:0:2);
end.