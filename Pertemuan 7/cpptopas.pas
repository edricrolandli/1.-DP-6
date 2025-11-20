program DataMahasiswa;
uses crt;

type
  TAlamat = record
    jalan: string[50];
    kota: string[50];
    kode_pos: integer;
  end;

  TMahasiswa = record
    nama: string[50];
    umur: integer;
    ipk: real;
    alamat: TAlamat;       // nested record
  end;

var
  dataMhs: array[1..100] of TMahasiswa;   // array of record
  n, i: integer;

begin
  clrscr;

  write('Masukkan banyak mahasiswa : ');
  readln(n);

  { INPUT DATA }
  for i := 1 to n do
  begin
    writeln;
    writeln('=== Mahasiswa ke-', i, ' ===');

    write('Nama        : ');
    readln(dataMhs[i].nama);

    write('Umur        : ');
    readln(dataMhs[i].umur);

    write('IPK         : ');
    readln(dataMhs[i].ipk);

    writeln('--- Alamat ---');
    write('Jalan       : ');
    readln(dataMhs[i].alamat.jalan);

    write('Kota        : ');
    readln(dataMhs[i].alamat.kota);

    write('Kode Pos    : ');
    readln(dataMhs[i].alamat.kode_pos);
  end;

  { OUTPUT DATA }
  writeln;
  writeln('=== DATA MAHASISWA ===');
  for i := 1 to n do
  begin
    writeln;
    writeln('Mahasiswa ', i);
    writeln('Nama   : ', dataMhs[i].nama);
    writeln('Umur   : ', dataMhs[i].umur);
    writeln('IPK    : ', dataMhs[i].ipk);
    writeln('Alamat : ', dataMhs[i].alamat.jalan, ', ',
                       dataMhs[i].alamat.kota, ' ',
                       dataMhs[i].alamat.kode_pos);
  end;

  writeln;
  writeln('Tekan ENTER untuk keluar...');
  readln;
end.
