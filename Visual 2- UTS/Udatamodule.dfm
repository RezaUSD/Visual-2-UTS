object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 246
  Top = 131
  Height = 174
  Width = 280
  object zConnection: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\User\Downloads\libmysql .dll'
    Left = 56
    Top = 48
  end
  object zSatuan: TZQuery
    Connection = zConnection
    Active = True
    SQL.Strings = (
      'SELECT * FROM SATUAN')
    Params = <>
    Left = 136
    Top = 24
  end
  object dsSatuan: TDataSource
    DataSet = zSatuan
    Left = 136
    Top = 80
  end
end
