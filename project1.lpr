program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

var
  x:integer;
  sel: char;
  hata: integer;
  girdi: string;


procedure cikis;
begin
  writeln;
  writeln;
  writeln;
  writeln('<enter> ile cik');
  readln;
end;

procedure carp(sayi:integer; ust:integer);
begin
  writeln(sayi, ' carpi ', ust , ' ', sayi * ust)
end;


begin

  x := 0;

  while x < 10 do
    begin
      writeln(x);
      x:=x+1;
    end;

  writeln;

  repeat
    writeln(x*x);
    x :=x-1;
  until x < 0;

  writeln;

  for x:=1 to 10 do
  begin
    writeln('for: ', x);
  end;

  writeln;

  //repeat
  //  writeln('a ya da b yaz');
  //  readln(sel);
  //until (sel = 'a') or (sel = 'b');
  //writeln('girdi basarili: ', sel);

  //writeln('rakamsal deger girin');
  //repeat
  //   readln(girdi);
  //   Val(girdi, x, hata);
  //until hata = 0;
  //writeln ('girdi basarili: ', girdi);
  //readln;

  carp(3,5);

  cikis;

end.

