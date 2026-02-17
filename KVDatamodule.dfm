object MyDataModule: TMyDataModule
  Height = 160
  Width = 337
  object MyQuery: TMSQuery
    Connection = MyConnections
    SQL.Strings = (
      'Select * FROM Kontaktview;'
      '')
    Active = True
    Left = 24
    Top = 8
  end
  object MyConnections: TMSConnection
    Database = 'Kontaktdaten'
    Username = 'sa'
    Server = 'PC-SASA'
    Connected = True
    Left = 40
    Top = 88
    EncryptedPassword = '9EFF9CFF8DFF96FF9DFF9EFFCFFFC7FFDEFF'
  end
  object MyDataSources: TMSDataSource
    DataSet = MyQuery
    Left = 152
    Top = 80
  end
  object TMSQueryForGrid: TMSQuery
    Connection = MyConnections
    Left = 152
    Top = 8
  end
end
