object Kontaktauswahl: TKontaktauswahl
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Kontaktauswahl'
  ClientHeight = 597
  ClientWidth = 539
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
    0000000000000000000000000000000000000000000000000000000000000000
    0000F0F0F0ECF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
    F0FFF0F0F0FFF0F0F0EC00000000000000000000000000000000000000000000
    0000F0F0F0FFE3E3E3FFE3E3E3FFD5D5D5FFDFDDE2FF9570D5FF916DCEFF9D7C
    D6FFE3E3E3FFF0F0F0FF00000000000000000000000000000000000000000000
    0000F0F0F0FFE9E9E9FFE9E9E9FFE3E3E3FFAE93DDFFD3C9E4FFBAA788FFCEC8
    BDFFD8D9D9FFF0F0F0FF00000000000000000000000000000000000000000000
    0000F0F0F0FFE9E9E9FFE9E9E9FFE3E3E3FFAD92DCFFD4CAE4FFBDAD8FFFDCDE
    DFFFA2C8EEFFBBC2A4FFCF9F0010000000000000000000000000000000000000
    0000F0F0F0FFE3E3E3FFE3E3E3FFD5D5D5FFDFDDE2FF9570D5FF916DCEFF9C7B
    D6FFBBC2A6FFB78F01FFC69E00CDCF9F00100000000000000000000000000000
    0000F0F0F0FFF0F0F0FFE9E9E9FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE9E9
    E9FFEEEBE2FFCBAB2DFFB78E00FFC69D00D1C69C001200000000000000000000
    0000F0F0F0FFF0F0F0FFE9E9E9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE9E9
    E9FFF0F0F0FFEEEBE1FFC69F00CDB78E00FFC9A514C3EFEFEF10000000000000
    0000AC9876D0AC9876D0A48F6BD6AC9876D0AC9876D0AC9876D0AC9876D0A48F
    6BD6AC9876D0AC9876D0CC99000FC9A412C1D8CACAC96021CDB7000000000000
    000078500AFF78500AFF1E92B2FF78500AFF78500AFF78500AFF78500AFF1E92
    B2FF78500AFF78500AFF00000000EFEFEF105D1ECAB8500BC85C000000000000
    000077500A69784F0B77784F0B77784F0B77784F0B77784F0B77784F0B77784F
    0B77784F0B7778510A6800000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    0000FFFF0000FFFF0000801F0000801F0000801F0000800F0000800700008003
    0000800100008001000080110000801F0000FFFF0000FFFF0000FFFF0000}
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object dxPanelAuswahl: TdxPanel
    Left = 0
    Top = 0
    Width = 539
    Height = 597
    Align = alClient
    TabOrder = 0
    object dxLayoutControlAuswahl: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 537
      Height = 595
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      object cxGridKAuswahl: TcxGrid
        Left = 27
        Top = 92
        Width = 479
        Height = 429
        TabOrder = 2
        object cxGridKAuswahlDBTableViewKAuswahl: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.MultiSelect = True
          OptionsSelection.ShowCheckBoxesDynamically = True
          OptionsView.GroupByBox = False
          object cxGridKAuswahlDBTableViewKAuswahlPersonID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'PersonID'
            DataBinding.IsNullValueType = True
            Options.Editing = False
            Width = 61
          end
          object cxGridKAuswahlDBTableViewKAuswahlVorname: TcxGridDBColumn
            DataBinding.FieldName = 'Vorname'
            DataBinding.IsNullValueType = True
            Options.Editing = False
            Width = 82
          end
          object cxGridKAuswahlDBTableViewKAuswahlName: TcxGridDBColumn
            DataBinding.FieldName = 'Name'
            DataBinding.IsNullValueType = True
            Options.Editing = False
            Width = 61
          end
          object cxGridKAuswahlDBTableViewKAuswahlColumnCheckBox: TcxGridDBColumn
            Caption = 'Ausw'#228'hlen'
            DataBinding.FieldName = 'IsSelected'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = 'true'
            Properties.NullStyle = nssUnchecked
            Width = 271
          end
        end
        object cxGridKAuswahlDBCardView1: TcxGridDBCardView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = MSDataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
          object cxGridKAuswahlDBCardView1PersonID: TcxGridDBCardViewRow
            DataBinding.FieldName = 'PersonID'
            Position.BeginsLayer = True
          end
          object cxGridKAuswahlDBCardView1Vorname: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Vorname'
            Position.BeginsLayer = True
          end
          object cxGridKAuswahlDBCardView1Name: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Name'
            Position.BeginsLayer = True
          end
        end
        object cxGridKAuswahlLevel1: TcxGridLevel
          GridView = cxGridKAuswahlDBTableViewKAuswahl
        end
      end
      object cxButtonFertig: TcxButton
        Left = 426
        Top = 547
        Width = 95
        Height = 30
        Caption = 'Fertigstellen'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000021744558745469746C65004170706C793B4F4B3B436865
          636B3B426172733B526962626F6E3B6463C8680000009449444154785EC59341
          0A83400C4547BAEAB6E0097A912E2DB8D2BBB8F1201EC19BD82B74E3294AC159
          C52F2464182498B6D0C5239B798F309040445FF1FB40370E4728787E14A8C004
          2EBE80CA0B20F0008523A032CF3B08B97CF2C81BA97C054F703B220B229FC1CC
          8FDE1AB1E57C8316C424D2677295CB7B7FD0680498B206AC4894B53D0189BC40
          0D823720943C4DFE7F8D2B585260AAC36B7FD80000000049454E44AE426082}
        TabOrder = 3
        OnClick = cxButtonFertigClick
      end
      object cxTextEditKSuchen: TcxTextEdit
        Left = 12
        Top = 12
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 0
        Width = 333
      end
      object cxButtonKSuchen: TcxButton
        Left = 352
        Top = 12
        Width = 169
        Height = 27
        Caption = 'Suchen'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000097048597300000EC200000EC20115284A8000000012744558745469
          746C650046696E643B5365617263683BAD078F620000016A49444154785EA591
          CD4A02611486BD8A46A789F1278568DFD65DB408341A1DB5C69F748CB983C84D
          942EEC565A0981E6FC383FB60964EA0A0A6951B619086C33703A332048F6CDC6
          17DE8FB3799F73CE774200B096FD67A16DD14CC71B660FFD1EAB1B9E7BD19A99
          0EAD6A159014CD56B26941EA7C0C471D1BB2373624C43144AB06B015BD1504F0
          3B27450B326D1BA65F3FB090571F5E4D802D8F80A98C0E8800EC64ED4A8F7EE0
          AF5E3FE6906A18C008EA3D11106F584EF1F60548CA759E8139D1666440DD740A
          5D32806BDB0850C880E89961ED4816BC7DCEFF5D2151D7812E05ACE09D8AAD99
          AEF761D3D9D22762BD7FF9049B25052225B51D7846B632BAC07341ACAA43F67A
          0219342B6818D6BC30448AAA4BF3324F02F862CACADE96A0F79953CDA105348E
          4D17D52E861180531414974208014056981F4A1886302F4398935D8A93791280
          0CE18612951F009597813AEE7F1300C1DAC83D34A97CDFD9E00677CB8075BC3E
          E0171A811CE8F7E0E9CD0000000049454E44AE426082}
        TabOrder = 1
        OnClick = cxButtonKSuchenClick
      end
      object dxLayoutControlAuswahlGroup_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
        Hidden = True
        ItemIndex = 2
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup1
        Control = cxGridKAuswahl
        ControlOptions.OriginalHeight = 429
        ControlOptions.OriginalWidth = 413
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutControlAuswahlGroup_Root
        CaptionOptions.Text = 'Alle aktuellen Kontakte'
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControlAuswahlGroup_Root
        AlignHorz = ahRight
        AlignVert = avTop
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxButtonFertig
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 95
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        Control = cxTextEditKSuchen
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 333
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxButtonKSuchen
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 169
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControlAuswahlGroup_Root
        LayoutDirection = ldHorizontal
        Index = 0
      end
    end
  end
  object MSQueryKAuswahl: TMSQuery
    Connection = MSConnection1
    SQL.Strings = (
      
        'SELECT PersonID, Vorname, Name,KategorieID FROM Kontakt WHERE Is' +
        'Archived = 0')
    Active = True
    Left = 304
    Top = 40
  end
  object MSConnection1: TMSConnection
    Database = 'Kontaktdaten'
    Username = 'sa'
    Server = 'PC-SASA'
    Connected = True
    Left = 376
    Top = 56
    EncryptedPassword = '9EFF9CFF8DFF96FF9DFF9EFFCFFFC7FFDEFF'
  end
  object MSDataSource1: TMSDataSource
    DataSet = MSQueryKAuswahl
    Left = 472
    Top = 56
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    MasterSource = MSDataSource1
    PacketRecords = 0
    Params = <>
    Left = 336
    Top = 224
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 408
    Top = 224
  end
end
