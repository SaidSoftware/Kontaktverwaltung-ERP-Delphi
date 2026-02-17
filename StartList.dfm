object StartListe: TStartListe
  AlignWithMargins = True
  Left = 0
  Top = 0
  AlphaBlend = True
  Caption = 'Kontaktliste'
  ClientHeight = 760
  ClientWidth = 1265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000760000007600000000000000000000000000
    0000FFAA5506FF924CC7FF924CC7FF924CC7FF924CC7FF924CC7FF924CC7FF92
    4CC7FF924CC7FF9D5194FFA15677FF9F50100000000000000000000000000000
    0000FF926D07FF9951FFFF9951FFFF9951FFFF9951FFFF9951FFFF9951FFFF99
    51FFFF9A51FFFFA155FFFFA155FFFFA1558D0000000000000000000000000000
    0000FF996605FFA155FFFEA055FFF59D56FFF59D56FFF59D56FFF59D56FFFEA0
    55FFFFA155FFFFA155FFFFA155FFF1A264B05FACFF2B00000000000000000000
    0000FF996605FFA155FFF69E56FFC28A5CFFC28A5CFFC28A5CFFC28A5CFFF49D
    56FFFFA155FFFFA155FFFFA155FFD4A482DB61ABFFF755AAFF03000000000000
    0000FF996605FFA155FFF59D56FFB8865DFFB8865DFFE89858FFFFA155FFFFA1
    55FFFFA155FFFFA155FFFFA155FFD4A482DB61ABFFFE80BFFF04000000000000
    0000FF996605FFA155FFFFA155FFF59D56FFF59D56FFFDA055FFFFA155FFFFA1
    55FFFFA155FFFFA155FFFFA155FFE4A271C060ACFF6500000000000000000000
    0000FF996605FFA155FFFFA155FFFFA155FFFFA155FFFFA155FFFFA155FFFFA1
    55FFFFA155FFFFA155FFFFA155FFFFA154A00000000000000000000000000000
    0000FF996605FFA155FFFFA155FFFFA155FFFFD5C2FFFFD6C7FFFFD4C3FFFFD4
    C3FFFFC199FFFFA155FFFFA155FFE4A771C060C8FF6200000000000000000000
    0000FF996605FFA155FFFFA155FFFFA155FFFFD5C2FFFFDCD1FFFFDCD1FFFFDC
    D1FFFFB987FFFFA155FFFFA155FFD4AC82DB61C8FFFE80BFFF04000000000000
    0000FF996605FFA155FFFFA155FFFFA155FFFFCCAFFFFFDCD1FFFFDCD1FFFFDB
    D0FFFFB074FFFFA155FFFFA155FFD4AC82DB61C9FFF855AAFF03000000000000
    0000FF996605FFA155FFFFA155FFFFA155FFFFA45BFFFFD3BDFFFFDBD0FFFFB7
    83FFFFA155FFFFA155FFFFA155FFF3AE77D4D2D6DDA600000000000000000000
    0000FF996605FFA155FFFFA155FFFFA155FFFFB177FFFFDCD1FFFFDCD1FFFFCC
    AFFFFFA155FFFFA155FFFFA155FFFFB176DBFFDCD1FFFFCCCC05000000000000
    0000FF996605FFA155FFFFA155FFFFA155FFFFA55FFFFFD4C0FFFFDBD0FFFFB9
    87FFFFA155FFFFA155FFFFA155FFFFB176DBFFDCD1ECFFFFFF02000000000000
    0000FF996605FFA155FFFFA155FFFFA155FFFFA155FFFFA157FFFFA55CFFFFA1
    55FFFFA155FFFFA155FFFFA155FFFFA45AA8FFD8D80D00000000000000000000
    0000FF996605FFA155FFFFA155FFFFA155FFFFA155FFFFA155FFFFA155FFFFA1
    55FFFFA155FFFFA155FFFFA155FFFFA2548E0000000000000000000000000000
    0000FF808002FFA15677FFA15677FFA15677FFA15677FFA15677FFA15677FFA1
    5677FFA15677FFA15677FFA05671FFA55A110000000000000000000000008007
    0000800700008003000080010000800100008003000080070000800300008001
    000080010000800300008001000080010000800300008007000080070000}
  KeyPreview = True
  PopupMenu = PopupMenuStartliste
  Position = poOwnerFormCenter
  PrintScale = poPrintToFit
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object dxPanelStartlist: TdxPanel
    Left = 0
    Top = 124
    Width = 1265
    Height = 615
    Align = alClient
    Color = clWindow
    LookAndFeel.SkinName = 'WXI'
    TabOrder = 0
    object dxLayoutControlKategorie: TdxLayoutControl
      Left = 0
      Top = 183
      Width = 1263
      Height = 430
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      object cxFTabControl: TcxPageControl
        Left = 12
        Top = 12
        Width = 1239
        Height = 406
        Color = 16448250
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Properties.ActivePage = cxTabSheet1
        Properties.AllowTabDragDrop = True
        Properties.CloseButtonMode = cbmActiveTab
        Properties.CustomButtons.Buttons = <>
        Properties.Options = [pcoAlwaysShowGoDialogButton, pcoFixedTabWidthWhenRotated, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
        Properties.ShowTabHints = True
        ClientRectBottom = 405
        ClientRectLeft = 1
        ClientRectRight = 1238
        ClientRectTop = 33
        object cxTabSheet1: TcxTabSheet
          AlignWithMargins = True
          Caption = 'Alle'
          Color = 16448250
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          ImageIndex = 0
          ParentColor = False
          ParentFont = False
          object dxLayoutControlKategorien: TdxLayoutControl
            Left = 0
            Top = -16
            Width = 1231
            Height = 382
            Align = alBottom
            TabOrder = 0
            Visible = False
            LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
            object StringGrid1: TcxGrid
              AlignWithMargins = True
              Left = 12
              Top = 12
              Width = 1207
              Height = 352
              TabOrder = 0
              OnExit = StringGrid1Exit
              LookAndFeel.Kind = lfUltraFlat
              LookAndFeel.NativeStyle = False
              LookAndFeel.ScrollbarMode = sbmDefault
              LookAndFeel.SkinName = 'WXI'
              object StringGrid1DBBandedTableView1: TcxGridDBBandedTableView
                OnMouseDown = StringGrid1DBBandedTableView1MouseDown
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                OnCellDblClick = StringGrid1DBBandedTableView1CellDblClick
                OnCustomDrawCell = StringGrid1DBBandedTableView1CustomDrawCell
                OnFocusedRecordChanged = StringGrid1DBBandedTableView1FocusedRecordChanged
                OnSelectionChanged = StringGrid1DBBandedTableView1SelectionChanged
                DataController.DataSource = MyDataSourceKontakt
                DataController.Summary.DefaultGroupSummaryItems = <
                  item
                    Kind = skCount
                    Column = StringGrid1DBBandedTableView1Kategorie
                  end>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsBehavior.FixedGroups = True
                OptionsSelection.MultiSelect = True
                OptionsView.CellEndEllipsis = True
                OptionsView.GroupRowStyle = grsOffice11
                Bands = <
                  item
                    Caption = 'KontaktID'
                    FixedKind = fkLeftDynamic
                    Options.HoldOwnColumnsOnly = True
                    Width = 262
                  end
                  item
                    Caption = 'Kontaktdaten'
                    Options.HoldOwnColumnsOnly = True
                    Width = 576
                  end
                  item
                    Caption = 'Adresse'
                    Options.HoldOwnColumnsOnly = True
                    Width = 301
                  end
                  item
                    Caption = 'Telefon 1'
                    Options.HoldOwnColumnsOnly = True
                    Width = 203
                  end
                  item
                    Caption = 'Telefon 2'
                    Options.HoldOwnColumnsOnly = True
                    Width = 199
                  end
                  item
                    Caption = 'Telefon 3'
                    Options.HoldOwnColumnsOnly = True
                    Width = 177
                  end
                  item
                    Caption = 'Email'
                    Options.HoldOwnColumnsOnly = True
                  end
                  item
                    Caption = 'Email 2'
                    Options.HoldOwnColumnsOnly = True
                  end
                  item
                    Caption = 'Email 3'
                    Options.HoldOwnColumnsOnly = True
                  end
                  item
                    Caption = 'Notizen & Archiv'#10
                    Options.HoldOwnColumnsOnly = True
                  end>
                object StringGrid1DBBandedTableView1ID: TcxGridDBBandedColumn
                  Caption = 'ID'
                  DataBinding.FieldName = 'PersonID'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'ID'
                  Options.Editing = False
                  Width = 66
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1AutoArchiv: TcxGridDBBandedColumn
                  Caption = 'Autoarchiv'
                  DataBinding.FieldName = 'Enabled'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = Papierkorb.cxImageListArchivAktiv
                  Properties.Items = <
                    item
                      Description = 'AutoArchiv'
                      ImageIndex = 4
                      Value = True
                    end>
                  Properties.ShowDescriptions = False
                  OnGetCellHint = StringGrid1DBBandedTableView1AutoArchivGetCellHint
                  Options.Editing = False
                  Width = 77
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Anrede: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Anrede'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Anrede'
                  Options.Editing = False
                  Width = 69
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Titel: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Titel'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Titel'
                  Options.Editing = False
                  Width = 68
                  Position.BandIndex = 1
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Name: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Name'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Name'
                  Options.Editing = False
                  Width = 88
                  Position.BandIndex = 1
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Vorname: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Vorname'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Vorname'
                  Options.Editing = False
                  Width = 87
                  Position.BandIndex = 1
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Geburtsdatum: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Geburtsdatum'
                  DataBinding.IsNullValueType = True
                  Options.Editing = False
                  Width = 93
                  Position.BandIndex = 1
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Telefontyp1: TcxGridDBBandedColumn
                  Caption = 'Typ'
                  DataBinding.FieldName = 'Telefontyp'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Typ'
                  Options.Editing = False
                  Width = 51
                  Position.BandIndex = 3
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Telefon1: TcxGridDBBandedColumn
                  Caption = 'Nummer'
                  DataBinding.FieldName = 'Telefon'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxHyperLinkEditProperties'
                  HeaderHint = 'Nummer'
                  Options.Editing = False
                  Width = 87
                  Position.BandIndex = 3
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Telefontyp2: TcxGridDBBandedColumn
                  Caption = 'Typ'
                  DataBinding.FieldName = 'Telefontyp2'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Typ'
                  Options.Editing = False
                  Width = 54
                  Position.BandIndex = 4
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Telefon2: TcxGridDBBandedColumn
                  Caption = 'Nummer'
                  DataBinding.FieldName = 'Telefon 2'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxHyperLinkEditProperties'
                  HeaderHint = 'Nummer'
                  Options.Editing = False
                  Width = 60
                  Position.BandIndex = 4
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Telefontyp3: TcxGridDBBandedColumn
                  Caption = 'Typ'
                  DataBinding.FieldName = 'Telefontyp3'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Typ'
                  Options.Editing = False
                  Width = 51
                  Position.BandIndex = 5
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Telefon3: TcxGridDBBandedColumn
                  Caption = 'Nummer'
                  DataBinding.FieldName = 'Telefon 3'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxHyperLinkEditProperties'
                  HeaderHint = 'Nummer'
                  Options.Editing = False
                  Width = 78
                  Position.BandIndex = 5
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Emailtyp1: TcxGridDBBandedColumn
                  Caption = 'Typ'
                  DataBinding.FieldName = 'Emailtyp'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Typ'
                  Options.Editing = False
                  Width = 55
                  Position.BandIndex = 6
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Email1: TcxGridDBBandedColumn
                  Caption = 'Emailadresse'
                  DataBinding.FieldName = 'Email'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxHyperLinkEditProperties'
                  HeaderHint = 'Emailadresse'
                  Options.Editing = False
                  Width = 117
                  Position.BandIndex = 6
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Emailtyp2: TcxGridDBBandedColumn
                  Caption = 'Typ'
                  DataBinding.FieldName = 'Emailtyp2'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Typ'
                  Options.Editing = False
                  Width = 56
                  Position.BandIndex = 7
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Email2: TcxGridDBBandedColumn
                  Caption = 'Emailadresse'
                  DataBinding.FieldName = 'Email 2'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxHyperLinkEditProperties'
                  HeaderHint = 'Emailadresse'
                  Options.Editing = False
                  Width = 99
                  Position.BandIndex = 7
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Emailtyp3: TcxGridDBBandedColumn
                  Caption = 'Typ'
                  DataBinding.FieldName = 'Emailtyp3'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Typ'
                  Options.Editing = False
                  Width = 53
                  Position.BandIndex = 8
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Email3: TcxGridDBBandedColumn
                  Caption = 'Emailadresse'
                  DataBinding.FieldName = 'Email 3'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxHyperLinkEditProperties'
                  HeaderHint = 'Emailadresse'
                  Options.Editing = False
                  Width = 119
                  Position.BandIndex = 8
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1PLZ: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'PLZ'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'PLZ'
                  Options.Editing = False
                  Width = 47
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Ort: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Ort'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxHyperLinkEditProperties'
                  HeaderHint = 'Ort'
                  Options.Editing = False
                  Position.BandIndex = 2
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Strasse: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Strasse'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Strasse'
                  Options.Editing = False
                  Width = 85
                  Position.BandIndex = 2
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Hausnummer: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Hausnummer'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Hausnummer'
                  Options.Editing = False
                  Width = 88
                  Position.BandIndex = 2
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Notizen: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Notizen'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = Papierkorb.cxImageListNotizen
                  Properties.Items = <
                    item
                      Description = '1'
                      ImageIndex = 0
                      Value = '1'
                    end>
                  Properties.ShowDescriptions = False
                  OnGetCellHint = StringGrid1DBBandedTableView1NotizenGetCellHint
                  HeaderHint = 'Notizen'
                  Options.Editing = False
                  Width = 65
                  Position.BandIndex = 9
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Bild: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Bild'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageProperties'
                  Properties.FitMode = ifmNormal
                  Properties.GraphicClassName = 'TdxSmartImage'
                  Visible = False
                  Position.BandIndex = 9
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1IsArchived: TcxGridDBBandedColumn
                  Caption = 'Archiv'
                  DataBinding.FieldName = 'IsArchived'
                  DataBinding.IsNullValueType = True
                  HeaderHint = 'Archiv'
                  Width = 49
                  Position.BandIndex = 9
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1AnredeIcon: TcxGridDBBandedColumn
                  Caption = 'AnredeIcon'
                  DataBinding.FieldName = 'AnredeIconIndex'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = Papierkorb.cxImageListKategorie
                  Properties.Items = <
                    item
                      Description = 'Man'
                      ImageIndex = 0
                      Value = 0
                    end
                    item
                      Description = 'Frau'
                      ImageIndex = 1
                      Value = 1
                    end
                    item
                      Description = 'Divers'
                      ImageIndex = 15
                      Value = 2
                    end
                    item
                      Description = 'Andere'
                      ImageIndex = 16
                      Value = 3
                    end>
                  Properties.ShowDescriptions = False
                  OnGetCellHint = StringGrid1DBBandedTableView1AnredeIconGetCellHint
                  Options.Editing = False
                  Width = 104
                  Position.BandIndex = 1
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1TitelIcon: TcxGridDBBandedColumn
                  Caption = 'TitelIcon'
                  DataBinding.FieldName = 'TitelIconIndex'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = Papierkorb.cxImageListKategorie
                  Properties.Items = <
                    item
                      Description = 'Assistent'
                      ImageIndex = 12
                      Value = 4
                    end
                    item
                      Description = 'Professor'
                      ImageIndex = 13
                      Value = 5
                    end
                    item
                      Description = 'Doktor'
                      ImageIndex = 9
                      Value = 6
                    end
                    item
                      Description = 'Andere'
                      ImageIndex = 16
                      Value = 7
                    end>
                  Properties.ShowDescriptions = False
                  OnGetCellHint = StringGrid1DBBandedTableView1TitelIconGetCellHint
                  Options.Editing = False
                  Width = 66
                  Position.BandIndex = 1
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1TelefonIcon: TcxGridDBBandedColumn
                  Caption = 'TypIcon'
                  DataBinding.FieldName = 'TelefontypIconIndex'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = Papierkorb.cxImageListKategorie
                  Properties.Items = <
                    item
                      Description = 'Privat'
                      ImageIndex = 7
                      Value = 8
                    end
                    item
                      Description = 'Gesch'#228'ftlich'
                      ImageIndex = 8
                      Value = 9
                    end
                    item
                      Description = 'Haus'
                      ImageIndex = 6
                      Value = 10
                    end
                    item
                      Description = 'Andere'
                      ImageIndex = 16
                      Value = 11
                    end>
                  Properties.ShowDescriptions = False
                  OnGetCellHint = StringGrid1DBBandedTableView1TelefonIconGetCellHint
                  Options.Editing = False
                  Width = 64
                  Position.BandIndex = 3
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Telefon2Icon: TcxGridDBBandedColumn
                  Caption = 'TypIcon'
                  DataBinding.FieldName = 'Telefontyp2IconIndex'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = Papierkorb.cxImageListKategorie
                  Properties.Items = <
                    item
                      Description = 'Privat'
                      ImageIndex = 7
                      Value = 8
                    end
                    item
                      Description = 'Gesch'#228'ftlich'
                      ImageIndex = 8
                      Value = 9
                    end
                    item
                      Description = 'Haus'
                      ImageIndex = 6
                      Value = 10
                    end
                    item
                      Description = 'Andere'
                      ImageIndex = 16
                      Value = 11
                    end>
                  Properties.ShowDescriptions = False
                  OnGetCellHint = StringGrid1DBBandedTableView1TelefonIconGetCellHint
                  Options.Editing = False
                  Width = 63
                  Position.BandIndex = 4
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Telefon3Icon: TcxGridDBBandedColumn
                  Caption = 'TypIcon'
                  DataBinding.FieldName = 'Telefontyp3IconIndex'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = Papierkorb.cxImageListKategorie
                  Properties.Items = <
                    item
                      Description = 'Privat'
                      ImageIndex = 7
                      Value = 8
                    end
                    item
                      Description = 'Gesch'#228'ftlich'
                      ImageIndex = 8
                      Value = 9
                    end
                    item
                      Description = 'Haus'
                      ImageIndex = 6
                      Value = 10
                    end
                    item
                      Description = 'Andere'
                      ImageIndex = 16
                      Value = 11
                    end>
                  Properties.ShowDescriptions = False
                  OnGetCellHint = StringGrid1DBBandedTableView1TelefonIconGetCellHint
                  Options.Editing = False
                  Width = 47
                  Position.BandIndex = 5
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1EmaiLIcon: TcxGridDBBandedColumn
                  Caption = 'TypIcon'
                  DataBinding.FieldName = 'EmailtypIconIndex'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = Papierkorb.cxImageListKategorie
                  Properties.Items = <
                    item
                      Description = 'Privat'
                      ImageIndex = 7
                      Value = 12
                    end
                    item
                      Description = 'Gesch'#228'ftlich'
                      ImageIndex = 8
                      Value = 13
                    end
                    item
                      Description = 'Andere'
                      ImageIndex = 16
                      Value = 14
                    end>
                  Properties.ShowDescriptions = False
                  OnGetCellHint = StringGrid1DBBandedTableView1EmaiLIconGetCellHint
                  Options.Editing = False
                  Width = 50
                  Position.BandIndex = 6
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Email2Icon: TcxGridDBBandedColumn
                  Caption = 'TypIcon'
                  DataBinding.FieldName = 'Emailtyp2IconIndex'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = Papierkorb.cxImageListKategorie
                  Properties.Items = <
                    item
                      Description = 'Privat'
                      ImageIndex = 7
                      Value = 12
                    end
                    item
                      Description = 'Gesch'#228'ftlich'
                      ImageIndex = 8
                      Value = 13
                    end
                    item
                      Description = 'Andere'
                      ImageIndex = 16
                      Value = 14
                    end>
                  Properties.ShowDescriptions = False
                  OnGetCellHint = StringGrid1DBBandedTableView1EmaiLIconGetCellHint
                  Options.Editing = False
                  Width = 52
                  Position.BandIndex = 7
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Email3Icon: TcxGridDBBandedColumn
                  Caption = 'TypIcon'
                  DataBinding.FieldName = 'Emailtyp3IconIndex'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = Papierkorb.cxImageListKategorie
                  Properties.Items = <
                    item
                      Description = 'Privat'
                      ImageIndex = 7
                      Value = 12
                    end
                    item
                      Description = 'Gesch'#228'ftlich'
                      ImageIndex = 8
                      Value = 13
                    end
                    item
                      Description = 'Andere'
                      ImageIndex = 16
                      Value = 14
                    end>
                  Properties.ShowDescriptions = False
                  OnGetCellHint = StringGrid1DBBandedTableView1EmaiLIconGetCellHint
                  Options.Editing = False
                  Width = 55
                  Position.BandIndex = 8
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Dateien: TcxGridDBBandedColumn
                  Caption = 'Dateien'
                  DataBinding.FieldName = 'Datei'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = Papierkorb.cxImageListNotizen
                  Properties.Items = <
                    item
                      Description = '1'
                      ImageIndex = 0
                      Value = 1
                    end>
                  Properties.ShowDescriptions = False
                  OnGetCellHint = StringGrid1DBBandedTableView1DateienGetCellHint
                  HeaderHint = 'Dateien'
                  Options.Editing = False
                  Width = 54
                  Position.BandIndex = 9
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1Kategorie: TcxGridDBBandedColumn
                  Caption = 'Kategorie'
                  DataBinding.IsNullValueType = True
                  Visible = False
                  OnGetCellHint = StringGrid1DBBandedTableView1KategorieGetCellHint
                  HeaderGlyph.SourceDPI = 96
                  HeaderGlyph.Data = {
                    89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                    610000001974455874536F6674776172650041646F626520496D616765526561
                    647971C9653C00000018744558745469746C65005465616D3B50656F706C653B
                    47726F75703B5C39E816000000D749444154785EADD3310AC250100450958058
                    E50C1EC074B61E202096692D3C4108A48C780D0B5B2DD37905035E2258D80B49
                    A5DF11061961F31B53BC66771D32910C9C737FE92F60B93B0F610F0F3AC0A86B
                    6E05CCC129CECCB91590C8C1153610D01A2EB24FAC809CCB97A7CE9337B91510
                    420395A74EC59B5003342483A3D451097799F92FB0EB0CA65247E5DC45107C03
                    3018C3166AB8412C751C359CC5BCA9F99BC927E064F44D21935906A971577E02
                    5A19DCA1903A0B8A382B78E3A8D59768D559D1CF63777D0B52C7ABF404B08E5F
                    DBEBD7F806C3AB7E595618C60D0000000049454E44AE426082}
                  MinWidth = 150
                  Options.Editing = False
                  Options.ShowGroupValuesWithImages = True
                  Options.SortByDisplayText = isbtOn
                  Width = 150
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1KategorieName: TcxGridDBBandedColumn
                  Caption = 'Kategorie'
                  DataBinding.FieldName = 'Kategoriename'
                  DataBinding.IsNullValueType = True
                  Options.Editing = False
                  Width = 119
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object StringGrid1DBBandedTableView1KategorieID: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'KategorieIconID'
                  DataBinding.IsNullValueType = True
                  Visible = False
                  Options.Editing = False
                  Width = 126
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
              end
              object StringGrid1Level1: TcxGridLevel
                GridView = StringGrid1DBBandedTableView1
              end
            end
            object dxLayoutControlKategorienGroup_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutControlKategorienGroup_Root
              Control = StringGrid1
              ControlOptions.OriginalHeight = 352
              ControlOptions.OriginalWidth = 1223
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
      end
      object dxLayoutControlKategorieGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxFTabControl
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 405
        ControlOptions.OriginalWidth = 289
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutControlKategorieGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        ShowBorder = False
        Index = 0
      end
    end
    object cxPageControlSuchParameter: TcxPageControl
      Left = 0
      Top = 0
      Width = 1263
      Height = 178
      Align = alTop
      Color = 15790320
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      Properties.ActivePage = cxTabSheetSuchGlobal
      Properties.CustomButtons.Buttons = <>
      Properties.Images = Papierkorb.cxImageListAll
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.ScrollbarMode = sbmHybrid
      LookAndFeel.ScrollMode = scmSmooth
      LookAndFeel.SkinName = 'WXI'
      ClientRectBottom = 177
      ClientRectLeft = 1
      ClientRectRight = 1262
      ClientRectTop = 29
      object cxTabSheetSuchGlobal: TcxTabSheet
        Caption = 'Suchen'
        object dxLayoutControlSuchParameter: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1261
          Height = 148
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
          CustomizeFormTabbedView = True
          object DateGeburtsdatum: TcxDateEdit
            Left = 442
            Top = 62
            AutoSize = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 6
            Height = 24
            Width = 305
          end
          object EditID: TcxTextEdit
            Left = 108
            Top = 31
            AutoSize = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 0
            Height = 24
            Width = 245
          end
          object EditName: TcxTextEdit
            Left = 108
            Top = 62
            AutoSize = False
            Properties.OnEditValueChanged = EditNamePropertiesEditValueChanged
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 4
            Height = 24
            Width = 245
          end
          object cxComboBoxArchiv: TcxComboBox
            Left = 108
            Top = 93
            AutoSize = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            TabOrder = 5
            Height = 24
            Width = 100
          end
          object EditVorname: TcxTextEdit
            Left = 442
            Top = 31
            AutoSize = False
            Properties.OnEditValueChanged = EditVornamePropertiesEditValueChanged
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 1
            Height = 24
            Width = 305
          end
          object EditStrasse: TcxTextEdit
            Left = 802
            Top = 62
            AutoSize = False
            Properties.OnEditValueChanged = EditStrassePropertiesEditValueChanged
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 7
            Height = 24
            Width = 422
          end
          object EditPLZ: TcxTextEdit
            Left = 802
            Top = 31
            AutoSize = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 2
            OnExit = EditPLZExit
            Height = 24
            Width = 57
          end
          object EditOrt: TcxTextEdit
            Left = 866
            Top = 31
            AutoSize = False
            Properties.OnEditValueChanged = EditOrtPropertiesEditValueChanged
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 3
            Height = 24
            Width = 358
          end
          object dxLayoutControlSuchParameterGroup_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Geburtsdatum'
            Control = DateGeburtsdatum
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 305
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            CaptionOptions.Text = 'ID'
            Control = EditID
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 245
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignVert = avTop
            CaptionOptions.Text = 'Name'
            Control = EditName
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 245
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Archivzustand'
            Control = cxComboBoxArchiv
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 100
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            CaptionOptions.Text = 'Vorname'
            Control = EditVorname
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 305
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            CaptionOptions.Text = 'Strasse'
            Control = EditStrasse
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 422
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutGroupSuchenGlobal: TdxLayoutGroup
            Parent = dxLayoutGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Suchen alle'
            ShowBorder = False
            Index = 0
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            CaptionOptions.Text = 'PLZ/Ort'
            Control = EditPLZ
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 57
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            Control = EditOrt
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 358
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutGroup3: TdxLayoutGroup
            Parent = dxLayoutControlSuchParameterGroup_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Group'
            CaptionOptions.Visible = False
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroupSuchenGlobal
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroupSuchenGlobal
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup2
            Index = 0
          end
        end
      end
      object cxTabSheetSuchennachNotizen: TcxTabSheet
        Caption = 'nach Notizen'
        ImageIndex = 18
        TabVisible = False
        object dxLayoutControlNotizen: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1261
          Height = 148
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
          object cxImageComboBoxKategorie: TcxImageComboBox
            Left = 83
            Top = 62
            AutoSize = False
            Properties.Images = Papierkorb.cxImageListKategorisieren
            Properties.Items = <
              item
                Description = 'Wichtige Information'
                ImageIndex = 2
                Value = 0
              end
              item
                Description = 'Weitere Information'
                ImageIndex = 3
                Value = 1
              end
              item
                Description = 'Notizen ohne besondere Priorit'#228't'
                ImageIndex = 4
                Value = 2
              end
              item
                Description = 'Erf'#252'llt'
                ImageIndex = 5
                Value = 3
              end
              item
                Description = 'Notizen zur wieteren Diskussion'
                ImageIndex = 6
                Value = 4
              end>
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 1
            Height = 24
            Width = 100
          end
          object cxMemoNotizen: TcxMemo
            Left = 867
            Top = 31
            Lines.Strings = (
              'cxMemoNotizen')
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 4
            Height = 55
            Width = 350
          end
          object cxTextEditNotizenAutor: TcxTextEdit
            Left = 83
            Top = 31
            AutoSize = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 0
            Height = 24
            Width = 305
          end
          object cxDateEditNotizErstellungsdatum: TcxDateEdit
            Left = 493
            Top = 62
            AutoSize = False
            Enabled = False
            Properties.View = cavTouchUI
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 3
            Height = 24
            Width = 310
          end
          object cxDateEditNotizLetzteAenderung: TcxDateEdit
            Left = 493
            Top = 31
            AutoSize = False
            Enabled = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 2
            Height = 24
            Width = 310
          end
          object dxLayoutControlNotizenGroup_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem12: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Kategorie'
            Control = cxImageComboBoxKategorie
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 100
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem11: TdxLayoutItem
            Parent = dxLayoutGroup2
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Inhalt       '
            Control = cxMemoNotizen
            ControlOptions.OriginalHeight = 55
            ControlOptions.OriginalWidth = 350
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem13: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Autor'
            Control = cxTextEditNotizenAutor
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 305
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem14: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            CaptionOptions.Text = 'Erstellungsdatum'
            Control = cxDateEditNotizErstellungsdatum
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 310
            ControlOptions.ShowBorder = False
            Enabled = False
            Index = 1
          end
          object dxLayoutItem15: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            CaptionOptions.Text = 'Letzte '#196'nderung'
            Control = cxDateEditNotizLetzteAenderung
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Enabled = False
            Index = 0
          end
          object dxLayoutGroup2: TdxLayoutGroup
            Parent = dxLayoutControlNotizenGroup_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Group'
            CaptionOptions.Visible = False
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup2
            AlignHorz = ahLeft
            AlignVert = avTop
            Index = 0
          end
          object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup2
            AlignHorz = ahLeft
            AlignVert = avClient
            Index = 1
          end
        end
      end
    end
    object cxLabelFarbe: TcxLabel
      Left = 0
      Top = 178
      Align = alTop
      AutoSize = False
      Caption = '                            '
      ParentColor = False
      Style.Color = clRed
      Style.Edges = []
      Style.HotTrack = False
      Style.ReadOnly = True
      Style.TransparentBorder = False
      Height = 5
      Width = 1263
    end
  end
  object dxRibbonStartliste: TdxRibbon
    Left = 0
    Top = 0
    Width = 1265
    Height = 124
    BarManager = dxBarManagerStartliste
    Style = rs2019
    ColorSchemeAccent = rcsaBlue
    ColorSchemeName = 'Office2019Colorful'
    Fonts.ApplicationButton.Charset = DEFAULT_CHARSET
    Fonts.ApplicationButton.Color = clWindowText
    Fonts.ApplicationButton.Height = -12
    Fonts.ApplicationButton.Name = 'Segoe UI'
    Fonts.ApplicationButton.Style = []
    Fonts.AssignedFonts = [afGroup, afGroupHeader, afApplicationButton]
    Fonts.DocumentNameColor = clWindowText
    Fonts.Group.Charset = DEFAULT_CHARSET
    Fonts.Group.Color = clWindowText
    Fonts.Group.Height = -12
    Fonts.Group.Name = 'Segoe UI'
    Fonts.Group.Style = []
    Fonts.GroupHeader.Charset = DEFAULT_CHARSET
    Fonts.GroupHeader.Color = 4474440
    Fonts.GroupHeader.Height = -12
    Fonts.GroupHeader.Name = 'Segoe UI'
    Fonts.GroupHeader.Style = []
    Contexts = <>
    TabOrder = 2
    TabStop = False
    object dxRibbonStartlisteTab1: TdxRibbonTab
      Active = True
      Caption = 'Main'
      Groups = <
        item
        end
        item
        end
        item
          Caption = 'Suche'
          ToolbarName = 'dxBarManagerStartlisteBar2'
        end
        item
        end
        item
          ToolbarName = 'dxBarManagerStartlisteBar3'
        end
        item
          ToolbarName = 'dxBarManagerStartlisteBar5'
        end
        item
          ToolbarName = 'dxBarManagerStartlisteBarOption'
        end
        item
          Caption = 'Test'
        end
        item
          Caption = 'Print'
          ToolbarName = 'dxBarManagerStartlisteBar7'
        end
        item
          ToolbarName = 'dxBarManagerStartlisteBar11'
        end>
      Index = 0
    end
    object dxRibbonStartlisteTabKategorie: TdxRibbonTab
      Caption = 'Kategorien'
      Groups = <
        item
        end
        item
          ToolbarName = 'dxBarManagerStartlisteBar6'
        end
        item
          ToolbarName = 'dxBarManagerStartlisteBar8'
        end
        item
          ToolbarName = 'dxBarManagerStartlisteBar9'
        end
        item
          ToolbarName = 'dxBarManagerStartlisteBar10'
        end
        item
        end>
      Visible = False
      Index = 1
    end
  end
  object dxBarManagerStartliste: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PopupMenu')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = Papierkorb.cxImageListStartlist
    ImageOptions.LargeImages = Papierkorb.cxImageList32
    ImageOptions.LargeIcons = True
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.ScrollbarMode = sbmHybrid
    LookAndFeel.ScrollMode = scmSmooth
    LookAndFeel.SkinName = 'WXI'
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsStandard
    UseSystemFont = True
    Left = 704
    Top = 272
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      0
      21)
    object dxBarManagerStartlisteBarMenu: TdxBar
      BorderStyle = bbsNone
      Caption = 'CustomMenu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1121
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      Images = Papierkorb.cxImageListStartlist
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButSuchen'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButUebernehmen'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButZuruck'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButArchivieren'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButAnsichts'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButDrucken'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButListendrucken'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButSchliessen'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = True
    end
    object dxBarManagerStartlisteBar1: TdxBar
      BorderStyle = bbsNone
      Caption = 'CustomStatus'
      CaptionButtons = <>
      Color = clWindow
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 1235
      FloatTop = 2
      FloatClientWidth = 208
      FloatClientHeight = 84
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 193
          Visible = True
          ItemName = 'cxBarEditItemGefunden'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 142
          Visible = True
          ItemName = 'cxBarEditItemStatus'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 208
          Visible = True
          ItemName = 'cxBarEditItemInfo'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 191
          Visible = True
          ItemName = 'cxBarEditItemwahlen'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManagerStartlisteBar2: TdxBar
      Caption = 'Suche'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1259
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Images = Papierkorb.cxImageListStartlist
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonSuchen'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonZurueck'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = False
    end
    object dxBarManagerStartlisteBar3: TdxBar
      Caption = 'Kontaktverwaltung'
      CaptionButtons = <>
      DockedLeft = 148
      DockedTop = 0
      FloatLeft = 1259
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Images = Papierkorb.cxImageListStartlist
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonBearbeiten'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonNeu'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonArchivieren'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonLoeschen'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = False
    end
    object dxBarManagerStartlisteBar4: TdxBar
      Caption = 'Kontaktansicht'
      CaptionButtons = <>
      DockedDockingStyle = dsNone
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 1259
      FloatTop = 2
      FloatClientWidth = 51
      FloatClientHeight = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItemSkinsS'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = False
      WholeRow = False
    end
    object dxBarManagerStartlisteBar5: TdxBar
      Caption = 'Terminplanung'
      CaptionButtons = <>
      DockedLeft = 405
      DockedTop = 0
      FloatLeft = 1259
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonKalender'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = False
    end
    object dxBarManagerStartlisteBarOption: TdxBar
      Caption = 'Kontaktoption'
      CaptionButtons = <>
      DockedLeft = 493
      DockedTop = 0
      FloatLeft = 1259
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      Images = Papierkorb.cxImageListStartlist
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItemOption'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButQualitydaten'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButExports'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItemSkins'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButAusblenden'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManagerStartlisteBar7: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 838
      DockedTop = 0
      FloatLeft = 1259
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButListendruck'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButDruckens'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManagerStartlisteBar6: TdxBar
      Caption = 'Alle/Kundenkategorie'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1281
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonAlleClick'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItemKunde'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManagerStartlisteBar8: TdxBar
      Caption = 'Partnerkategorie'
      CaptionButtons = <>
      DockedLeft = 128
      DockedTop = 0
      FloatLeft = 1281
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonLieferant'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonPartner'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManagerStartlisteBar9: TdxBar
      Caption = 'Mitarbeiterkategorie'
      CaptionButtons = <>
      DockedLeft = 251
      DockedTop = 0
      FloatLeft = 1281
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItemMitarbeiter'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManagerStartlisteBar10: TdxBar
      Caption = 'Sontiges'
      CaptionButtons = <>
      DockedLeft = 365
      DockedTop = 0
      FloatLeft = 1281
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonSontiges'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManagerStartlisteBar11: TdxBar
      Caption = 'Info'
      CaptionButtons = <>
      DockedLeft = 982
      DockedTop = 0
      FloatLeft = 1293
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      Images = Papierkorb.cxImageList32
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButInfo'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonDemo'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButSuchen: TdxBarLargeButton
      Action = AcSuchen
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 9
    end
    object dxBarLargeButNeu: TdxBarLargeButton
      Caption = 'Neu'
      Category = 0
      Hint = 'Neu'
      Visible = ivAlways
      ShortCut = 16462
      AutoGrayScale = False
      LargeImageIndex = 8
      SyncImageIndex = False
      ImageIndex = 27
    end
    object dxBarLargeButBearbeiten: TdxBarLargeButton
      Caption = 'Bearbeiten'
      Category = 0
      Hint = 'Bearbeiten'
      Visible = ivAlways
      ShortCut = 16450
      AutoGrayScale = False
      LargeImageIndex = 7
    end
    object dxBarLargeButSchliessen: TdxBarLargeButton
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      ShortCut = 27
      OnClick = dxBarLargeButSchliessenClick
      AutoGrayScale = False
      LargeImageIndex = 16
    end
    object dxBarLargeButLoeschen: TdxBarLargeButton
      Caption = 'L'#246'schen'
      Category = 0
      Hint = 'L'#246'schen'
      Visible = ivAlways
      ShortCut = 16452
      AutoGrayScale = False
      LargeImageIndex = 5
    end
    object dxBarLargeButZuruck: TdxBarLargeButton
      Action = AcZurueck
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 19
    end
    object dxBarLargeButSave: TdxBarLargeButton
      Caption = 'Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivNever
      AutoGrayScale = False
      LargeImageIndex = 0
    end
    object dxBarLargeButArchivieren: TdxBarLargeButton
      Action = AcArchivieren
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 17
    end
    object dxBarLargeButDrucken: TdxBarLargeButton
      Action = AcDrucken
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButExportieren: TdxBarLargeButton
      Caption = 'Exportieren'
      Category = 0
      Hint = 'Exportieren'
      Visible = ivAlways
      ShortCut = 16465
      AutoGrayScale = False
      LargeImageIndex = 15
    end
    object cxBarEditItemGefunden: TcxBarEditItem
      Caption = 'Gefunden'
      Category = 0
      Hint = 'Gefunden'
      Visible = ivAlways
      ImageIndex = 6
      PropertiesClassName = 'TcxMemoProperties'
      BarStyleDropDownButton = False
      CanSelect = False
      Properties.ReadOnly = True
    end
    object cxBarEditItemStatus: TcxBarEditItem
      Caption = 'Status:'
      Category = 0
      Hint = 'Status:'
      Visible = ivAlways
      PropertiesClassName = 'TcxMemoProperties'
      BarStyleDropDownButton = False
      CanSelect = False
      Properties.ReadOnly = True
    end
    object cxBarEditItemInfo: TcxBarEditItem
      Caption = 'info'
      Category = 0
      Hint = 'info'
      Visible = ivAlways
      PropertiesClassName = 'TcxMemoProperties'
      BarStyleDropDownButton = False
      CanSelect = False
      Properties.ReadOnly = True
    end
    object cxBarEditItemwahlen: TcxBarEditItem
      Caption = 'Wahlen'
      Category = 0
      Hint = 'Wahlen'
      Visible = ivAlways
      PropertiesClassName = 'TcxMemoProperties'
      BarStyleDropDownButton = False
      CanSelect = False
      Properties.ReadOnly = True
    end
    object dxBarLargeButAnsichts: TdxBarLargeButton
      Action = AcAusblenden
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = dxRibbonDropDownGallery1
      AutoGrayScale = False
      LargeImageIndex = 21
    end
    object dxBarButtonAlle: TdxBarButton
      Caption = 'Alle Komponenten anzeigen'
      Category = 0
      Hint = 'Alle Komponenten anzeigen'
      Visible = ivAlways
      ImageIndex = 35
    end
    object dxBarButtonNurTabelle: TdxBarButton
      Caption = 'Nur Tabelle anzeigen'
      Category = 0
      Hint = 'Nur Tabelle anzeigen'
      Visible = ivAlways
      ImageIndex = 33
    end
    object dxBarLargeButGrafik: TdxBarLargeButton
      Caption = 'Grafisch anzeigen'
      Category = 0
      Hint = 'Grafisch anzeigen'
      Visible = ivAlways
      LargeImageIndex = 36
      SyncImageIndex = False
      ImageIndex = 39
    end
    object dxBarLargeButQualitydatens: TdxBarLargeButton
      Caption = 'Datenqualit'#228't'
      Category = 0
      Hint = 'Datenqualit'#228't'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 49
    end
    object dxBarLargeButtonSuchen: TdxBarLargeButton
      Action = AcSuchen
      Category = 0
      Style = cxStyle2
      LargeImageIndex = 9
    end
    object dxBarLargeButtonZurueck: TdxBarLargeButton
      Action = AcZurueck
      Category = 0
      Style = cxStyle2
      LargeImageIndex = 19
    end
    object dxBarLargeButtonBearbeiten: TdxBarLargeButton
      Action = AcBearbeiten
      Category = 0
      Style = cxStyle2
      LargeImageIndex = 4
    end
    object dxBarLargeButtonNeu: TdxBarLargeButton
      Action = AcNeu
      Category = 0
      Style = cxStyle2
      LargeImageIndex = 2
    end
    object dxBarLargeButtonArchivieren: TdxBarLargeButton
      Action = AcArchivieren
      Category = 0
      Style = cxStyle2
      LargeImageIndex = 17
      SyncImageIndex = False
      ImageIndex = 18
    end
    object dxBarLargeButtonLoeschen: TdxBarLargeButton
      Action = AcLoeschen
      Category = 0
      Style = cxStyle2
    end
    object dxBarLargeButtonAnsicht: TdxBarLargeButton
      Caption = 'Ansicht'
      Category = 0
      Hint = 'Ansicht'
      Style = cxStyle2
      Visible = ivAlways
      LargeImageIndex = 34
    end
    object dxBarLargeButtonKalender: TdxBarLargeButton
      Action = AcKalender
      Category = 0
      Style = cxStyle2
      LargeImageIndex = 8
      SyncImageIndex = False
      ImageIndex = 47
    end
    object dxBarLargeButAnsicht: TdxBarSubItem
      Caption = 'Ausblenden'
      Category = 0
      Style = cxStyle2
      Visible = ivAlways
      LargeImageIndex = 6
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonAlleKomponenten'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonNurTabelle'
        end>
    end
    object dxBarLargeButtonAlleKomponenten: TdxBarLargeButton
      Caption = 'Alle Komponenten anzeigen'
      Category = 0
      Hint = 'Alle Komponenten anzeigen'
      Style = cxStyle2
      Visible = ivAlways
      LargeImageIndex = 35
    end
    object dxBarLargeButtonNurTabelle: TdxBarLargeButton
      Caption = 'Nur Tabelle anzeigen'
      Category = 0
      Hint = 'Nur Tabelle anzeigen'
      Style = cxStyle2
      Visible = ivAlways
      OnClick = dxBarButtonNurTabelleClick
      LargeImageIndex = 33
    end
    object dxBarLargeButtonStyle: TdxBarLargeButton
      Caption = 'Style'
      Category = 0
      Hint = 'Style'
      Visible = ivAlways
    end
    object dxBarSubItemModus: TdxBarSubItem
      Caption = 'Style'
      Category = 0
      Style = cxStyle2
      Visible = ivAlways
      LargeImageIndex = 34
      ShowCaption = False
      ItemLinks = <>
    end
    object dxBarLargeButtonStandartmodus: TdxBarLargeButton
      Caption = 'Standartmodus'
      Category = 0
      Hint = 'Standartmodus'
      Visible = ivAlways
    end
    object cxBarEditItemStandardmodus: TcxBarEditItem
      Caption = 'Standardmodus'
      Category = 0
      Hint = 'Standardmodus'
      Style = cxStyle2
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002C744558745469746C65004272696E673B546F2046726F6E743B4672
        6F6E743B546578743B4F726465723B4265666F72658F5329E90000029C494441
        54785E8D925F48145114C6BF999DDCC8FED18BD54398251192B69085ACA0F687
        8288A8072B350425449328228C322C2A3423569104D3A0D224EB21828C20A4D5
        353504CDDD52D148721F6A7361D73FEBAE3B33F7347377CAC55EFA98EF72B807
        7EE7CCC7156C0FED7641103308008C8308DCBCE685004595BB2E171FD847440A
        A275AFB193FE4795F7DF1100B30E8CB6A42811604856F95421B206AFA315D6FA
        00442C91242BBC01C608F5CF868CF51721A5A7524002600C12FE0128F222A028
        3B1920230AE354F9AA02C2320788D79E3A412A83F681118314966500E017752D
        03910D8CF0CC920967F32C3001C8DAB3157700D3ADBC14E152533F311DA032FD
        1714034028C9B1C01044319287C3E5C1C8E4343CD3215CA8EFE95514B5B5EB65
        43F5C7F626B9B8A69B70BEE205E99AF287E86A8D83AED81C74A3BE87DAEDE374
        B379806CAF46A873CC4BC353F3641FF552559B93CEDC7DEF48B21E37031044BE
        8191C1B9FC5DDCA5B9162C8826AC581983F4D44D088912C6BD2104B5BB4CEB66
        C46F5C9BBE232BBF0C8028C9B2F2372C309D1909BA6FF81732AC09F8E60D8211
        F1486719E09D9391B86D3D065CEE420095D27C60B6BBE0E2E3741E1D8BA47F68
        6F12A67C01F8C240585575806170070520145AD800C02400880510B3E491C49C
        2C7F3D68B16E8F33C72EE76003C2EB9999007ADFF6BB3B1E9C4E948828004037
        D789F237787EFBB034EBF73F1A754D966D4949E053891001681E734E60CEEF7B
        02808958A26030CC23F9D4D154E5FEEAEE1BEA1981E7A71F8105159E1F3E0C76
        3AF17D74A2EF4B87AD1A80C289D13E58D286FD45AD0020AE894B5CB53BBBB622
        2DA7C19596DB48A9D9759F938F545E8F5D17BF5AEFEF3C56074107442BB3B005
        2A53F973FDD05C20005806403232627CAAE6E4A3B58C18E1376F18BA2BC7C593
        920000000049454E44AE426082}
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000002C744558745469746C65004272696E673B546F2046726F
        6E743B46726F6E743B546578743B4F726465723B4265666F72658F5329E90000
        006E49444154785EC5D2B10DC0300804409820C3B00E83B8F41A9981BD5823A1
        708562C42B91525CE3E2F5F69B44E40250F66900ED2001E703FAB5C148417003
        0E1A2CF862EB8CAB06231C61168BCCC055036DCCAA54EC6D8D00AB02BC11E0C5
        742F02D02B24F823EE7077C604FB4837CCC221A1B4C4792A0000000049454E44
        AE426082}
      Properties.ImmediatePost = True
    end
    object cxBarEditItemDunkelmodus: TcxBarEditItem
      Caption = 'Dunkelmodus'
      Category = 0
      Hint = 'Dunkelmodus'
      Style = cxStyle2
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000002C744558745469746C65004272696E673B546F2046726F
        6E743B46726F6E743B546578743B4F726465723B4265666F72658F5329E90000
        006E49444154785EC5D2B10DC0300804409820C3B00E83B8F41A9981BD5823A1
        708562C42B91525CE3E2F5F69B44E40250F66900ED2001E703FAB5C148417003
        0E1A2CF862EB8CAB06231C61168BCCC055036DCCAA54EC6D8D00AB02BC11E0C5
        742F02D02B24F823EE7077C604FB4837CCC221A1B4C4792A0000000049454E44
        AE426082}
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
    end
    object cxBarEditItemStandartdmodus: TcxBarEditItem
      Caption = 'Standartdmodus'
      Category = 0
      Hint = 'Standartdmodus'
      Style = cxStyle2
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002C744558745469746C65004272696E673B546F2046726F6E743B4672
        6F6E743B546578743B4F726465723B4265666F72658F5329E90000029C494441
        54785E8D925F48145114C6BF999DDCC8FED18BD54398251192B69085ACA0F687
        8288A8072B350425449328228C322C2A3423569104D3A0D224EB21828C20A4D5
        353504CDDD52D148721F6A7361D73FEBAE3B33F7347377CAC55EFA98EF72B807
        7EE7CCC7156C0FED7641103308008C8308DCBCE685004595BB2E171FD847440A
        A275AFB193FE4795F7DF1100B30E8CB6A42811604856F95421B206AFA315D6FA
        00442C91242BBC01C608F5CF868CF51721A5A7524002600C12FE0128F222A028
        3B1920230AE354F9AA02C2320788D79E3A412A83F681118314966500E017752D
        03910D8CF0CC920967F32C3001C8DAB3157700D3ADBC14E152533F311DA032FD
        1714034028C9B1C01044319287C3E5C1C8E4343CD3215CA8EFE95514B5B5EB65
        43F5C7F626B9B8A69B70BEE205E99AF287E86A8D83AED81C74A3BE87DAEDE374
        B379806CAF46A873CC4BC353F3641FF552559B93CEDC7DEF48B21E37031044BE
        8191C1B9FC5DDCA5B9162C8826AC581983F4D44D088912C6BD2104B5BB4CEB66
        C46F5C9BBE232BBF0C8028C9B2F2372C309D1909BA6FF81732AC09F8E60D8211
        F1486719E09D9391B86D3D065CEE420095D27C60B6BBE0E2E3741E1D8BA47F68
        6F12A67C01F8C240585575806170070520145AD800C02400880510B3E491C49C
        2C7F3D68B16E8F33C72EE76003C2EB9999007ADFF6BB3B1E9C4E948828004037
        D789F237787EFBB034EBF73F1A754D966D4949E053891001681E734E60CEEF7B
        02808958A26030CC23F9D4D154E5FEEAEE1BEA1981E7A71F8105159E1F3E0C76
        3AF17D74A2EF4B87AD1A80C289D13E58D286FD45AD0020AE894B5CB53BBBB622
        2DA7C19596DB48A9D9759F938F545E8F5D17BF5AEFEF3C56074107442BB3B005
        2A53F973FDD05C20005806403232627CAAE6E4A3B58C18E1376F18BA2BC7C593
        920000000049454E44AE426082}
      ShowCaption = True
      PropertiesClassName = 'TcxRadioGroupProperties'
      Properties.Items = <>
    end
    object cxBarEditItemDunkelmoduss: TcxBarEditItem
      Caption = 'Dunkelmodus'
      Category = 0
      Hint = 'Dunkelmodus'
      Style = cxStyle2
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000002C744558745469746C65004272696E673B546F2046726F
        6E743B46726F6E743B546578743B4F726465723B4265666F72658F5329E90000
        006E49444154785EC5D2B10DC0300804409820C3B00E83B8F41A9981BD5823A1
        708562C42B91525CE3E2F5F69B44E40250F66900ED2001E703FAB5C148417003
        0E1A2CF862EB8CAB06231C61168BCCC055036DCCAA54EC6D8D00AB02BC11E0C5
        742F02D02B24F823EE7077C604FB4837CCC221A1B4C4792A0000000049454E44
        AE426082}
      PropertiesClassName = 'TcxRadioGroupProperties'
      Properties.Items = <>
    end
    object cxBarEditItemModus: TcxBarEditItem
      Caption = 'Modus'
      Category = 0
      Hint = 'Modus'
      Style = cxStyle2
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TdxToggleSwitchProperties'
      Properties.ImmediatePost = True
      InternalEditValue = False
    end
    object cxBarEditItemModu: TcxBarEditItem
      Caption = 'Modus'
      Category = 0
      Hint = 'Modus'
      Style = cxStyle2
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TdxToggleSwitchProperties'
      Properties.ImmediatePost = True
      InternalEditValue = False
    end
    object dxBarLargeButtonSkins: TdxBarLargeButton
      Caption = 'Skins'
      Category = 0
      Hint = 'Skins'
      Style = cxStyle2
      Visible = ivAlways
      LargeImageIndex = 34
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Skins'
      Category = 0
      Style = cxStyle2
      Visible = ivAlways
      LargeImageIndex = 34
      ItemLinks = <>
    end
    object dxBarSubItemSkinsS: TdxBarSubItem
      Caption = 'Skins'
      Category = 0
      Style = cxStyle2
      Visible = ivAlways
      LargeImageIndex = 7
      OnClick = dxBarSubItemSkinsSClick
      ItemLinks = <>
    end
    object dxBarSubItemOption: TdxBarSubItem
      Caption = 'Option'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonAnrede'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonTitel'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonTelefontypen'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonEmailtypen'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonKategorieanzeigen'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButRechnungen'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButtonVIPStatus'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButVIPStatus'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButVIPPrivilegien'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButVIPTransaktionen'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButBestellungshistorie'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButProdukteDienstleistungen'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeBuZahlungsbedingungen'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButBewertungssystem'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButLieferbedingungen'
        end>
    end
    object dxBarLargeButtonAnrede: TdxBarLargeButton
      Caption = 'Anrede'
      Category = 0
      Hint = 'Anrede'
      Visible = ivAlways
      OnClick = dxBarLargeButtonAnredeClick
      LargeImageIndex = 53
    end
    object dxBarLargeButtonTitel: TdxBarLargeButton
      Caption = 'Titel'
      Category = 0
      Hint = 'Titel'
      Visible = ivAlways
      OnClick = dxBarLargeButtonTitelClick
      LargeImageIndex = 55
    end
    object dxBarLargeButtonTelefontypen: TdxBarLargeButton
      Caption = 'Telefontypen'
      Category = 0
      Hint = 'Telefontypen'
      Visible = ivAlways
      OnClick = dxBarLargeButtonTelefontypenClick
      LargeImageIndex = 52
    end
    object dxBarLargeButtonEmailtypen: TdxBarLargeButton
      Caption = 'Emailtypen'
      Category = 0
      Hint = 'Emailtypen'
      Visible = ivAlways
      OnClick = dxBarLargeButtonEmailtypenClick
      LargeImageIndex = 56
    end
    object dxBarLargeButQualitydaten: TdxBarLargeButton
      Action = AcDatenqualitaet
      Category = 0
      AutoGrayScale = False
      LargeImageIndex = 11
    end
    object dxBarLargeButDruckens: TdxBarLargeButton
      Action = AcDrucken
      Category = 0
    end
    object dxBarLargeButExports: TdxBarLargeButton
      Action = AcExportieren
      Category = 0
      ButtonStyle = bsDropDown
      DropDownMenu = dxRibbonDropDownGalleryExport
      LargeImageIndex = 22
    end
    object dxBarLargeButAusblenden: TdxBarLargeButton
      Caption = 'Ausblenden'
      Category = 0
      Hint = 'Ausblenden'
      Visible = ivAlways
      OnClick = dxBarButtonNurTabelleClick
      LargeImageIndex = 21
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButListendruck: TdxBarLargeButton
      Caption = 'Listendruck'
      Category = 0
      Hint = 'Listendruck'
      Visible = ivAlways
      OnClick = dxBarLargeButListendruckClick
      LargeImageIndex = 13
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButExportDocs: TdxBarLargeButton
      Caption = 'Docx'
      Category = 0
      Enabled = False
      Hint = 'Docx'
      Visible = ivAlways
      OnClick = dxBarLargeButExportDocsClick
      SyncImageIndex = False
      ImageIndex = 16
    end
    object dxBarLargeButExcel: TdxBarLargeButton
      Caption = 'Excel'
      Category = 0
      Hint = 'Excel'
      Visible = ivAlways
      OnClick = dxBarLargeButExcelClick
      SyncImageIndex = False
      ImageIndex = 15
    end
    object dxBarLargeButSVG: TdxBarLargeButton
      Caption = 'SVG'
      Category = 0
      Hint = 'SVG'
      Visible = ivAlways
      SyncImageIndex = False
      ImageIndex = 17
    end
    object dxBarLargeButRasterImage: TdxBarLargeButton
      Caption = 'RasterImage'
      Category = 0
      Enabled = False
      Hint = 'RasterImage'
      Visible = ivAlways
      OnClick = dxBarLargeButRasterImageClick
      SyncImageIndex = False
      ImageIndex = 73
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 15
    end
    object dxBarLargeButtonLieferant: TdxBarLargeButton
      Caption = 'Lieferant'
      Category = 0
      Hint = 'Lieferant'
      Visible = ivAlways
      OnClick = dxBarLargeButtonLieferantClick
      LargeImageIndex = 32
    end
    object dxBarLargeButtonPartner: TdxBarLargeButton
      Caption = 'Partner'
      Category = 0
      Hint = 'Partner'
      Visible = ivAlways
      OnClick = dxBarLargeButtonPartnerClick
      LargeImageIndex = 26
    end
    object dxBarLargeButtonInteressent: TdxBarLargeButton
      Caption = 'Interessent'
      Category = 0
      Hint = 'Interessent'
      Visible = ivAlways
      LargeImageIndex = 14
    end
    object dxBarLargeButtonSontiges: TdxBarLargeButton
      Caption = 'Sontiges'
      Category = 0
      Hint = 'Sontiges'
      Visible = ivAlways
      OnClick = dxBarLargeButtonSontigesClick
      LargeImageIndex = 28
    end
    object dxBarLargeButtonInterne: TdxBarLargeButton
      Caption = 'Mitarbeiter'
      Category = 0
      Hint = 'Mitarbeiter'
      Visible = ivAlways
      LargeImageIndex = 23
    end
    object dxBarLargeButtonExtern: TdxBarLargeButton
      Caption = 'Extern'
      Category = 0
      Hint = 'Extern'
      Visible = ivAlways
      LargeImageIndex = 24
    end
    object dxBarLargeButtonKunde: TdxBarLargeButton
      Caption = 'Kunde'
      Category = 0
      Hint = 'Kunde'
      Visible = ivAlways
      OnClick = dxBarLargeButtonKundeClick
      LargeImageIndex = 27
    end
    object dxBarLargeButtonVip: TdxBarLargeButton
      Caption = 'VIP'
      Category = 0
      Hint = 'VIP'
      Visible = ivAlways
      LargeImageIndex = 25
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButtonAlleClick: TdxBarLargeButton
      Caption = 'Alle Kontakte'
      Category = 0
      Hint = 'Alle Kontakte'
      Visible = ivAlways
      OnClick = dxBarLargeButtonAlleClickClick
      LargeImageIndex = 31
    end
    object dxBarSubItemMitarbeiter: TdxBarSubItem
      Caption = 'Mitarbeiter'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 30
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonExterne'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonIntern'
        end>
    end
    object dxBarLargeButtonIntern: TdxBarLargeButton
      Caption = 'Interne-Mitarbeiter'
      Category = 0
      Hint = 'Interne-Mitarbeiter'
      Visible = ivAlways
      OnClick = dxBarLargeButtonInternClick
      LargeImageIndex = 24
      SyncImageIndex = False
      ImageIndex = 81
    end
    object dxBarLargeButtonExterne: TdxBarLargeButton
      Caption = 'Externe-Mitarbeiter'
      Category = 0
      Hint = 'Externe-Mitarbeiter'
      Visible = ivAlways
      OnClick = dxBarLargeButtonExterneClick
      SyncImageIndex = False
      ImageIndex = 77
    end
    object dxBarSubItemKunde: TdxBarSubItem
      Caption = 'Kunde'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 30
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonInteressente'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonStandardKunden'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonVIPs'
        end>
    end
    object dxBarLargeButtonStandardKunden: TdxBarLargeButton
      Caption = 'Standard-Kunden'
      Category = 0
      Hint = 'Standard-Kunden'
      Visible = ivAlways
      OnClick = dxBarLargeButtonStandardKundenClick
      SyncImageIndex = False
      ImageIndex = 80
    end
    object dxBarLargeButtonInteressente: TdxBarLargeButton
      Caption = 'Interessenten-Kunden'
      Category = 0
      Hint = 'Interessenten-Kunden'
      Visible = ivAlways
      OnClick = dxBarLargeButtonInteressenteClick
      LargeImageIndex = 0
      SyncImageIndex = False
      ImageIndex = 82
    end
    object dxBarLargeButtonVIPs: TdxBarLargeButton
      Caption = 'VIP-Kunden'
      Category = 0
      Hint = 'VIP-Kunden'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000003F744558745469746C6500436F6E646974696F6E616C466F726D6174
        74696E7349636F6E5365745374617273333B436F6E646974696F6E616C466F72
        6D617474696E673BBD1216EC0000032C49444154785E45926D485B571CC69F73
        131793D4248B26EB5A496A8BA26E6E3ACA46192BD889C3B1C98476AC30F61206
        5DCBFAA576C240987BB5DD8B1F4A999B038BF8C142EBC656B73A669DB8B56C85
        958C2AAD7496D48A1A6B6362D47B73EF3DE7BF136F322F3C3CFC9F737FCFE1DE
        73D8A5F6DD2002400C04211DB999D078F21A1B7EF709CA06042BA3FFD7AD9951
        6606F9C74AD986334758193A56DBF94257F43DCAC4C42605E477196A6B817D33
        DC5C60853BD8E0D1C75EF604C36DE70E9B51E6D87196D45B395AE41082E0801D
        C437E19C1F7DB6D4E9F5074E3EF97A2BFEE8FEE044E4E9FB3F9230D798458248
        582E28574016CC5C150C8072EED0A36F57EC6B09398C1B28AF7F29D4383F7F48
        71579D02C0A520D251923404B73845CADEDA18F2F447AAF70DBCF548EBD8A7CD
        29BEF0039993ED64CE7D47A31FBD98EA7FA3F278CFC1F286C89EAD3E00055236
        29C6060FD77C52E42F39E82BDD59E67D3804EFF630BC8107615BFD1330328062
        87B9E529A41613589E8D2139378344EC762CB9B434F06AFF54BB32757BF94CE2
        5EDA5D59DF805DB5611417DD83B27C05B49E86D033202D2DE7DF651EC7AEC7B7
        A1AA7E2F12F7D3EE7FA697FBACC307948E866D7555655B479E3F72C057A0CF02
        DCB07E14114848877428306C0FE1A79EA164F456FCB9CFAF2CFEFD55532957CC
        A571D1313217BD39BDD03CFCCDF9355D2996BC019E5121A44857C1750D06F361
        B8F7E2DAC4BF8BFB257C4DBFFB3DE73C5BCB3598F15FF8FBA373575753A90175
        651D649A12CC6C80C2D0C0B88096D6B0924C9FEDBC1CBFACDF19304972C57E27
        14E23A84A9C3FA1E1674BA0B21D415803128853E10D9C0D5340ADD0FC0060401
        10991A88AB1082A06407C80190EF3B9D6185A7C0DC01C4664C8C5F9840ECAE09
        B8FCC8E6AE22E74E20C764952F209ED928F0F8BCA1C9BFA6F0ED17BF6ADD5D23
        BD17C7A79BBEEE1AEDEDE91AD726AF4EC3E5716F07F28C14017612D92681E66A
        BF33313BCF2EFC1CFFF266CA38FDDBBCB690BB7963CF248D8FE571BFB3B72618
        692AF73A21B43502411001EA8DD352A710D91D74BD56170800704829EAC46750
        AF9F90EACCDF56C72B35C5C137EB4A5CEBD10FB11EED405F4B19FE0365D3BD53
        AA437B1A0000000049454E44AE426082}
      OnClick = dxBarLargeButtonVIPsClick
      SyncImageIndex = False
      ImageIndex = 71
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'Kategorie'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 23
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end>
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = 'Alle'
      Category = 0
      Hint = 'Alle'
      Visible = ivAlways
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = 'Kunde'
      Category = 0
      Hint = 'Kunde'
      Visible = ivAlways
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = 'Mitarbeiter'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Caption = 'Lieferant'
      Category = 0
      Hint = 'Lieferant'
      Visible = ivAlways
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = 'Sontiges'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Caption = 'Ohne'
      Category = 0
      Hint = 'Ohne'
      Visible = ivAlways
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Caption = 'Skins'
      Category = 0
      Hint = 'Skins'
      Visible = ivAlways
    end
    object dxBarSubItemSkins: TdxBarSubItem
      Caption = 'Skins'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 6
      OnClick = dxBarSubItemSkinsClick
      ItemLinks = <>
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'Kategorie'
      Category = 0
      Hint = 'Kategorie'
      Visible = ivAlways
      PropertiesClassName = 'TcxImageComboBoxProperties'
      CanSelect = False
      Properties.Images = Papierkorb.cxImageListKontaktKategorie
      Properties.Items = <
        item
          ImageIndex = 1
        end
        item
          ImageIndex = 2
        end
        item
          ImageIndex = 3
        end
        item
          ImageIndex = 4
        end
        item
          ImageIndex = 5
        end
        item
          ImageIndex = 6
        end
        item
          ImageIndex = 7
        end
        item
          ImageIndex = 8
        end
        item
          ImageIndex = 9
        end>
      Properties.ReadOnly = True
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButtonKategorieanzeigen: TdxBarLargeButton
      Caption = 'Kontaktkategorie'
      Category = 0
      Hint = 'Kontaktkategorie'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000018744558745469746C65005465616D3B50656F706C653B
        47726F75703B5C39E816000000D749444154785EADD3310AC250100450958058
        E50C1EC074B61E202096692D3C4108A48C780D0B5B2DD37905035E2258D80B49
        A5DF11061961F31B53BC66771D32910C9C737FE92F60B93B0F610F0F3AC0A86B
        6E05CCC129CECCB91590C8C1153610D01A2EB24FAC809CCB97A7CE9337B91510
        420395A74EC59B5003342483A3D451097799F92FB0EB0CA65247E5DC45107C03
        3018C3166AB8412C751C359CC5BCA9F99BC927E064F44D21935906A971577E02
        5A19DCA1903A0B8A382B78E3A8D59768D559D1CF63777D0B52C7ABF404B08E5F
        DBEBD7F806C3AB7E595618C60D0000000049454E44AE426082}
      OnClick = dxBarLargeButtonKategorieanzeigenClick
    end
    object dxBarLargeButVIPStatus: TdxBarLargeButton
      Caption = 'VIP-Status Historie'
      Category = 0
      Hint = 'VIP-Status Historie'
      Visible = ivAlways
      OnClick = dxBarLargeButVIPStatusClick
      SyncImageIndex = False
      ImageIndex = 95
    end
    object dxBarLargeButVIPPrivilegien: TdxBarLargeButton
      Caption = 'VIP-Privilegien'
      Category = 0
      Hint = 'VIP-Privilegien'
      Visible = ivAlways
      OnClick = dxBarLargeButVIPPrivilegienClick
      SyncImageIndex = False
      ImageIndex = 96
    end
    object dxBarLargeButVIPTransaktionen: TdxBarLargeButton
      Caption = 'VIP-Transaktionen'
      Category = 0
      Hint = 'VIP-Transaktionen'
      Visible = ivAlways
      OnClick = dxBarLargeButVIPTransaktionenClick
      SyncImageIndex = False
      ImageIndex = 97
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = 'kategeorie'
      Category = 0
      Hint = 'kategeorie'
      Visible = ivAlways
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSeparator2: TdxBarSeparator
      Caption = 'Kontaktkategorie'
      Category = 0
      Hint = 'Kontaktkategorie'
      Visible = ivAlways
    end
    object dxBarLargeButProdukteDienstleistungen: TdxBarLargeButton
      Caption = 'Produkte/Dienstleistungen'
      Category = 0
      Hint = 'Produkte/Dienstleistungen'
      Visible = ivAlways
      SyncImageIndex = False
      ImageIndex = 98
    end
    object dxBarLargeBuZahlungsbedingungen: TdxBarLargeButton
      Caption = 'Zahlungsbedingungen'
      Category = 0
      Hint = 'Zahlungsbedingungen'
      Visible = ivAlways
      SyncImageIndex = False
      ImageIndex = 101
    end
    object dxBarLargeButBewertungssystem: TdxBarLargeButton
      Caption = 'Bewertungssystem'
      Category = 0
      Hint = 'Bewertungssystem'
      Visible = ivAlways
      SyncImageIndex = False
      ImageIndex = 102
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarLargeButLieferbedingungen: TdxBarLargeButton
      Caption = 'Lieferbedingungen'
      Category = 0
      Hint = 'Lieferbedingungen'
      Visible = ivAlways
      SyncImageIndex = False
      ImageIndex = 100
    end
    object dxBarLargeButBestellungshistorie: TdxBarLargeButton
      Caption = 'Bestellungshistorie'
      Category = 0
      Hint = 'Bestellungshistorie'
      Visible = ivAlways
      SyncImageIndex = False
      ImageIndex = 103
    end
    object dxBarLargeButtonVIPStatus: TdxBarLargeButton
      Caption = 'VIP-Status'
      Category = 0
      Hint = 'VIP-Status'
      Visible = ivAlways
      OnClick = dxBarLargeButtonVIPStatusClick
      SyncImageIndex = False
      ImageIndex = 104
    end
    object dxBarLargeButtonTableTest: TdxBarLargeButton
      Caption = 'Tabletest'
      Category = 0
      Hint = 'Tabletest'
      Visible = ivAlways
      LargeImageIndex = 30
    end
    object dxBarLargeButRechnungen: TdxBarLargeButton
      Caption = 'Rechnungen'
      Category = 0
      Hint = 'Rechnungen'
      Visible = ivAlways
      OnClick = dxBarLargeButRechnungenClick
      SyncImageIndex = False
      ImageIndex = 107
    end
    object dxBarLargeButUebernehmen: TdxBarLargeButton
      Caption = #220'bernehmen'
      Category = 0
      Hint = #220'bernehmen'
      Visible = ivAlways
      OnClick = dxBarLargeButUebernehmenClick
      AutoGrayScale = False
      LargeImageIndex = 34
    end
    object dxBarLargeButListendrucken: TdxBarLargeButton
      Caption = 'Listendruck'
      Category = 0
      Hint = 'Listendruck'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 13
    end
    object dxBarLargeButInfo: TdxBarLargeButton
      Caption = 'Info'
      Category = 0
      Hint = 'Info'
      Visible = ivAlways
      OnClick = dxBarLargeButInfoClick
      LargeImageIndex = 15
    end
    object dxBarLargeButtonDemo: TdxBarLargeButton
      Caption = 'Demo'
      Category = 0
      Hint = 'Demo'
      Visible = ivAlways
      OnClick = dxBarLargeButtonDemoClick
      LargeImageIndex = 30
    end
    object dxBarButton3: TdxBarButton
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarButton
      Caption = 'New Item'
      Category = 1
      Hint = 'New Item'
      Visible = ivAlways
    end
  end
  object PopupMenuStartliste: TPopupMenu
    Tag = 9
    Images = Papierkorb.cxImageListStartlist
    OnPopup = PopupMenuStartlistePopup
    Left = 568
    Top = 226
    object Suchen1: TMenuItem
      Action = AcSuchen
    end
    object Bearbeiten1: TMenuItem
      Action = AcBearbeiten
    end
    object NeueKontakt1: TMenuItem
      Action = AcNeu
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Rechnung1: TMenuItem
      Caption = 'Rechnungen'
      ImageIndex = 107
      OnClick = Rechnung1Click
    end
    object Kategorie1: TMenuItem
      Caption = 'Kategorie'
      ImageIndex = 66
      OnClick = Kategorie1Click
      object ExterneMitarbeiter1: TMenuItem
        Tag = 3
        Caption = 'Externe-Mitarbeiter'
      end
      object InterneMitarbeiter1: TMenuItem
        Tag = 9
        Caption = 'Interne-Mitarbeiter'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Lieferant1: TMenuItem
        Tag = 4
        Caption = 'Lieferanten'
      end
      object Ohne1: TMenuItem
        Tag = 8
        Caption = 'Ohne'
      end
      object Partner1: TMenuItem
        Tag = 5
        Caption = 'Partner'
      end
      object Sontiges1: TMenuItem
        Tag = 7
        Caption = 'Sontiges'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object Interessenten1: TMenuItem
        Tag = 6
        Caption = 'Interessenten-Kunden'
      end
      object StandartKunden1: TMenuItem
        Tag = 2
        Caption = 'Standard-Kunden'
      end
      object VIPKunden1: TMenuItem
        Tag = 1
        Caption = 'VIP-Kunden'
      end
    end
    object Autoarchiv: TMenuItem
      Action = AcAutoarchiv
      AutoCheck = True
      ImageIndex = 94
    end
    object Archivieren: TMenuItem
      Action = AcArchivieren
      ImageIndex = 19
    end
    object Kopieren: TMenuItem
      Action = AcKopieren
      OnClick = KopierenClick
    end
    object Lschen1: TMenuItem
      Action = AcLoeschen
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ExportierenExcel: TMenuItem
      Caption = 'Exportieren'
      Hint = 'Exportieren'
      ImageIndex = 73
      ShortCut = 16465
      object ExportzuDocx: TMenuItem
        Caption = 'Docx'
        Enabled = False
        ImageIndex = 16
        OnClick = ExportzuDocxClick
      end
      object ExportzuExcel: TMenuItem
        Caption = 'Excel'
        ImageIndex = 15
        OnClick = ExportzuExcelClick
      end
      object ExportzuRasterImage: TMenuItem
        Caption = 'RasterImage'
        Enabled = False
        ImageIndex = 73
        OnClick = ExportzuRasterImageClick
      end
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Tabelleansicht1: TMenuItem
      Caption = 'Tabelle ansicht'
      ImageIndex = 64
      object AlleFelderanzeigen1: TMenuItem
        Caption = 'Alle Felder anzeigen'
        ImageIndex = 63
        OnClick = AlleFelderanzeigen1Click
      end
      object AlleFelderohneIconsanzeigen1: TMenuItem
        Caption = 'Alle Felder ohne Icons anzeigen'
        ImageIndex = 61
        OnClick = AlleFelderohneIconsanzeigen1Click
      end
      object FeldermitIconsanzeigen1: TMenuItem
        Caption = 'Alle Felder nur mit Icons anzeigen'
        ImageIndex = 62
        OnClick = FeldermitIconsanzeigen1Click
      end
    end
    object Ausblenden1: TMenuItem
      Action = AcAusblenden
      ImageIndex = 59
    end
    object Listendruck1: TMenuItem
      Action = AcDrucken
    end
    object Schliessens: TMenuItem
      Action = Schliessen
    end
  end
  object MyConnection: TMSConnection
    Database = 'Kontaktdaten'
    Username = 'sa'
    Server = 'PC-SASA'
    Connected = True
    Left = 1073
    Top = 6
    EncryptedPassword = '9EFF9CFF8DFF96FF9DFF9EFFCFFFC7FFDEFF'
  end
  object MyQueryKontakt: TMSQuery
    Connection = MyConnection
    SQL.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 896
    Top = 232
  end
  object MyDataSourceKontakt: TMSDataSource
    AutoEdit = False
    DataSet = MyQueryKontakt
    Left = 1088
    Top = 280
  end
  object cxStyleRepositoryMenu: TcxStyleRepository
    Left = 1008
    Top = 360
    PixelsPerInch = 96
    object cxStyleTabelle: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object cxStyleRow: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clHighlight
      TextColor = clWhite
    end
    object cxStyle1: TcxStyle
    end
  end
  object ActionListStartliste: TActionList
    Left = 840
    Top = 206
    object AcBearbeiten: TAction
      Caption = 'Bearbeiten'
      Hint = 'Bearbeiten'
      ImageIndex = 7
      ShortCut = 16450
      OnExecute = AcBearbeitenExecute
    end
    object AcNeu: TAction
      Caption = 'Neu'
      Hint = 'Neu'
      ImageIndex = 8
      ShortCut = 16462
      OnExecute = AcNeuExecute
    end
    object AcSuchen: TAction
      Caption = 'Suchen'
      Hint = 'Suchen'
      ImageIndex = 29
      ShortCut = 16454
      OnExecute = AcSuchenExecute
    end
    object AcZurueck: TAction
      Caption = 'Zur'#252'cksetzen'
      Hint = 'Zur'#252'cksetzen'
      ImageIndex = 12
      ShortCut = 16474
      OnExecute = AcZurueckExecute
    end
    object AcArchivieren: TAction
      Caption = 'Archivieren'
      Hint = 'Archivieren'
      ImageIndex = 18
      ShortCut = 16430
      OnExecute = AcArchivierenExecute
    end
    object AcLoeschen: TAction
      Caption = 'L'#246'schen'
      Hint = 'L'#246'schen'
      ImageIndex = 5
      ShortCut = 16452
      OnExecute = AcLoeschenExecute
    end
    object AcDrucken: TAction
      Caption = 'Drucken'
      Hint = 'Drucken'
      ImageIndex = 13
      ShortCut = 16464
      OnExecute = AcDruckenExecute
    end
    object AcExportieren: TAction
      Caption = 'Exportieren'
      Hint = 'Exportieren'
      ImageIndex = 15
      ShortCut = 16465
    end
    object Schliessen: TAction
      Caption = 'Schlie'#223'en'
      Hint = 'Schlie'#223'en'
      ImageIndex = 2
      ShortCut = 27
      OnExecute = SchliessenExecute
    end
    object AcKopieren: TAction
      Caption = 'Kopieren'
      Hint = 'Kopieren'
      ImageIndex = 20
      ShortCut = 16451
      OnExecute = AcKopierenExecute
    end
    object AcKalender: TAction
      Caption = 'Kalender'
      Hint = 'Kalender'
      ImageIndex = 47
      ShortCut = 16459
      OnExecute = AcKalenderExecute
    end
    object AcDatenqualitaet: TAction
      Caption = 'Datenqualit'#228't'
      Hint = 'Datenqualit'#228't'
      ImageIndex = 49
      OnExecute = AcDatenqualitaetExecute
    end
    object AcAutoarchiv: TAction
      AutoCheck = True
      Caption = 'Autoarchiv'
      ImageIndex = 65
      ShortCut = 16449
      OnExecute = AcAutoarchivExecute
    end
    object AcKategorie: TAction
      Caption = 'Kategorie'
      Hint = 'Kategorie'
      ImageIndex = 53
    end
    object AcExtern: TAction
      Caption = 'Externe-Mitarbeiter'
      ImageIndex = 87
    end
    object AcIntern: TAction
      Caption = 'Interne-Mitarbeiter'
      ImageIndex = 93
    end
    object AcLieferant: TAction
      Caption = 'Lieferant'
      ImageIndex = 88
    end
    object AcOhne: TAction
      Caption = 'Ohne'
      ImageIndex = 92
    end
    object AcPartner: TAction
      Caption = 'Partner'
      ImageIndex = 89
    end
    object AcSontiges: TAction
      Caption = 'Sontiges'
      ImageIndex = 91
    end
    object Acinteressent: TAction
      Caption = 'Interessenten-Kunden'
      ImageIndex = 90
    end
    object AcStandard: TAction
      Caption = 'Standard-Kunden'
      ImageIndex = 86
    end
    object AcVIP: TAction
      Caption = 'VIP-Kunden'
      ImageIndex = 85
    end
    object AcAusblenden: TAction
      Caption = 'Ausblenden'
      OnExecute = AcAusblendenExecute
    end
  end
  object StartListeTimer: TTimer
    Interval = 800
    OnTimer = StartListeTimerTimer
    Left = 960
    Top = 350
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    ScrollbarMode = sbmHybrid
    SkinName = 'Office2019Colorful'
    Left = 992
    Top = 318
  end
  object dxRibbonDropDownGallery1: TdxRibbonDropDownGallery
    BarManager = dxBarManagerStartliste
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButtonAlle'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonNurTabelle'
      end>
    Ribbon = dxRibbonStartliste
    UseOwnFont = False
    Left = 880
    Top = 126
    PixelsPerInch = 96
  end
  object dxRibbonDropDownGallery2: TdxRibbonDropDownGallery
    BarManager = dxBarManagerStartliste
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarLargeButGrafik'
      end>
    Ribbon = dxRibbonStartliste
    UseOwnFont = False
    Left = 1008
    Top = 142
    PixelsPerInch = 96
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1144
    Top = 360
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWindowText
      TextColor = clWindowText
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
  object dxSkinController1: TdxSkinController
    ScrollbarMode = sbmHybrid
    SkinName = 'Office2019Colorful'
    Left = 1048
    Top = 284
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 1032
    Top = 188
    object dxLayoutCxLookAndFeelStartliste: TdxLayoutCxLookAndFeel
      ItemOptions.ControlBorderStyle = lbsSingle
      PixelsPerInch = 96
    end
  end
  object dxRibbonDropDownGalleryExport: TdxRibbonDropDownGallery
    BarManager = dxBarManagerStartliste
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarLargeButExportDocs'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButExcel'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButRasterImage'
      end>
    Ribbon = dxRibbonStartliste
    UseOwnFont = False
    Left = 1056
    Top = 100
    PixelsPerInch = 96
  end
  object dxComponentPrinter1: TdxComponentPrinter
    Version = 0
    Left = 920
    Top = 380
    PixelsPerInch = 96
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = StringGrid1
    PopupMenus = <
      item
        GridView = StringGrid1DBBandedTableView1
        HitTypes = [gvhtCell]
        Index = 0
        PopupMenu = PopupMenuStartliste
      end>
    Left = 800
    Top = 242
  end
  object cxImageListStartlistKategorie: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 19923768
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C08648800000009704859730000006F000000
          6F01F1A2DC430000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A0000012B49444154388DAD933D4A03411840DFCC26
          D12D423A8F90528478036DFC2923FE922B2C564A0E60E33104156C059BF50262
          64EB343622A2468C2EEE26BB339F8546B688925D7CF5BCC7CCC77C4A44C8B271
          49DD085B400368A4C6CE0C52FB3048CD55AF3FDC0F5AD56EF6BC1A0514A8A68F
          071C002E6308E3C43CF63FDA37DBB54301F90928506B3EE702CBE3C42C7162B8
          EB8517C14E6D45403440D3C79B4406982E3B54DDCAD2ECD1AB07A0D67DA91B21
          F8EDDAE33056B87D7A8BC4E839FD3DB0896500472BDC72C9156D36355FD3CECD
          545983305F3850293908347411398B063A45C4616A50D0291C18241614D7DA51
          1C03511ED958214AD24859E7449F2ED005DA7902CFEF31D64A3B6855BBFFF395
          05E46C915560F7AFE7847162EE5FC2BD910C996D1C91779D3F01D24DA6498045
          39250000000049454E44AE426082}
        FileName = 'C:\Users\saidmubin.salohiddin\Downloads\kreis (2).png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000076000000
          76014E7B26080000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A0000016249444154388D9D934B2B84611886AFE799
          6F3E66E3901DA5B0A02C2D6487447E00E59014B2979F6163EF0F9849CA0E1393
          1DD92B9195D2C8A1D07CF3790F1618394C7DE359DFD7F5DCBD4FAF5065FCC16C
          37B82E009CBD9091CDF3BF72F20D3A1C0C30AD4B08AB40E78FEC25226BE8F586
          0C15CC2F813F9C6FC2C65BC070B5561F93C79666646CBB08A095CDC960801163
          74C7677BC38A00DBB69C1006201586FD91B4AF7F09F02B4961001101D10900F1
          BB533DA4E4AC160140F9F9095ECD98126847ADF07B0BC5E2FA15EFFC7F04DE5A
          14ACA2A9ABFF084C1421E8A900F8FCF405D0951476C6F052BC891BE68EEADEAF
          20B256CBF6D2C33D4198D984CF33EAF506904F02478F8F386BEF32DAB05811C8
          50C1604B33A65C3EA6CA933A6378B92DF21A95EED299E63E99CCC5F0F333657B
          C348DAD7119D90405B44146F2D268A70268E83747D36936A5CF8847F09BE55CD
          8D8F5A670754300227F5937BFB7FE5DE0035E587E8358E4CEB0000000049454E
          44AE426082}
        FileName = 'C:\Users\saidmubin.salohiddin\Downloads\kreis.png'
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000131313264646468C676767CE787878F0797979F26969
          69D2484848901616162C00000000000000000000000000000000000000000000
          0000020202044545458A7D7D7DFA808080FF808080FF808080FF808080FF8080
          80FF808080FF7E7E7EFC4B4B4B96040404080000000000000000000000000202
          0204575757AE808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF5E5E5EBC0404040800000000000000004444
          4488808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF4C4C4C9800000000111111227D7D
          7DFA808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF7E7E7EFC18181830434343868080
          80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF808080FF4B4B4B96646464C88080
          80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF808080FF6C6C6CD8747474E88080
          80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF808080FF7A7A7AF4747474E88080
          80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF808080FF7A7A7AF4636363C68080
          80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF808080FF6C6C6CD8434343868080
          80FF808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF808080FF4B4B4B96121212247D7D
          7DFA808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF7E7E7EFC1717172E000000004343
          4386808080FF808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF808080FF4C4C4C9800000000000000000202
          0204575757AE808080FF808080FF808080FF808080FF808080FF808080FF8080
          80FF808080FF808080FF808080FF5D5D5DBA0404040800000000000000000000
          000002020204444444887D7D7DFA808080FF808080FF808080FF808080FF8080
          80FF808080FF7E7E7EFC4A4A4A94040404080000000000000000000000000000
          00000000000000000000131313264545458A676767CE787878F0787878F06969
          69D2484848901515152A00000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000970485973000000EC000000EC01792871BD0000001974455874536F
          667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000015649
          444154388D9D903D2F6C5114869FB5E6C868A9C5442551F868E834E2164ADFED
          FC09F50E1AFC0894B8F107AE9B301DC58446A21A142A2111E1C8397B2DCD1026
          06334FB29255BC1F7B2FA181FBE9E912AA65DC27054A000E97EAFECF60AB6B7F
          FFEAA35EDE160F41EF4E4F83882C01C5C6E03AA98BAC750F0E2E4B08F61EE021
          E8DDD9D90EEEB34D8C8DEC750F0F2F4A089600DC56AB41E0B76680B9DB6AF51C
          08723335554A0A858B6F9EDD8C3481FEA4A05A76B356CD009D997B39B118FF20
          F2B3FC0B04261377EFC5BDAD0087DE24BA7B7BFDE0E089995D2BF4B41970ADB9
          D981BBD3CE64311EE863966DE531A666462B93C7983E986DEB50A552CB61A3D5
          F667B3F591C3C34BA9FF45CFC7C7778B22333F1DD48117F83B7074B420600A20
          600395CAFC538CABB97BDAAC35774F9FCC56DECC75EF678E4747FB8A1D1DE582
          EA0466250054AFA2D9FF972CDB1C3B39A97DD4BF02196F1B73458A33F5000000
          0049454E44AE426082}
        FileName = 'C:\Users\saidmubin.salohiddin\Downloads\runden.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C08648800000009704859730000006F000000
          6F01F1A2DC430000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A0000012B49444154388DAD933D4A03411840DFCC26
          D12D423A8F90528478036DFC2923FE922B2C564A0E60E33104156C059BF50262
          64EB343622A2468C2EEE26BB339F8546B688925D7CF5BCC7CCC77C4A44C8B271
          49DD085B400368A4C6CE0C52FB3048CD55AF3FDC0F5AD56EF6BC1A0514A8A68F
          071C002E6308E3C43CF63FDA37DBB54301F90928506B3EE702CBE3C42C7162B8
          EB8517C14E6D45403440D3C79B4406982E3B54DDCAD2ECD1AB07A0D67DA91B21
          F8EDDAE33056B87D7A8BC4E839FD3DB0896500472BDC72C9156D36355FD3CECD
          545983305F3850293908347411398B063A45C4616A50D0291C18241614D7DA51
          1C03511ED958214AD24859E7449F2ED005DA7902CFEF31D64A3B6855BBFFF395
          05E46C915560F7AFE7847162EE5FC2BD910C996D1C91779D3F01D24DA6498045
          39250000000049454E44AE426082}
        FileName = 'C:\Users\saidmubin.salohiddin\Downloads\kreis (2).png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000B3F00000B3F0149C532FB0000001974455874536F
          667477617265007777772E696E6B73636170652E6F72679BEE3C1A000000E649
          444154388DA5D23D4E02511486E167860D0C5BD09818635C002E80D88852E876
          D80E34801D89ED58132B4C8C4BD0B000E65ADC1907C3EFE857DEE47DCF977B0E
          FF4CB2F132D292E94BF4144E24023E04534B630F56BB05CF2E1486B8DC3A2E78
          C5A3AEC5A620C239B203ADBF049D4A92FED48E930FC1D0C6D048AB1664FA3B6B
          6F4BE24ADB5D2DE0F668B84A11994A70D65850325110148DF1B8DE5290786F2C
          0891A91A3C3516A4A6B560695C1EC9B199CB4D583FA49973891771CFFBF269A5
          E3C65BDD00BA1682CE8126F375F877832A03A96BF7821E4E113F2C35959B18FC
          6163FBF20D201D3E066AC46B370000000049454E44AE426082}
        FileName = 'C:\Users\saidmubin.salohiddin\Downloads\taste.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000076000000
          76014E7B26080000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A0000016149444154388D9D933D2F83611486AFF3F4
          4BD5472C36122BE91FE826584C62E8666834E964B17413065606116DFC82C620
          69C220463B093F402C3E12453FE8FBF67D8EA1D55469AABDE773DDE73EC97D84
          36693A174524893287D5299C9AE1D37DC5F1EE09047624BB72D23A2F4D70ED34
          C460651734059876635C0F9ECB8A911B2243313988979A0675B8740632FB0BFC
          114FE1B1089E2D30323A2907F1527D53B8BCD715061081F161B03A46B9780920
          9ACE4541AEFE8CDD49E56A3DC96868C92092EC09068884C027E0EA864199EF09
          FE563808AE376D80C9BE0CFC3EF06CC800DA97010A2A18E0BE2FBE66C12F5503
          72DE97C1870301FFADC1678E00AF27B854054F6140B68CEC2CDF0087FF86AD42
          A102E1E0B56412F94613751DB8E80AABC25311445E18A8C5A05120D98C3B8475
          1191FD8EE7D42C3CBC2BCA35113B21D954055ABEB1B9247D3C03BA8AEA42FD9D
          ADE1D379C3F5EE08CAB66412F9D6F92F6072828E46F95F510000000049454E44
          AE426082}
        FileName = 'C:\Users\saidmubin.salohiddin\Downloads\kreis (1).png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000084000000840130AB1D250000001974455874536F
          667477617265007777772E696E6B73636170652E6F72679BEE3C1A000000B749
          444154388DA5D24B8AC2401804E0CF88998D27F1B1F76E9E610645D1BBF8BA84
          7A01E70871234474914442D406DB82825E74D55FD5FDF38C21A638E05CF28009
          062FEE3FF08305AEB8BD618E39D257E25D40D8E4B669B2FC405C7156EF1C8A1D
          AAD36F638C51E871DE20C1058E11D32BEE5BC8D08D480059523AC5E296E0FF0B
          835382F517062B8AF5CCC57D63AF729A47184CEB51526C3E10AFD169F64915EB
          19AA9397939FC475F4F187BD6247B2F2FC5BEF5CE10E038B8282C5F1201F0000
          000049454E44AE426082}
        FileName = 'C:\Users\saidmubin.salohiddin\Downloads\kreis (3).png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000009704859730000007600000076014E7B26080000001974455874536F
          667477617265007777772E696E6B73636170652E6F72679BEE3C1A000000DF49
          444154388D9DD3414EC3301085E12F71849A656917DC0321E004482021160D77
          E504B0809B50D8012A54B0B0D32293A434FF6E2C8F9FF5E64DA19B80131CA67A
          8947ACF38B4556D7B8C00AF7784DE7539CE3007778EF523DC222A9F711D0A4BB
          7F9417038D390D26BF0F6E762877FDE41ACA54AC741834C01A5FADE899ADDBFB
          30C369293AFC32E28125A625BE4734B7140173BCE999ED00736912019723D4AF
          104AD1D11AD51ECD414CF16672B5188EFF722B0B12319ECD8E9F54A97913E57C
          9926E2327DE2C176BC33312F95B84C1F7D0FB4041C8B4EC3339E74A4F507A000
          2036A6E7F7870000000049454E44AE426082}
        FileName = 'C:\Users\saidmubin.salohiddin\Downloads\kreis (4).png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000473424954080808087C086488000000097048597300000076000000
          76014E7B26080000001974455874536F667477617265007777772E696E6B7363
          6170652E6F72679BEE3C1A0000013C49444154388D9D93C14A02611446CFBD13
          140AB5364DC34DD01304B908647C82DAE7B2550BA1763158102E7C866C59E10B
          34082EF421DAA90CBA9790819AB92DCA484189F9563FDC7B0E177E3E6129995A
          A7E0387195585C840280600333F523A3356996877FF7E5F7E5799A9D953C31AE
          80CD65F14F42C41A41AA5FC7F36200670EE7DE4B4F0217C0C60A98EF999CEC7C
          E40FA795629B6ED714203B2B7908A76BC085189CE566C7370092A9750A8EDADB
          9AB357258CD50ED471E26A0218604B23AD2A269504300022B1AB403EA9C090BC
          0296540098628C12D3C64851F3930A145E358AF4010813F061E4D8A34E9AE521
          628D0482FB71C31D294090EAD7055EFE4B8AC87390EEDDC1BC0BDDAE4D2BC5F6
          F6E71E2047ACEE4308DC06E9DEE5BC4CB2BCB17BEDE7359673335C11F601CC18
          88E0C76AAD71C35DF8B52F82D76BD3830528290000000049454E44AE426082}
        FileName = 'C:\Users\saidmubin.salohiddin\Downloads\aufzeichnen.png'
      end>
  end
end
