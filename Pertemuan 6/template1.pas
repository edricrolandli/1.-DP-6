function IsPrime(n: integer): boolean;
var
  // deklarasi variabel
begin
  // TODO 1: Handle bilangan kurang dari 2
  if n < 2 then
  begin
    IsPrime := false;
    exit;
  end;
  
  // TODO 2: Handle bilangan 2
  if n = 2 then
  begin
    IsPrime := true;
    exit;
  end;
  
  // TODO 3: Handle bilangan genap
  if n mod 2 = 0 then
  begin
    IsPrime := false;
    exit;
  end;
  
  // TODO 4: Cek faktor ganjil
  i := 3;
  while i * i <= n do
  begin
    if n mod i = 0 then
    begin
      IsPrime := false;
      exit;
    end;
    i := i + 2;
  end;
  
  // TODO 5: Return true jika lolos semua pengecekan
  IsPrime := true;
end;