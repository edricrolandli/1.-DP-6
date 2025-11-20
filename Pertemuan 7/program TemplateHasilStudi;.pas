program TemplateHasilStudi;
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
{ ⿢ FUNGSI KONVERSI NILAI                     }
{--------------------------------------------}
function KonversiNilai(nilai: string): real;
begin
  { TODO:
    - Buat logika konversi nilai huruf ke angka
      A=4, B+=3.5, B=3, C+=2.5, C=2, D=1, E=0 }
end;

{--------------------------------------------}
{ ⿣ MAIN PROGRAM                              }
{--------------------------------------------}
var
  dataMhs : array[1..50] of TMahasiswa;
  n, i, j : integer;
  totalSKS : integer;
  totalNilai : real;

begin
  clrscr;
  writeln('=== INPUT HASIL STUDI MAHASISWA ===');

  { TODO: Input jumlah mahasiswa }
  writeln;
  { TODO: Loop untuk input data mahasiswa }
  {
     Untuk setiap mahasiswa:
       - Input nama
       - Input NIM
       - Input jumlah mata kuliah

       - Loop sebanyak jumlah mata kuliah:
         * Input nama mata kuliah
         * Input SKS
         * Input nilai huruf
         * Hitung skor = SKS * KonversiNilai(nilai)
  }

  clrscr;
  writeln('=== MENAMPILKAN DATA MAHASISWA ===');

  { TODO: Loop tampilkan data tiap mahasiswa satu per satu }
  {
     Di dalam loop:

       - Tampilkan nama dan NIM
       - Tampilkan tabel daftar mata kuliah:
         | No | Mata Kuliah | SKS | Nilai | Skor |

       - Hitung total SKS
       - Hitung total nilai (sum skor)
       - Hitung IP = totalNilai / totalSKS
  }

  readln;
end.
