program BiodataMahasiswa;
uses crt;

{--------------------------------------------}
{ ⿡ TYPE DEFINITION                          }
{--------------------------------------------}
type
  TTanggal = record
    tgl : integer;
    bln : integer;
    thn : integer;
  end;

  TMahasiswa = record
    nama   : string[50];
    nim    : string[20];
    alamat : string[100];
    hp     : string[20];
    tempat : string[30];
    tglLahir : TTanggal;
  end;

{--------------------------------------------}
{ ⿢ MAIN PROGRAM                              }
{--------------------------------------------}
var
  mhs : array[1..50] of TMahasiswa;
  n, i : integer;

begin
  clrscr;
  writeln('=== INPUT BIODATA MAHASISWA ===');
  write('Masukkan jumlah mahasiswa: ');
  readln(n);

  for i := 1 to n do
  begin
    writeln;
    writeln('Data mahasiswa ke-', i);

    write('Nama          : '); readln(mhs[i].nama);
    write('NIM           : '); readln(mhs[i].nim);
    write('Alamat        : '); readln(mhs[i].alamat);
    write('No. HP        : '); readln(mhs[i].hp);
    write('Tempat Lahir  : '); readln(mhs[i].tempat);

    writeln('Tanggal Lahir :');
    write('  Tanggal (1-31) : '); readln(mhs[i].tglLahir.tgl);
    write('  Bulan (1-12)   : '); readln(mhs[i].tglLahir.bln);
    write('  Tahun          : '); readln(mhs[i].tglLahir.thn);
  end;

  clrscr;
  writeln('=== DATA BIODATA MAHASISWA ===');

  for i := 1 to n do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);
    writeln('Nama          : ', mhs[i].nama);
    writeln('NIM           : ', mhs[i].nim);
    writeln('Alamat        : ', mhs[i].alamat);
    writeln('No. HP        : ', mhs[i].hp);
    writeln('Tempat Lahir  : ', mhs[i].tempat);
    writeln('Tanggal Lahir : ',
      mhs[i].tglLahir.tgl, '-', mhs[i].tglLahir.bln, '-', mhs[i].tglLahir.thn);
  end;

  readln;
end.
