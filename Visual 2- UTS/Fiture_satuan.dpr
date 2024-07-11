program Fiture_satuan;

uses
  Forms,
  Usatuan in 'Usatuan.pas' {Form1},
  Udatamodule in 'Udatamodule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
