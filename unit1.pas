unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type
  TOperacion = (tSuma, tResta, tMultiplica, tDivision, tNenhuma);

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    edDisplay: TEdit;
    procedure Button12Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    PrimerNumero : LongInt;
    operadorSel : TOperacion;
    limpiarDisplay : Boolean;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Button17Click(Sender);
  case TButton(Sender).caption of
  '+' : operadorSel:= tSuma;
  '-' : operadorSel:= tResta;
  '*' : operadorSel:= tMultiplica;
  '/' : operadorSel:= tDivision;
  end;
  PrimerNumero := StrToInt(edDisplay.text);
  limpiarDisplay := True;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   if limpiarDisplay then
   Begin
     edDisplay.text := '';
     limpiarDisplay := false;
   end;
  edDisplay.text:= FloatToStr(StrToFloat(edDisplay.text + TButton(Sender).caption));
end;

procedure TForm1.Button7Click(Sender: TObject);
begin

end;

procedure TForm1.Button12Click(Sender: TObject);
begin

end;

procedure TForm1.Button16Click(Sender: TObject);
begin
   edDisplay.text := '0';
  operadorSel := tNenhuma;
  limpiarDisplay := true;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  if NOT limpiarDisplay then
  case operadorSel of
  tSuma : edDisplay.text := IntToStr(StrToInt(edDisplay.text) + primerNumero);
  tResta : edDisplay.text := IntToStr (primerNumero - StrToInt(edDisplay.text));
  tMultiplica : edDisplay.text := IntToStr(StrToInt(edDisplay.text) * primerNumero);
  tDivision : edDisplay.text :=  IntToStr(primerNumero DIV StrToInt(edDisplay.text));
  end;
  limpiarDisplay := true;

end;

end.

