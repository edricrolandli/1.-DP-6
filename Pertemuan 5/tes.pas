{
NIM :
NAMA :
}

program BelajarArray;
uses crt;

var
    // Deklarasi array 1 dimensi (berisi 5 nama)
    nama: array[1..5] of string;
    
    // Contoh array dua dimensi (matriks)
    matrix: array[1..2, 1..3] of integer;
    matrix1: array[1..3, 1..3] of integer;
    matrix2: array[1..4, 1..6] of integer;

    i, j: integer;
    nama1, s1, s2, s: string;
    angka: integer;
    nilai: array[1..5] of integer;
    
begin
    clrscr;
    writeln('=== BELAJAR ARRAY DI PASCAL ===');
    writeln;

    {------------------------------------------------------------}
    { ARRAY 1 DIMENSI }
    {------------------------------------------------------------}
    // Array adalah kumpulan data dengan tipe yang sama.
    // Di sini kita punya 5 elemen string.
    
    nama[1] := 'Alya';
    nama[2] := 'Rizky';
    nama[3] := 'Rifki';
    nama[4] := 'Fatih';
    nama[5] := 'Dhafa';

    writeln('Daftar Nama Mahasiswa:');
    for i := 1 to 5 do
        writeln('Nama ke-', i, ': ', nama[i]);

    writeln;
    writeln('Daftar Nama (dibalik urutan):');
    for i := 5 downto 1 do
        writeln('Nama ke-', i, ': ', nama[i]);

    {------------------------------------------------------------}
    { ARRAY 2 DIMENSI (MATRIX) }
    {------------------------------------------------------------}
    writeln; writeln('Contoh Matriks 2x3:');
    matrix[1,1] := 1; matrix[1,2] := 2; matrix[1,3] := 3;
    matrix[2,1] := 4; matrix[2,2] := 5; matrix[2,3] := 6;

    for i := 1 to 2 do
    begin
        for j := 1 to 3 do
            write(matrix[i,j]:4);
        writeln;
    end;

    writeln; writeln('Contoh Matriks 3x3:');
    for i := 1 to 3 do
        for j := 1 to 3 do
            matrix1[i,j] := (i-1)*3 + j;

    for i := 1 to 3 do
    begin
        for j := 1 to 3 do
            write(matrix1[i,j]:4);
        writeln;
    end;

    writeln; writeln('Contoh Matriks 4x6:');
    for i := 1 to 4 do
        for j := 1 to 6 do
            matrix2[i,j] := (i-1)*6 + j;

    for i := 1 to 4 do
    begin
        for j := 1 to 6 do
            write(matrix2[i,j]:4);
        writeln;
    end;

    {------------------------------------------------------------}
    { STRING SEBAGAI ARRAY KARAKTER }
    {------------------------------------------------------------}
    writeln;
    nama1 := 'Naufal';
    writeln('Nama: ', nama1);
    writeln('Karakter pertama: ', nama1[1]);
    writeln('Karakter ketiga: ', nama1[3]);
    writeln('Semua karakter dalam nama:');
    for i := 1 to length(nama1) do
        writeln('Huruf ke-', i, ': ', nama1[i]);

    {------------------------------------------------------------}
    { PENGOPERASIAN STRING }
    {------------------------------------------------------------}
    s1 := 'Hello';
    s2 := 'World';
    s := s1 + ' ' + s2;
    writeln; writeln('Gabungan string: ', s);
    writeln('Panjang string gabungan: ', length(s));

    {------------------------------------------------------------}
    { UKURAN ARRAY DAN JUMLAH ELEMEN }
    {------------------------------------------------------------}
    writeln;
    writeln('Ukuran satu elemen integer (byte): ', sizeof(angka));
    writeln('Ukuran total array nilai (byte): ', sizeof(nilai));
    writeln('Jumlah elemen di dalam array nilai: ', sizeof(nilai) div sizeof(angka));

    writeln;
    writeln('=== Selesai ===');
    readln;
end.
