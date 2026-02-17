object FrameLieferant: TFrameLieferant
  Left = 0
  Top = 0
  Width = 409
  Height = 572
  Align = alClient
  TabOrder = 0
  object dxPanelLieferant: TdxPanel
    Left = 0
    Top = 0
    Width = 409
    Height = 572
    Align = alClient
    TabOrder = 0
    object dxLayoutControlLieferant: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 407
      Height = 570
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      CustomizeFormTabbedView = True
      object cxTextEditLieferantennummer: TcxTextEdit
        Left = 123
        Top = 48
        Enabled = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
        Width = 272
      end
      object cxTextEditBankverbindung: TcxTextEdit
        Left = 120
        Top = 162
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 3
        Width = 170
      end
      object cxCheckBoxBankAktiv: TcxCheckBox
        Left = 297
        Top = 162
        AutoSize = False
        Caption = 'Aktiv'
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 4
        Height = 30
        Width = 83
      end
      object cxTextEditSteuernummer: TcxTextEdit
        Left = 120
        Top = 128
        Properties.ReadOnly = True
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 2
        Width = 260
      end
      object cxGridBestellhistorie: TcxGrid
        Left = 27
        Top = 264
        Width = 353
        Height = 275
        TabOrder = 5
        object cxGridBestellhistorieDBTableViewBestellhistorie: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = MSDataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.MultiSelect = True
          OptionsView.GroupByBox = False
          object cxGridBestellhistorieDBTableViewBestellhistorieLieferantID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'LieferantID'
            Width = 41
          end
          object cxGridBestellhistorieDBTableViewBestellhistorieLieferantName: TcxGridDBColumn
            Caption = 'Lieferantname'
            DataBinding.FieldName = 'LieferantName'
            Width = 137
          end
          object cxGridBestellhistorieDBTableViewBestellhistorieKontaktPerson: TcxGridDBColumn
            Caption = 'Kontaktperson'
            DataBinding.FieldName = 'KontaktPerson'
            Width = 96
          end
          object cxGridBestellhistorieDBTableViewBestellhistorieEmail: TcxGridDBColumn
            DataBinding.FieldName = 'Email'
            Width = 122
          end
          object cxGridBestellhistorieDBTableViewBestellhistorieTelefon: TcxGridDBColumn
            DataBinding.FieldName = 'Telefon'
            Width = 54
          end
          object cxGridBestellhistorieDBTableViewBestellhistorieAdresse: TcxGridDBColumn
            DataBinding.FieldName = 'Adresse'
            Width = 57
          end
          object cxGridBestellhistorieDBTableViewBestellhistorieBewertung: TcxGridDBColumn
            DataBinding.FieldName = 'Bewertung'
          end
          object cxGridBestellhistorieDBTableViewBestellhistorieAktivStatus: TcxGridDBColumn
            Caption = 'Aktivstatus'
            DataBinding.FieldName = 'AktivStatus'
            Width = 89
          end
          object cxGridBestellhistorieDBTableViewBestellhistorieErstelltAm: TcxGridDBColumn
            Caption = 'Erstellt am'
            DataBinding.FieldName = 'ErstelltAm'
          end
          object cxGridBestellhistorieDBTableViewBestellhistoriePersonID: TcxGridDBColumn
            DataBinding.FieldName = 'PersonID'
            Visible = False
          end
        end
        object cxGridBestellhistorieLevel1: TcxGridLevel
          GridView = cxGridBestellhistorieDBTableViewBestellhistorie
        end
      end
      object ToolBar1: TToolBar
        Left = 12
        Top = 12
        Width = 383
        Height = 29
        Align = alNone
        Caption = 'ToolBar1'
        Color = 16448250
        Images = Papierkorb.cxImageListLieferant
        ParentColor = False
        TabOrder = 0
        object ToolButtonProdukte: TToolButton
          Left = 0
          Top = 0
          Caption = 'ToolButtonProdukte'
          ImageIndex = 0
        end
        object ToolButtonZahlung: TToolButton
          Left = 23
          Top = 0
          Caption = 'ToolButtonZahlung'
          ImageIndex = 4
        end
        object ToolButtonBewertung: TToolButton
          Left = 46
          Top = 0
          Caption = 'ToolButtonBewertung'
          ImageIndex = 5
        end
        object ToolButtonLieferbedingungen: TToolButton
          Left = 69
          Top = 0
          Caption = 'ToolButtonLieferbedingungen'
          ImageIndex = 3
        end
      end
      object dxLayoutControlLieferantGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutControlLieferantGroup_Root
        CaptionOptions.Text = 'Lieferantennummer'
        Control = cxTextEditLieferantennummer
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 223
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Bankverbindung'
        Control = cxTextEditBankverbindung
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 135
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignVert = avClient
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = cxCheckBoxBankAktiv
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 83
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Text = 'Steuernummer'
        Control = cxTextEditSteuernummer
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxGridBestellhistorie
        ControlOptions.OriginalHeight = 200
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutControlLieferantGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Bestellungshistorie'
        ButtonOptions.ShowExpandButton = True
        Index = 3
        Buttons = <
          item
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001974455874536F6674776172650041646F626520496D616765526561
              647971C9653C0000001B744558745469746C6500506167653B4F7269656E7461
              74696F6E3B466C69707F1D18BB0000003F49444154785EDDD2310A00200C4351
              0F9F7B47C9220E966006D1C22B9DFED44632A20580863A50CCF381C90B00B06D
              03C67C1918A280E8BE11589CFC41A403707C3DF921864B3B0000000049454E44
              AE426082}
            OnClick = dxLayoutGroup1Button0Click
          end>
      end
      object dxLayoutGroup3: TdxLayoutGroup
        Parent = dxLayoutControlLieferantGroup_Root
        CaptionOptions.Text = 'Aktionen'
        ItemIndex = 1
        Index = 2
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup3
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = dxLayoutControlLieferantGroup_Root
        CaptionOptions.Text = 'ToolBar1'
        CaptionOptions.Visible = False
        Control = ToolBar1
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 29
        ControlOptions.OriginalWidth = 150
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object MSDataSource1: TMSDataSource
    DataSet = MSQuery1
    Left = 344
    Top = 248
  end
  object MSQuery1: TMSQuery
    Connection = MSConnection1
    SQL.Strings = (
      'SELECT * FROM Lieferant;')
    Active = True
    Left = 352
    Top = 304
  end
  object MSConnection1: TMSConnection
    Database = 'Kontaktdaten'
    Username = 'sa'
    Server = 'PC-SASA'
    Connected = True
    Left = 328
    Top = 184
    EncryptedPassword = '9EFF9CFF8DFF96FF9DFF9EFFCFFFC7FFDEFF'
  end
end
