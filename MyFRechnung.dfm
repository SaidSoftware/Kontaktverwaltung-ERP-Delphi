object Rechnungform: TRechnungform
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Rechnungen'
  ClientHeight = 580
  ClientWidth = 1121
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000760000007600000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000F396
    21F7F39621FFF39521A9F39521A9F39621FFF39621F7F497225BF39621FFF396
    21FFF497225BF39621F7F39621FFF39521A9F39521A9F39621FFF39621F7F396
    21FFF39621FFF39621EBF39621EBF39621FFF39621FFF39621D6F39621FFF396
    21FFF39621D6F39621FFF39621FFF39621EBF39621EBF39621FFF39621FFF396
    21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
    21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
    21FFF5AE54FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF9F0E4FFF39621FFF49E
    33FFF7B96BFFF7B96BFFF7B96BFFF7B96BFFF7B96BFFF6AA4BFFF39621FFF396
    21FFF39824FFF9E6CEFFFAFAFAFFFAFAFAFFFAFAFAFFF7C688FFF39621FFF396
    21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
    21FFF39621FFF49B2CFFF7CB94FFF8DEBDFFF5B86DFFF39621FFF39621FFF49E
    33FFF7B96BFFF7B96BFFF7B96BFFF6AA4BFFF39621FFF39621FFF39621FFF396
    21FFF39621FFF39621FFF9EBD8FFFAFAFAFFF6C88EFFF39621FFF39621FFF396
    21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
    21FFF39621FFF39621FFF9EBD9FFFAFAFAFFF6C98FFFF39621FFF39621FFF49E
    33FFF7B96BFFF7B96BFFF7B96BFFF7B96BFFF7B96BFFF6AA4BFFF39621FFF396
    21FFF39621FFF39621FFF49F34FFF5B25DFFF39724FFF39621FFF39621FFF396
    21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
    21F7F39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF396
    21FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621FFF39621F70000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    0000FFFF0000FFFF000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000}
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object dxPanelRechnung: TdxPanel
    Left = 0
    Top = 38
    Width = 1121
    Height = 542
    Align = alClient
    TabOrder = 0
    object dxLayoutControlRechnung: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 1119
      Height = 540
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      object cxTextEditKontakt: TcxTextEdit
        Left = 465
        Top = 58
        AutoSize = False
        Properties.OnChange = cxTextEditKontaktPropertiesChange
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 2
        Height = 27
        Width = 226
      end
      object cxTextEditBelegNummer: TcxTextEdit
        Left = 269
        Top = 58
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
        Width = 142
      end
      object cxDateEditDatum: TcxDateEdit
        Left = 772
        Top = 58
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 4
        Width = 143
      end
      object cxDateEditBis: TcxDateEdit
        Left = 943
        Top = 58
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 5
        Width = 146
      end
      object cxComboBoxArchivzustand: TcxComboBox
        Left = 108
        Top = 58
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
        TabOrder = 0
        Height = 27
        Width = 101
      end
      object cxImageKontaktsuchen: TcxImage
        Left = 698
        Top = 58
        Picture.Data = {
          0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
          00100000001008060000001FF3FF61000000097048597300000EC200000EC201
          15284A8000000012744558745469746C650046696E643B5365617263683BAD07
          8F620000016A49444154785EA591CD4A02611486BD8A46A789F1278568DFD65D
          B408341A1DB5C69F748CB983C84D942EEC565A0981E6FC383FB60964EA0A0A69
          51B619086C33703A332048F6CDC617DE8FB3799F73CE774200B096FD67A16DD1
          4CC71B660FFD1EAB1B9E7BD19A990EAD6A159014CD56B26941EA7C0C471D1BB2
          373624C43144AB06B015BD1504F03B27450B326D1BA65F3FB090571F5E4D802D
          8F80A98C0E8800EC64ED4A8F7EE0AF5E3FE6906A18C008EA3D11106F584EF1F6
          0548CA759E8139D1666440DD740A5D32806BDB0850C880E89961ED4816BC7DCE
          FF5D2151D7812E05ACE09D8AAD99AEF761D3D9D22762BD7FF9049B25052225B5
          1D7846B632BAC07341ACAA43F67A0219342B6818D6BC30448AAA4BF3324F02F8
          62CACADE96A0F79953CDA105348E4D17D52E861180531414974208014056981F
          4A1886302F4398935D8A937912800CE18612951F009597813AEE7F1300C1DAC8
          3D34A97CDFD9E00677CB8075BC3EE0171A811CE8F7E0E9CD0000000049454E44
          AE426082}
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 3
        OnClick = cxImageKontaktsuchenClick
        Height = 27
        Width = 25
      end
      object cxPageControlRechnung: TcxPageControl
        Left = 12
        Top = 111
        Width = 1095
        Height = 417
        Color = 16448250
        ParentBackground = False
        ParentColor = False
        TabOrder = 6
        Properties.ActivePage = cxTabSheetMainform
        Properties.CustomButtons.Buttons = <>
        Properties.ShowTabHints = True
        LookAndFeel.SkinName = 'WXI'
        ClientRectBottom = 416
        ClientRectLeft = 1
        ClientRectRight = 1094
        ClientRectTop = 29
        object cxTabSheetMainform: TcxTabSheet
          Caption = 'Rechnungen'
          ImageIndex = 0
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 1093
            Height = 387
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
            object cxGridRechnung: TcxGrid
              Left = 12
              Top = 12
              Width = 1069
              Height = 363
              TabOrder = 0
              RootLevelStyles.OnGetTabStyle = cxGridRechnungRootLevelStylesGetTabStyle
              object cxGridRechnungDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                DataController.DataSource = MSDataSourceRechnung
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Editing = False
                OptionsSelection.MultiSelect = True
                object cxGridRechnungDBTableView1RechnungID: TcxGridDBColumn
                  DataBinding.FieldName = 'RechnungID'
                  DataBinding.IsNullValueType = True
                  Visible = False
                end
                object cxGridRechnungDBTableView1BelegNummer: TcxGridDBColumn
                  Caption = 'Belegnummer'
                  DataBinding.FieldName = 'BelegNummer'
                  DataBinding.IsNullValueType = True
                  Width = 119
                end
                object cxGridRechnungDBTableView1PersonID: TcxGridDBColumn
                  Caption = 'KontaktID'
                  DataBinding.FieldName = 'PersonID'
                  DataBinding.IsNullValueType = True
                  Width = 88
                end
                object cxGridRechnungDBTableView1LieferantID: TcxGridDBColumn
                  DataBinding.FieldName = 'LieferantID'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1Datum: TcxGridDBColumn
                  DataBinding.FieldName = 'Datum'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1Faelligkeitsdatum: TcxGridDBColumn
                  DataBinding.FieldName = 'Faelligkeitsdatum'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1Bruttobetrag: TcxGridDBColumn
                  DataBinding.FieldName = 'Bruttobetrag'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1Nettobetrag: TcxGridDBColumn
                  DataBinding.FieldName = 'Nettobetrag'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1MwStProzent: TcxGridDBColumn
                  DataBinding.FieldName = 'MwStProzent'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1MwStBetrag: TcxGridDBColumn
                  DataBinding.FieldName = 'MwStBetrag'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1Status: TcxGridDBColumn
                  DataBinding.FieldName = 'Status'
                  DataBinding.IsNullValueType = True
                  Width = 63
                end
                object cxGridRechnungDBTableView1Archivzustand: TcxGridDBColumn
                  DataBinding.FieldName = 'Archivzustand'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1Beschreibung: TcxGridDBColumn
                  DataBinding.FieldName = 'Beschreibung'
                  DataBinding.IsNullValueType = True
                  Width = 175
                end
                object cxGridRechnungDBTableView1Notizen: TcxGridDBColumn
                  DataBinding.FieldName = 'Notizen'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1ZahlungsEingangDatum: TcxGridDBColumn
                  DataBinding.FieldName = 'ZahlungsEingangDatum'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1Mahnstatus: TcxGridDBColumn
                  DataBinding.FieldName = 'Mahnstatus'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1ErstelltAm: TcxGridDBColumn
                  DataBinding.FieldName = 'ErstelltAm'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1BearbeitetAm: TcxGridDBColumn
                  DataBinding.FieldName = 'BearbeitetAm'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1KontaktName: TcxGridDBColumn
                  DataBinding.FieldName = 'KontaktName'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1KontaktVorname: TcxGridDBColumn
                  DataBinding.FieldName = 'KontaktVorname'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1KontaktEmail: TcxGridDBColumn
                  DataBinding.FieldName = 'KontaktEmail'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1KontaktTelefon: TcxGridDBColumn
                  DataBinding.FieldName = 'KontaktTelefon'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1KontaktAdresse: TcxGridDBColumn
                  DataBinding.FieldName = 'KontaktAdresse'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1KontaktPLZ: TcxGridDBColumn
                  DataBinding.FieldName = 'KontaktPLZ'
                  DataBinding.IsNullValueType = True
                  Width = 88
                end
                object cxGridRechnungDBTableView1KontaktOrt: TcxGridDBColumn
                  DataBinding.FieldName = 'KontaktOrt'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1LieferantName: TcxGridDBColumn
                  DataBinding.FieldName = 'LieferantName'
                  DataBinding.IsNullValueType = True
                  Width = 89
                end
                object cxGridRechnungDBTableView1LieferantKontaktPerson: TcxGridDBColumn
                  DataBinding.FieldName = 'LieferantKontaktPerson'
                  DataBinding.IsNullValueType = True
                  Width = 138
                end
                object cxGridRechnungDBTableView1TagebisFaelligkeit: TcxGridDBColumn
                  DataBinding.FieldName = 'TagebisFaelligkeit'
                  DataBinding.IsNullValueType = True
                end
                object cxGridRechnungDBTableView1StatusBerechnet: TcxGridDBColumn
                  DataBinding.FieldName = 'StatusBerechnet'
                  DataBinding.IsNullValueType = True
                end
              end
              object cxGridRechnungDBBandedTableViewRechnung: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                OnCellDblClick = cxGridRechnungDBBandedTableViewRechnungCellDblClick
                DataController.DataSource = MSDataSourceRechnung
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skSum
                    Column = cxGridRechnungDBBandedTableViewRechnungBruttobetrag
                  end
                  item
                    Kind = skSum
                    Column = cxGridRechnungDBBandedTableViewRechnungNettobetrag
                  end
                  item
                    Kind = skMin
                    Column = cxGridRechnungDBBandedTableViewRechnungMwStProzent
                  end
                  item
                    Kind = skSum
                    Column = cxGridRechnungDBBandedTableViewRechnungMwStBetrag
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Editing = False
                OptionsView.Footer = True
                OptionsView.FooterAutoHeight = True
                OptionsView.FooterMultiSummaries = True
                Styles.Footer = cxStyle1
                Bands = <
                  item
                    Caption = 'Kontaktdaten'
                    FixedKind = fkLeftDynamic
                    Options.HoldOwnColumnsOnly = True
                    Width = 618
                  end
                  item
                    Caption = 'Beleg'
                    Options.HoldOwnColumnsOnly = True
                    Width = 1096
                  end
                  item
                    Caption = 'Lieferant'
                    Options.HoldOwnColumnsOnly = True
                    Width = 229
                  end
                  item
                    Caption = 'Zahlung'
                    Options.HoldOwnColumnsOnly = True
                    Width = 688
                  end>
                object cxGridRechnungDBBandedTableViewRechnungRechnungID: TcxGridDBBandedColumn
                  Caption = 'ID'
                  DataBinding.FieldName = 'RechnungID'
                  DataBinding.IsNullValueType = True
                  Visible = False
                  Width = 39
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungBelegNummer: TcxGridDBBandedColumn
                  Caption = 'Nummer'
                  DataBinding.FieldName = 'BelegNummer'
                  DataBinding.IsNullValueType = True
                  Width = 155
                  Position.BandIndex = 1
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungPersonID: TcxGridDBBandedColumn
                  Caption = 'ID'
                  DataBinding.FieldName = 'PersonID'
                  DataBinding.IsNullValueType = True
                  Width = 40
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungLieferantID: TcxGridDBBandedColumn
                  Caption = 'ID'
                  DataBinding.FieldName = 'LieferantID'
                  DataBinding.IsNullValueType = True
                  Visible = False
                  Width = 39
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungDatum: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Datum'
                  DataBinding.IsNullValueType = True
                  Width = 85
                  Position.BandIndex = 1
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungFaelligkeitsdatum: TcxGridDBBandedColumn
                  Caption = 'F'#228'lligkeitsdatum'
                  DataBinding.FieldName = 'Faelligkeitsdatum'
                  DataBinding.IsNullValueType = True
                  Width = 119
                  Position.BandIndex = 1
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungBruttobetrag: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Bruttobetrag'
                  DataBinding.IsNullValueType = True
                  Width = 82
                  Position.BandIndex = 3
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungNettobetrag: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Nettobetrag'
                  DataBinding.IsNullValueType = True
                  Width = 82
                  Position.BandIndex = 3
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungMwStProzent: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'MwStProzent'
                  DataBinding.IsNullValueType = True
                  Width = 84
                  Position.BandIndex = 3
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungMwStBetrag: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'MwStBetrag'
                  DataBinding.IsNullValueType = True
                  Width = 82
                  Position.BandIndex = 3
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungStatus: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Status'
                  DataBinding.IsNullValueType = True
                  Width = 66
                  Position.BandIndex = 1
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungArchivzustand: TcxGridDBBandedColumn
                  Caption = 'Archiv'
                  DataBinding.FieldName = 'Archivzustand'
                  DataBinding.IsNullValueType = True
                  Visible = False
                  Width = 79
                  Position.BandIndex = 1
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungBeschreibung: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Beschreibung'
                  DataBinding.IsNullValueType = True
                  Width = 199
                  Position.BandIndex = 1
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungNotizen: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Notizen'
                  DataBinding.IsNullValueType = True
                  Width = 86
                  Position.BandIndex = 1
                  Position.ColIndex = 9
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungZahlungsEingangDatum: TcxGridDBBandedColumn
                  Caption = 'Zahlungseingangdatum'
                  DataBinding.FieldName = 'ZahlungsEingangDatum'
                  DataBinding.IsNullValueType = True
                  Width = 137
                  Position.BandIndex = 3
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungMahnstatus: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'Mahnstatus'
                  DataBinding.IsNullValueType = True
                  Visible = False
                  Width = 88
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungErstelltAm: TcxGridDBBandedColumn
                  Caption = 'Erstellt Am'
                  DataBinding.FieldName = 'ErstelltAm'
                  DataBinding.IsNullValueType = True
                  Width = 130
                  Position.BandIndex = 1
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungBearbeitetAm: TcxGridDBBandedColumn
                  Caption = 'Bearbeitet Am'
                  DataBinding.FieldName = 'BearbeitetAm'
                  DataBinding.IsNullValueType = True
                  Width = 137
                  Position.BandIndex = 1
                  Position.ColIndex = 8
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungKontaktName: TcxGridDBBandedColumn
                  Caption = 'Name'
                  DataBinding.FieldName = 'KontaktName'
                  DataBinding.IsNullValueType = True
                  Width = 95
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungKontaktVorname: TcxGridDBBandedColumn
                  Caption = 'Vorname'
                  DataBinding.FieldName = 'KontaktVorname'
                  DataBinding.IsNullValueType = True
                  Width = 83
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungKontaktEmail: TcxGridDBBandedColumn
                  Caption = 'Email'
                  DataBinding.FieldName = 'KontaktEmail'
                  DataBinding.IsNullValueType = True
                  Width = 93
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungKontaktTelefon: TcxGridDBBandedColumn
                  Caption = 'Telefon'
                  DataBinding.FieldName = 'KontaktTelefon'
                  DataBinding.IsNullValueType = True
                  Width = 89
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungKontaktAdresse: TcxGridDBBandedColumn
                  Caption = 'Adresse'
                  DataBinding.FieldName = 'KontaktAdresse'
                  DataBinding.IsNullValueType = True
                  Width = 87
                  Position.BandIndex = 0
                  Position.ColIndex = 8
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungKontaktPLZ: TcxGridDBBandedColumn
                  Caption = 'PLZ'
                  DataBinding.FieldName = 'KontaktPLZ'
                  DataBinding.IsNullValueType = True
                  Width = 50
                  Position.BandIndex = 0
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungKontaktOrt: TcxGridDBBandedColumn
                  Caption = 'Ort'
                  DataBinding.FieldName = 'KontaktOrt'
                  DataBinding.IsNullValueType = True
                  Width = 81
                  Position.BandIndex = 0
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungLieferantName: TcxGridDBBandedColumn
                  Caption = 'Name'
                  DataBinding.FieldName = 'LieferantName'
                  DataBinding.IsNullValueType = True
                  Width = 56
                  Position.BandIndex = 2
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungLieferantKontaktPerson: TcxGridDBBandedColumn
                  Caption = 'Kontaktperson'
                  DataBinding.FieldName = 'LieferantKontaktPerson'
                  DataBinding.IsNullValueType = True
                  Width = 133
                  Position.BandIndex = 2
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungTagebisFaelligkeit: TcxGridDBBandedColumn
                  Caption = 'Tage bis F'#228'lligkeit'
                  DataBinding.FieldName = 'TagebisFaelligkeit'
                  DataBinding.IsNullValueType = True
                  Width = 113
                  Position.BandIndex = 3
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cxGridRechnungDBBandedTableViewRechnungStatusBerechnet: TcxGridDBBandedColumn
                  Caption = 'Status Berechnet'
                  DataBinding.FieldName = 'StatusBerechnet'
                  DataBinding.IsNullValueType = True
                  PropertiesClassName = 'TcxImageComboBoxProperties'
                  Properties.Images = Papierkorb.cxImageListKalender
                  Properties.Items = <
                    item
                      Description = 'Offen'
                      ImageIndex = 7
                      Value = 'Offen'
                    end
                    item
                      Description = 'Bezahlt'
                      ImageIndex = 5
                      Value = 'Bezahlt'
                    end
                    item
                      Description = #220'berf'#228'llig'
                      ImageIndex = 1
                      Value = #220'berf'#228'llig'
                    end>
                  Properties.ShowDescriptions = False
                  OnGetCellHint = cxGridRechnungDBBandedTableViewRechnungStatusBerechnetGetCellHint
                  Width = 107
                  Position.BandIndex = 3
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
              end
              object cxGridRechnungLevel1: TcxGridLevel
                GridView = cxGridRechnungDBBandedTableViewRechnung
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
              Control = cxGridRechnung
              ControlOptions.OriginalHeight = 341
              ControlOptions.OriginalWidth = 826
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxTabSheetRechnungStatistik: TcxTabSheet
          Caption = 'Rechnungstatistik'
          ImageIndex = 1
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 1093
            Height = 387
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
            object cxGrid1: TcxGrid
              Left = 12
              Top = 12
              Width = 1069
              Height = 363
              BorderStyle = cxcbsNone
              PopupMenu = PopupMenu1
              TabOrder = 0
              LookAndFeel.SkinName = 'WXI'
              object cxGrid1DBBandedTableViewStatistik: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                ScrollbarAnnotations.CustomAnnotations = <>
                DataController.DataSource = MSDataSourceStatistik
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Editing = False
                OptionsSelection.MultiSelect = True
                OptionsView.ColumnAutoWidth = True
                OptionsView.GroupByBox = False
                Bands = <
                  item
                    Caption = 'Rechnungen'
                    Options.HoldOwnColumnsOnly = True
                    Width = 382
                  end
                  item
                    Caption = 'Betrag'
                    Options.HoldOwnColumnsOnly = True
                    Width = 686
                  end>
                object cxGrid1DBBandedTableViewStatistikGesamtRechnungen: TcxGridDBBandedColumn
                  Caption = 'Gesamt'
                  DataBinding.FieldName = 'GesamtRechnungen'
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableViewStatistikOffeneRechnungen: TcxGridDBBandedColumn
                  Caption = 'Offene'
                  DataBinding.FieldName = 'OffeneRechnungen'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableViewStatistikBezahlteRechnungen: TcxGridDBBandedColumn
                  Caption = 'Bezahlte'
                  DataBinding.FieldName = 'BezahlteRechnungen'
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableViewStatistikUeberfaelligeRechnungen: TcxGridDBBandedColumn
                  Caption = #220'berf'#228'llige'
                  DataBinding.FieldName = 'UeberfaelligeRechnungen'
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableViewStatistikOffenerBetrag: TcxGridDBBandedColumn
                  Caption = 'Offener'
                  DataBinding.FieldName = 'OffenerBetrag'
                  Width = 171
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableViewStatistikBezahlterBetrag: TcxGridDBBandedColumn
                  Caption = 'Bezahlter'
                  DataBinding.FieldName = 'BezahlterBetrag'
                  Width = 168
                  Position.BandIndex = 1
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxGrid1DBBandedTableViewStatistikGesamtBetrag: TcxGridDBBandedColumn
                  Caption = 'Gesamt'
                  DataBinding.FieldName = 'GesamtBetrag'
                  Width = 157
                  Position.BandIndex = 1
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
              end
              object cxGrid1DBChartViewStatistik: TcxGridDBChartView
                DataController.DataSource = MSDataSourceStatistik
                DiagramColumn.Active = True
                DiagramColumn.Values.VaryColorsByCategory = True
                DiagramColumn.Values.CaptionPosition = cdvcpOutsideEnd
                DiagramPie.Legend.Alignment = cpaCenter
                DiagramPie.Legend.Border = lbNone
                DiagramPie.SeriesSites = True
                DiagramPie.Values.CaptionPosition = pdvcpOutsideEnd
                ToolBox.CustomizeButton = True
                object cxGrid1DBChartViewStatistikSeries4: TcxGridDBChartSeries
                  DataBinding.FieldName = 'GesamtRechnungen'
                  DisplayText = 'Gesamt Rechnungen'
                end
                object cxGrid1DBChartViewStatistikSeries3: TcxGridDBChartSeries
                  DataBinding.FieldName = 'GesamtBetrag'
                  DisplayText = 'Gesamt Betrag'
                  GroupIndex = 1
                end
                object cxGrid1DBChartViewStatistikSeries1: TcxGridDBChartSeries
                  DataBinding.FieldName = 'BezahlteRechnungen'
                end
                object cxGrid1DBChartViewStatistikSeries2: TcxGridDBChartSeries
                  DataBinding.FieldName = 'BezahlterBetrag'
                end
                object cxGrid1DBChartViewStatistikSeries5: TcxGridDBChartSeries
                  DataBinding.FieldName = 'OffeneRechnungen'
                end
                object cxGrid1DBChartViewStatistikSeries6: TcxGridDBChartSeries
                  DataBinding.FieldName = 'OffenerBetrag'
                end
                object cxGrid1DBChartViewStatistikSeries7: TcxGridDBChartSeries
                  DataBinding.FieldName = 'UeberfaelligeRechnungen'
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBBandedTableViewStatistik
              end
            end
            object dxLayoutControl2Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avClient
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutControl2Group_Root
              AlignHorz = ahClient
              AlignVert = avClient
              Control = cxGrid1
              ControlOptions.OriginalHeight = 255
              ControlOptions.OriginalWidth = 850
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
      end
      object dxLayoutControlRechnungGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Kontakt'
        Control = cxTextEditKontakt
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 226
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Beleg-Nr'
        Control = cxTextEditBelegNummer
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 142
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutControlRechnungGroup_Root
        CaptionOptions.Text = 'Suchparameter'
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutGroup2
        CaptionOptions.Text = 'Datum'
        Control = cxDateEditDatum
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 143
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutGroup2
        CaptionOptions.Text = 'Bis'
        Control = cxDateEditBis
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 146
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignVert = avClient
        CaptionOptions.Text = 'Archivzustand'
        Control = cxComboBoxArchivzustand
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 101
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutGroup2
        Control = cxImageKontaktsuchen
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 25
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutControlRechnungGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxPageControlRechnung
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 400
        ControlOptions.OriginalWidth = 289
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = Papierkorb.cxImageListStartlist
    ImageOptions.LargeImages = Papierkorb.cxImageListStartlist
    LookAndFeel.SkinName = 'WXI'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 1016
    Top = 24
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      38
      0)
    object dxBarManager1Bar1: TdxBar
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1101
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonSuchen'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonZuruecksetzen'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButtonArchivieren'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButtondrucken'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonListendruck'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarLargeButtonSuchen: TdxBarLargeButton
      Caption = 'Suchen'
      Category = 0
      Hint = 'Suchen'
      Visible = ivAlways
      OnClick = dxBarLargeButtonSuchenClick
      AutoGrayScale = False
      LargeImageIndex = 29
    end
    object dxBarLargeButtonZuruecksetzen: TdxBarLargeButton
      Caption = 'Zur'#252'cksetzen'
      Category = 0
      Hint = 'Zur'#252'cksetzen'
      Visible = ivAlways
      OnClick = dxBarLargeButtonZuruecksetzenClick
      AutoGrayScale = False
      LargeImageIndex = 12
    end
    object dxBarLargeButtonListendruck: TdxBarLargeButton
      Caption = 'Listendruck'
      Category = 0
      Hint = 'Listendruck'
      Visible = ivAlways
      OnClick = dxBarLargeButtonListendruckClick
      AutoGrayScale = False
      LargeImageIndex = 13
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButtondrucken: TdxBarLargeButton
      Caption = 'Drucken'
      Category = 0
      Hint = 'Drucken'
      Visible = ivAlways
      OnClick = dxBarLargeButtondruckenClick
      AutoGrayScale = False
      LargeImageIndex = 13
    end
    object dxBarLargeButtonArchivieren: TdxBarLargeButton
      Caption = 'Archivieren'
      Category = 0
      Hint = 'Archivieren'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 18
    end
    object dxBarLargeButtonLoeschen: TdxBarLargeButton
      Caption = 'L'#246'schen'
      Category = 0
      Hint = 'L'#246'schen'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 24
      SyncImageIndex = False
      ImageIndex = -1
    end
  end
  object MSQueryRechnung: TMSQuery
    Connection = MyDataModule.MyConnections
    SQL.Strings = (
      'SELECT * FROM RechnungView;')
    Left = 936
    Top = 22
  end
  object MSDataSourceRechnung: TMSDataSource
    DataSet = MSQueryRechnung
    Left = 848
    Top = 22
  end
  object MSQueryStatistik: TMSQuery
    Connection = MyDataModule.MyConnections
    SQL.Strings = (
      'SELECT *FROM RechnungStatistik;')
    Active = True
    Left = 1021
    Top = 83
  end
  object MSDataSourceStatistik: TMSDataSource
    DataSet = MSQueryStatistik
    Left = 941
    Top = 99
  end
  object PopupMenu1: TPopupMenu
    Images = Papierkorb.cxImageListStartlist
    Left = 757
    Top = 18
    object Ansicht1: TMenuItem
      Caption = 'Ansicht'
      ImageIndex = 34
      object abelle1: TMenuItem
        Caption = 'Tabelle '
        ImageIndex = 61
        OnClick = abelle1Click
      end
      object Chart1: TMenuItem
        Caption = 'Chart'
        ImageIndex = 49
        OnClick = Chart1Click
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 824
    Top = 96
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 656
    Top = 30
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxGridReportLink
      Component = cxGrid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Report'
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
