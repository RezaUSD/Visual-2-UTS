unit Usatuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    dbgrd1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    procedure posisiawal;
    procedure baru;
    procedure ubah;
    procedure UpdateGrid;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Udatamodule;

{$R *.dfm}

procedure TForm1.baru;
begin
  btn1.Enabled := False;
  btn2.Enabled := True;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;

  edt1.SetFocus;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  baru();
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  DataModule1.zSatuan.Append;
  DataModule1.zSatuan.FieldByName('name').AsString := edt1.Text;
  DataModule1.zSatuan.FieldByName('diskripsi').AsString := edt2.Text;

  DataModule1.zSatuan.Post;
  UpdateGrid();
  edt1.Clear;
  edt2.Clear;
  edt1.SetFocus;

  ShowMessage('Data Berhasil di Simpan');
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
  DataModule1.zSatuan.Edit;
  DataModule1.zSatuan.FieldByName('name').AsString := edt1.Text;
  DataModule1.zSatuan.FieldByName('diskripsi').AsString := edt2.Text;

  DataModule1.zSatuan.Post;
  edt1.Clear;
  edt2.Clear;
  edt1.SetFocus;

  ShowMessage('Data Berhasil di Ubah');
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if DataModule1.zSatuan.RecordCount <= 0 then
    MessageDlg('Data Tidak Ada', mtWarning, [mbOK], 0)
  else
  begin
    if MessageDlg('Anda yakin ingin menghapus data ini?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DataModule1.zSatuan.Delete;
      ShowMessage('Data Berhasil Dihapus');
    end;
  end;

  edt1.Clear;
  edt1.SetFocus;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  posisiawal();
  edt1.Clear;
  edt2.Clear;
  UpdateGrid();
end;

procedure TForm1.btn6Click(Sender: TObject);
  var
  searchText: string;
begin
  ubah();
  searchText := edt3.Text;

  DataModule1.zSatuan.SQL.Clear;
  DataModule1.zSatuan.SQL.Add('SELECT * FROM satuan WHERE name LIKE :searchText');
  DataModule1.zSatuan.Params.ParamByName('searchText').AsString := '%' + searchText + '%';
  DataModule1.zSatuan.Open;

  if DataModule1.zSatuan.RecordCount = 0 then
    ShowMessage('Data tidak ditemukan');
    edt3.Clear;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  ubah();
  edt1.Text := DataModule1.zSatuan.fieldbyname('name').AsString;
  edt2.Text := DataModule1.zSatuan.fieldbyname('diskripsi').AsString;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  posisiawal();
end;

procedure TForm1.posisiawal;
begin
  btn1.Enabled := True;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  btn5.Enabled := False;
  edt1.Enabled := False;
  edt2.Enabled := False;
end;

procedure TForm1.ubah;
begin
  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := True;
  btn4.Enabled := True;
  btn5.Enabled := True;
  edt1.Enabled := True;
  edt2.Enabled := True;
end;

procedure TForm1.UpdateGrid;
begin
  DataModule1.zSatuan.Close;
  DataModule1.zSatuan.SQL.Clear;
  DataModule1.zSatuan.SQL.Add('SELECT * FROM satuan');
  DataModule1.zSatuan.Open;
end;

end.
