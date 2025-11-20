program HasilStudiMahasiswa;
uses crt;

{--------------------------------------------}
{ ⿡ TYPE DEFINITION                          }
{--------------------------------------------}
type
  TMataKuliah = record
    namaMK : string[50];
    sks    : integer;
    nilai  : string[3];
    skor   : real;
  end;

  TMahasiswa = record
    nama : string[50];
    nim  : string[20];
    jmlMK : integer;
    mk : array[1..20] of TMataKuliah;
  end;

{--------------------------------------------}
{ ⿢ KONVERSI NILAI                            }
{--------------------------------------------}
function KonversiNilai(nilai: string): real;
begin
  case nilai of
    'A','a'   : KonversiNilai := 4;
    'B+','b+' : KonversiNilai := 3.5;
    'B','b'   : KonversiNilai := 3;
    'C+','c+' : KonversiNilai := 2.5;
    'C','c'   : KonversiNilai := 2;
    'D','d'   : KonversiNilai := 1;
    'E','e'   : KonversiNilai := 0;
  else
    KonversiNilai := 0;
  end;
end;

{--------------------------------------------}
{ ⿣ MAIN PROGRAM                              }
{--------------------------------------------}
var
  mhs : array[1..50] of TMahasiswa;
  n, i, j : integer;
  totalSKS : integer;
  totalNilai : real;

begin
  clrscr;
  writeln('=== INPUT HASIL STUDI MAHASISWA ===');
  write('Masukkan jumlah mahasiswa: ');
  readln(n);

  for i := 1 to n do
  begin
    writeln;
    writeln('Mahasiswa ke-', i);
    write('Nama : '); readln(mhs[i].nama);
    write('NIM  : '); readln(mhs[i].nim);
    write('Jumlah Mata Kuliah: ');
    readln(mhs[i].jmlMK);

    for j := 1 to mhs[i].jmlMK do
    begin
      writeln('  MK ke-', j);
      write('    Nama MK : '); readln(mhs[i].mk[j].namaMK);
      write('    SKS     : '); readln(mhs[i].mk[j].sks);
      write('    Nilai   : '); readln(mhs[i].mk[j].nilai);

      mhs[i].mk[j].skor :=
        mhs[i].mk[j].sks * KonversiNilai(mhs[i].mk[j].nilai);
    end;
  end;

  {--------------------------------------------}
  { ⿤ TAMPILKAN DATA SATU PER SATU             }
  {--------------------------------------------}
  clrscr;
  for i := 1 to n do
  begin
    clrscr;
    writeln('Nama : ', mhs[i].nama);
    writeln('NIM  : ', mhs[i].nim);
    writeln;

    writeln('----------------------------------------------');
    writeln('| No | Mata Kuliah         | SKS | Nilai | Skor |');
    writeln('----------------------------------------------');

    totalSKS := 0;
    totalNilai := 0;

    for j := 1 to mhs[i].jmlMK do
    begin
      writeln('| ', j:2, ' | ',
        mhs[i].mk[j].namaMK:20, ' | ',
        mhs[i].mk[j].sks:3, ' | ',
        mhs[i].mk[j].nilai:5, ' | ',
        mhs[i].mk[j].skor:5:1, ' |');

      totalSKS := totalSKS + mhs[i].mk[j].sks;
      totalNilai := totalNilai + mhs[i].mk[j].skor;
    end;

    writeln('----------------------------------------------');
    writeln('| TOTAL                        |     ', totalSKS:3, ' | ', totalNilai:5:1, ' |');
    writeln('----------------------------------------------');

    writeln;
    writeln('Jumlah SKS : ', totalSKS);
    writeln('IP         : ', (totalNilai / totalSKS):2:2);

    writeln;
    writeln('Tekan sembarang tombol untuk melihat data selanjutnya..');
    readkey;
  end;

end.
