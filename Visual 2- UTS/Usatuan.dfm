object Form1: TForm1
  Left = 383
  Top = 130
  Width = 599
  Height = 502
  Caption = 'SATUAN'
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 248
    Top = 24
    Width = 40
    Height = 24
    Caption = 'UTS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 80
    Top = 72
    Width = 65
    Height = 23
    Caption = 'NAME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 80
    Top = 112
    Width = 114
    Height = 23
    Caption = 'DISKRIPSI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 72
    Top = 360
    Width = 181
    Height = 23
    Caption = 'MASUKAN NAME'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Century'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt1: TEdit
    Left = 264
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 264
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 304
    Top = 360
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 416
    Top = 88
    Width = 75
    Height = 25
    Caption = 'BARU'
    Font.Charset = OEM_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Terminal'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 64
    Top = 144
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 160
    Top = 144
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 256
    Top = 144
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 352
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 448
    Top = 360
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 8
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 104
    Top = 192
    Width = 369
    Height = 137
    DataSource = DataModule1.dsSatuan
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
end
