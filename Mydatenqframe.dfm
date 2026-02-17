object FrameDatenq: TFrameDatenq
  Left = 0
  Top = 0
  Width = 519
  Height = 683
  Align = alClient
  TabOrder = 0
  object dxPanelDatenq: TdxPanel
    Left = 0
    Top = 0
    Width = 519
    Height = 683
    Align = alClient
    TabOrder = 0
    object EditNotizen: TcxMemo
      Left = 200
      Top = 240
      Lines.Strings = (
        'EditNotizen')
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 33
      Width = 121
    end
    object dxLayoutControlCheck: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 517
      Height = 681
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      object cxGridNotizen: TcxGrid
        Left = 27
        Top = 59
        Width = 463
        Height = 562
        TabOrder = 1
        LookAndFeel.Kind = lfUltraFlat
        object cxGridNotizenDBTableViewNotizen: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = cxGridNotizenDBTableViewNotizenCellDblClick
          OnSelectionChanged = cxGridNotizenDBTableViewNotizenSelectionChanged
          DataController.DataSource = MSDataSourceNotizen
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridNotizenDBTableViewNotizenNotizID: TcxGridDBColumn
            DataBinding.FieldName = 'NotizID'
            DataBinding.IsNullValueType = True
            Visible = False
            Width = 57
          end
          object cxGridNotizenDBTableViewNotizenPersonID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'PersonID'
            DataBinding.IsNullValueType = True
            Visible = False
          end
          object cxGridNotizenDBTableViewNotizenAutor: TcxGridDBColumn
            DataBinding.FieldName = 'Autor'
            DataBinding.IsNullValueType = True
            Width = 71
          end
          object cxGridNotizenDBTableViewNotizenKategorie: TcxGridDBColumn
            DataBinding.FieldName = 'Kategorie'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = Papierkorb.cxImageListKategorisieren
            Properties.Items = <
              item
                Description = 'Wichtige Informationen'
                ImageIndex = 2
                Value = '0'
              end
              item
                Description = 'Weitere Informationen'
                ImageIndex = 3
                Value = '1'
              end
              item
                Description = 'Notizen ohne besondere Priorit'#228't'
                ImageIndex = 4
                Value = '2'
              end
              item
                Description = 'Erf'#252'llt'
                ImageIndex = 5
                Value = '3'
              end
              item
                Description = 'Notizen zur weiteren Diskussion.'
                ImageIndex = 6
                Value = '4'
              end>
            Properties.ShowDescriptions = False
            Width = 62
          end
          object cxGridNotizenDBTableViewNotizenInhalt: TcxGridDBColumn
            DataBinding.FieldName = 'Inhalt'
            DataBinding.IsNullValueType = True
            Width = 58
          end
          object cxGridNotizenDBTableViewNotizenErstellungsdatum: TcxGridDBColumn
            DataBinding.FieldName = 'Erstellungsdatum'
            DataBinding.IsNullValueType = True
            Width = 98
          end
          object cxGridNotizenDBTableViewNotizenLetzteAenderung: TcxGridDBColumn
            Caption = 'Letzte '#196'nderung'
            DataBinding.FieldName = 'LetzteAenderung'
            DataBinding.IsNullValueType = True
            Width = 189
          end
        end
        object cxGridNotizenLevel1: TcxGridLevel
          GridView = cxGridNotizenDBTableViewNotizen
        end
      end
      object ToolBarInfo: TToolBar
        Left = 12
        Top = 647
        Width = 493
        Height = 22
        Align = alNone
        ButtonHeight = 23
        Caption = 'ToolBarInfo'
        Color = 16448250
        EdgeBorders = [ebTop]
        ParentColor = False
        TabOrder = 2
        object cxTextEditGefunden: TcxTextEdit
          Left = 0
          Top = 0
          TabStop = False
          AutoSize = False
          Properties.AutoSelect = False
          Properties.ReadOnly = True
          Style.BorderStyle = ebsNone
          Style.ReadOnly = True
          TabOrder = 1
          Height = 23
          Width = 201
        end
        object cxTextEditInfo: TcxTextEdit
          Left = 201
          Top = 0
          TabStop = False
          AutoSize = False
          Properties.AutoSelect = False
          Properties.ReadOnly = True
          Style.BorderStyle = ebsNone
          Style.ReadOnly = True
          Style.Shadow = False
          TabOrder = 0
          Height = 23
          Width = 192
        end
      end
      object ToolBar1: TToolBar
        Left = 12
        Top = 12
        Width = 493
        Height = 21
        Align = alNone
        Caption = 'ToolBarMain'
        Color = 16448250
        Images = Papierkorb.cxImageListStartlist
        ParentColor = False
        TabOrder = 0
        object ToolButtonNeu: TToolButton
          Left = 0
          Top = 0
          Caption = 'Neu'
          ImageIndex = 27
          OnClick = ToolButtonNeuClick
        end
        object ToolButtonBearbeiten: TToolButton
          Left = 23
          Top = 0
          Caption = 'Bearbeiten'
          ImageIndex = 26
          OnClick = ToolButtonBearbeitenClick
        end
        object ToolButtonLoeschen: TToolButton
          Left = 46
          Top = 0
          Caption = 'L'#246'schen'
          ImageIndex = 24
          OnClick = ToolButtonLoeschenClick
        end
        object ToolButtonExport: TToolButton
          Left = 69
          Top = 0
          Caption = 'ToolButtonExport'
          ImageIndex = 15
          OnClick = ToolButtonExportClick
        end
      end
      object dxLayoutControlCheckGroup_Root1: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 2
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroupNotizen
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxGridNotizen
        ControlOptions.OriginalHeight = 531
        ControlOptions.OriginalWidth = 439
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroupNotizen: TdxLayoutGroup
        Parent = dxLayoutControlCheckGroup_Root1
        AlignHorz = ahClient
        AlignVert = avClient
        Index = 1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutControlCheckGroup_Root1
        CaptionOptions.Visible = False
        Control = ToolBarInfo
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 493
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControlCheckGroup_Root1
        AlignHorz = ahClient
        CaptionOptions.Text = 'ToolBar1'
        CaptionOptions.Visible = False
        Control = ToolBar1
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 474
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object MSQueryNotizen: TMSQuery
    Connection = MyConnectionNotizen
    SQL.Strings = (
      
        'SELECT * FROM [Kontaktdaten].[dbo].[KontaktNotizen] WHERE Person' +
        'ID = 118'
      '')
    Left = 464
    Top = 64
  end
  object MSDataSourceNotizen: TMSDataSource
    DataSet = MSQueryNotizen
    Left = 393
    Top = 75
  end
  object MyConnectionNotizen: TMSConnection
    Database = 'Kontaktdaten'
    Username = 'sa'
    Server = 'PC-SASA'
    Connected = True
    Left = 416
    Top = 7
    EncryptedPassword = '9EFF9CFF8DFF96FF9DFF9EFFCFFFC7FFDEFF'
  end
end
