unit unitcalc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label2: TLabel;
    pnlresult: TPanel;
    edtnum1: TEdit;
    edtnum2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    btnlimp: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnlimpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnlimpClick(Sender: TObject);
begin
edtnum1.Clear;
edtnum2.Clear; pnlresult.Caption:='';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
valor1, valor2, soma: real;
begin
valor1:= strtofloat(edtnum1.Text);
valor2:= strtofloat(edtnum2.Text);
soma:= valor1+valor2;
pnlresult.Caption:=floattostr(soma);


end;

procedure TForm1.Button2Click(Sender: TObject);
var
valor1, valor2, soma:real;
begin
valor1:= strtofloat(edtnum1.Text);
valor2:= strtofloat(edtnum2.Text);
soma:= valor1*valor2;
pnlresult.Caption:=floattostr(soma);

end;

procedure TForm1.Button3Click(Sender: TObject);
var
valor1, valor2, soma:real;
begin
valor1:= strtofloat(edtnum1.Text);
valor2:= strtofloat(edtnum2.Text);
soma:= valor1-valor2;
pnlresult.Caption:=floattostr(soma);
end;

procedure TForm1.Button4Click(Sender: TObject);
var
valor1, valor2, soma:real;
begin
valor1:= strtofloat(edtnum1.Text);
valor2:= strtofloat(edtnum2.Text);
soma:= valor1/valor2;
pnlresult.Caption:=floattostr(soma);
end;

end.
