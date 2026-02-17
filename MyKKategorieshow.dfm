object MyKontaktK: TMyKontaktK
  Left = 0
  Top = 0
  Caption = 'Kontaktkategorie'
  ClientHeight = 333
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    000001002000000000000004000000000000000000000000000000000000FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00B8824DF7B8824DFFB8824DFFB8824DFFB8824DFFB882
    4DFFB8824DFFB8824DFFB8824DFFB8824DF7FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00B8824DA9B8824DFFB8824DFFB8824DFFB8824DFFB882
    4DFFB8824DFFB8824DFFB8824DFFB8824DB1FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00B8824D07B8824D80B8824DE2B8824DE4B8824D4FB882
    4D4FB8824DE4B8824DE2B8824D80B8824D09FFFFFF00FFFFFF00FFFFFF00B882
    4DF7B8824DFFB8824DFFB8824DE8B8824D7FB8824D04B8824D2DB8824D3EB882
    4D3EB8824D2EB8824D04B8824D7FB8824DE8B8824DFFB8824DFFB8824DF7B882
    4DA9B8824DFFB8824DFFB8824DFFB8824DFFB8824D72B8824D74B8824DFFB882
    4DFFB8824D74B8824D72B8824DFFB8824DFFB8824DFFB8824DFFB8824DB1B882
    4D07B8824D80B8824DE2B8824DE4B8824D4AB8824D0FB8824DF6B8824DFFB882
    4DFFB8824DF6B8824D0FB8824D4AB8824DE4B8824DE2B8824D80B8824D09FFFF
    FF00FFFFFF00B8824D04B8824D2DB8824D21B8824D77B8824DFFB8824DFFB882
    4DFFB8824DFFB8824D77B8824D21B8824D2EB8824D04FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00B8824D74B8824DA8B8824D57B8824DFFB8824DFFB882
    4DFFB8824DFFB8824D57B8824DA8B8824D74FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00B8824D0FB8824DF6B8824DCAB8824D35B8824DFFB8824DFFB882
    4DFFB8824DFFB8824D35B8824DCAB8824DF6B8824D0FFFFFFF00FFFFFF00FFFF
    FF00FFFFFF00B8824D77B8824DFFB8824DFEB8824D01B8824D9BB8824DF3B882
    4DF3B8824D9FB8824D02B8824DFDB8824DFFB8824D77FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00B8824D57B8824DFFB8824DFFB8824DCDB8824D64B8824D04B882
    4D04B8824D60B8824DC9B8824DFFB8824DFFB8824D57FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00B8824D35B8824DFFB8824DFFB8824DFFB8824DFFB8824D35B882
    4D35B8824DFFB8824DFFB8824DFFB8824DFFB8824D35FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00B8824D01B8824D9BB8824DF3B8824DF3B8824D9FB8824D02B882
    4D01B8824D9BB8824DF3B8824DF3B8824D9FB8824D02FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    0000E0070000E0070000E0070000000000000000000000000000C0030000E007
    0000C0030000C0030000C0030000C0030000C0030000FFFF0000FFFF0000}
  Position = poMainFormCenter
  TextHeight = 15
  object dxPanelCategoryShow: TdxPanel
    Left = 0
    Top = 0
    Width = 526
    Height = 333
    Align = alClient
    TabOrder = 0
    object dxLayoutControl1: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 524
      Height = 331
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      object cxGrid1: TcxGrid
        Left = 12
        Top = 12
        Width = 500
        Height = 307
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = MSDataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGrid1DBTableView1KategorieID: TcxGridDBColumn
            DataBinding.FieldName = 'KategorieID'
            Width = 85
          end
          object cxGrid1DBTableView1Beschreibung: TcxGridDBColumn
            DataBinding.FieldName = 'Beschreibung'
            Width = 326
          end
          object cxGrid1DBTableView1Description: TcxGridDBColumn
            DataBinding.FieldName = 'Description'
            Visible = False
            Width = 287
          end
          object cxGrid1DBTableView1IconID: TcxGridDBColumn
            Caption = 'Farbe'
            DataBinding.FieldName = 'IconID'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = Papierkorb.cxImageListKontaktKategorie
            Properties.Items = <
              item
                ImageIndex = 0
              end
              item
                ImageIndex = 1
                Value = 1
              end
              item
                ImageIndex = 2
                Value = 2
              end
              item
                ImageIndex = 3
                Value = 3
              end
              item
                ImageIndex = 4
                Value = 4
              end
              item
                ImageIndex = 5
                Value = 5
              end
              item
                ImageIndex = 6
                Value = 6
              end
              item
                ImageIndex = 7
                Value = 7
              end
              item
                ImageIndex = 8
                Value = 8
              end
              item
                ImageIndex = 9
                Value = 9
              end>
            Properties.ShowDescriptions = False
            Width = 87
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxGrid1
        ControlOptions.OriginalHeight = 200
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object MSQuery1: TMSQuery
    Connection = MSConnection1
    SQL.Strings = (
      'SELECT * FROM KontaktKategorie;')
    Active = True
    Left = 640
    Top = 128
  end
  object MSDataSource1: TMSDataSource
    DataSet = MSQuery1
    Left = 648
    Top = 72
  end
  object MSConnection1: TMSConnection
    Database = 'Kontaktdaten'
    Username = 'sa'
    Server = 'PC-SASA'
    Connected = True
    Left = 640
    Top = 184
    EncryptedPassword = '9EFF9CFF8DFF96FF9DFF9EFFCFFFC7FFDEFF'
  end
end
