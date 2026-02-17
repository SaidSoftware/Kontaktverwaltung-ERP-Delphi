object MyReport: TMyReport
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Report'
  ClientHeight = 664
  ClientWidth = 1100
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000022000000330000
    0033000000220000000000000000000000000000000000000000000000000000
    00230000003300000033000000330000003300000033AC742EB9BF7E2FFFBF7E
    2FFFAC742EB9000000330000003300000033000000330000003300000023AD75
    30C0BF7D2EFFC07D2BFFC17C2AFFC17D2BFFC17C2AFFC37B25FF7BA0C5FF7BA0
    C5FFC37B25FFC07C2AFFC07C2AFFC07C2AFFC07C2BFFBF7D2EFFAD7530C0BE7D
    2EFF729DC4FF7499BAFF7498B8FF7699B9FF7699B9FF7498B6FF8DA2B6FF8EA2
    B6FF7498B6FF7197B7FF6E95B7FF6D94B6FF7096B8FF709BC3FFBE7D2DFFBE7A
    29FFA0C4E4FFC4E8FEFFB1D8F1FF9BC7E3FF8FB9D5FFA8C9DBFFD3E5ECFF95BB
    D4FFA9C8DDFFC0D7E6FFFDFFFFFFFFFFFFFFF8FFFFFFA6C8E6FFBD7A29FFBD7A
    28FF9EC2DFFFC2E4FAFFAED5EDFF9CC8E3FF95C3DDFFBADBECFFE4F7FBFF92BF
    DCFFB7D6E8FFD7E9F4FFF7FCFFFFFFFFFFFFF3FFFFFFA1C3DFFFBC7927FFBD79
    28FFA1C3E1FFB2C1CBFF9CAEB9FF899DAAFF95C4DFFFB9DBECFFE3F6FAFF91BE
    DBFFB7D6E9FFD8EBF6FFBFC0C1FFCBCACAFFC8CED2FFA4C6E1FFBC7827FFBD79
    28FFA4C6E3FFBEDCF0FFAACDE3FF97BFD9FF8BA0ADFFA9B7BDFFE3F7FBFF92C0
    DDFF95A4ACFFACB3B9FFEDF2F7FFF7FAFDFFEAF6FFFFA8C9E4FFBC7827FFBD79
    28FFA6C8E4FFB2C1CCFF9CAFBBFF8A9FACFF93BED6FFB5D3E3FFE3F7FCFF92C0
    DEFFB2CDE0FFCFE3F1FFAFB2B8FFB9BBC2FFBABFC8FFABCBE9FFBB7828FFBD79
    27FFAACBE5FFBDDCF0FFAACDE3FF97BFDAFF8BA1AEFFA9B8BFFFE3F7FDFF92C1
    E1FF8895A1FF9AA7B4FFEDBD60FFF6C567FFFFD16CFFADCEEFFFBB7828FFBC79
    27FFADCCE6FFB1C1CBFF9CAFBBFF8A9FACFF93BED6FFB5D3E3FFE3F7FDFF90C1
    E5FFDDAA4DFFE5B45BFFEBC173FFF7DAA1FFEDCB8BFFAFD0F0FFBB7828FFBC78
    27FFB0CEE8FFBDDCF0FFAACDE3FF97BFDAFF8BA1AEFFA9B8BFFFE3F7FDFF91C1
    E5FFC5A367FFE3C68FFFF2D7A4FFFBE1AEFFE7C992FFB3D3F0FFBB7828FFBC78
    27FFB2D1E9FFB0C0CBFF9CAFBAFF899EACFF93BED6FFB5D3E3FFE3F7FDFF92C1
    E3FFC1A16AFF38E8FFFFBCB2A8FFC2BBB1FFC3BFB4FFB7D5EFFFBB7828FFBB78
    28FFB6D4EDFFBCDBF0FFA9CCE2FF96BED8FF8AA1AEFFA9B8BFFFE3F8FDFF93C1
    E1FF98948AFF89B3C0FFECEDF1FFF3F5F7FFE5F2FAFFB9D6EEFFBB7828FFBB79
    2AEFBABDBBFFB2CDE0FFA9C5D7FF9DC4DBFF95BAD1FFB6D5E5FFE0F5FAFF95C2
    DEFFB0CADAFFC6D4DEFFE7EEF4FFD1DBE3FFC9DAE7FFBEC0BCFFBA7929EFBB7A
    2A00BABFBD00B2CEE200A6B4C133A6B4C155A7B6C1F8A6B5C2FFA4B4C0B4A5B5
    C0DFA7B5C2FFA3B4C1CFA0B1BF57A0B1BF33CCDDEA00BFC1BE00BA792A00FC3F
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000E0070000}
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object dxPanelABuch: TdxPanel
    Left = 0
    Top = 0
    Width = 1100
    Height = 664
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 626
    object dxLayoutControlAbuch: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 1098
      Height = 662
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      ExplicitHeight = 624
      object cxTextEditParameter: TcxTextEdit
        Left = 713
        Top = 111
        TabStop = False
        AutoSize = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 4
        Height = 27
        Width = 220
      end
      object cxTextEditBeschreibung: TcxTextEdit
        Left = 713
        Top = 77
        TabStop = False
        AutoSize = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 3
        Height = 27
        Width = 220
      end
      object cxTextEditFormular: TcxTextEdit
        Left = 428
        Top = 111
        TabStop = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 2
        Width = 200
      end
      object cxTextEditModul: TcxTextEdit
        Left = 428
        Top = 77
        TabStop = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        Style.ReadOnly = True
        Style.TransparentBorder = False
        TabOrder = 1
        Width = 200
      end
      object cxCheckBoxdrucker: TcxCheckBox
        Left = 327
        Top = 274
        Caption = 'Drucker'
        Enabled = False
        Properties.ReadOnly = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 8
        Transparent = True
      end
      object cxCheckBoxMicrosoftWord: TcxCheckBox
        Left = 327
        Top = 311
        Caption = 'Microsoft Word'
        Enabled = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 9
        Transparent = True
      end
      object cxCheckBoxMicrosoftExcel: TcxCheckBox
        Left = 327
        Top = 348
        Caption = 'Microsoft Excel'
        Enabled = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 10
        Transparent = True
      end
      object cxCheckBoxBildschirm: TcxCheckBox
        Left = 455
        Top = 274
        AutoSize = False
        Caption = 'Bildschirm'
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 11
        Transparent = True
        Height = 30
        Width = 96
      end
      object cxCheckBoxPDF: TcxCheckBox
        Left = 455
        Top = 311
        Caption = 'PDF'
        Enabled = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 12
        Transparent = True
      end
      object cxCheckBoxTestdruck: TcxCheckBox
        Left = 455
        Top = 348
        Caption = 'Testdruck'
        Enabled = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 13
        Transparent = True
      end
      object cxComboBoxVorlage: TcxComboBox
        Left = 428
        Top = 450
        Properties.OnChange = cxComboBoxVorlagePropertiesChange
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 14
        Width = 200
      end
      object cxImage1: TcxImage
        Left = 996
        Top = 77
        Picture.Data = {
          0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
          00300000003008060000005702F987000000097048597300000B1300000B1301
          009A9C180000013649444154789CEDD9416AC2401406E06CBA9A9354ADB310BD
          82888BFEDEC4A549DCF600455C59C1B318C57D6ADC48D1A2C403F40053822048
          8BA5C9F325A3EF87B7CAE67DCC9B1986388E4422B9DD740EA68DD8EC111B93B5
          EA6F9B193BE039363B8AE6932AF5437E04889A4FAAECBF1F11E3EDC25A40991B
          014240C55FF223400878F296FC081003D811200454BD881F014280F6227E0408
          01B597F59F88C6E47356584073F1C58F0021E03FE508E0D601AA37320FDD41A6
          52EE2847806B3900B68F10EE790FA80BA3031BF6402100B07D84603B40C93D30
          907BE0BE014AEE01F3A31AAF9BD3432779DC3CF6C3E06A806B9476576780E475
          2600140450ED45F354E35514804EBB3A02882F9F34B5E1875D80DF1A8100987E
          31E5B5022D4A043B803A699BD402208A7657C159237E38CDFA4DE2E49C6FA4E8
          A18636EF0E380000000049454E44AE426082}
        Style.Edges = []
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 5
        Transparent = True
        OnDblClick = cxImage1DblClick
        Height = 61
        Width = 60
      end
      object cxLabel1: TcxLabel
        Left = 986
        Top = 145
        Caption = 'Hauptreport'
        Style.HotTrack = False
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = False
        Transparent = True
      end
      object cxComboBoxEmailEmpfaenger: TcxComboBox
        Left = 428
        Top = 175
        Enabled = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 7
        OnClick = cxComboBoxEmailEmpfaengerClick
        Width = 628
      end
      object cxTextEditExemplarecount: TcxTextEdit
        Left = 713
        Top = 450
        AutoSize = False
        Enabled = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 15
        Height = 27
        Width = 121
      end
      object cxComboBoxAusgabedrucker: TcxComboBox
        Left = 428
        Top = 549
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 16
        Width = 628
      end
      object cxButtonAbbrechen: TcxButton
        Left = 996
        Top = 602
        Width = 75
        Height = 25
        Caption = 'Abbrechen'
        TabOrder = 19
        OnClick = cxButtonAbbrechenClick
      end
      object cxButtonDrucken: TcxButton
        Left = 914
        Top = 602
        Width = 75
        Height = 25
        Caption = 'Drucken'
        TabOrder = 18
        OnClick = cxButtonDruckenClick
      end
      object cxButtonDokumente: TcxButton
        Left = 832
        Top = 602
        Width = 75
        Height = 25
        Caption = 'Dokumente'
        TabOrder = 17
        OnClick = cxButtonDokumenteClick
      end
      object dxNavBar1: TdxNavBar
        Left = 13
        Top = 13
        Width = 276
        Height = 636
        Color = 16448250
        ActiveGroupIndex = 0
        TabOrder = 0
        View = 21
        ViewStyle.SkinName = 'WXI'
        ViewStyle.SkinNameAssigned = True
        OptionsImage.LargeImages = Papierkorb.cxImageList32
        OptionsImage.SmallImages = Papierkorb.cxImageListAll
        object dxNavBar1Druck: TdxNavBarGroup
          Caption = 'Druck'
          LargeImageIndex = 13
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          UseSmallImages = False
          Links = <
            item
              Item = nbDruck
            end>
        end
        object dxNavBar1Email: TdxNavBarGroup
          Caption = 'dxNavBar1Email'
          LargeImageIndex = 36
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          UseSmallImages = False
          Links = <
            item
              Item = dxNavBar1Item2
            end
            item
              Item = dxNavBar1Item4
            end
            item
              Item = dxNavBar1Item3
            end>
        end
        object nbDruck: TdxNavBarItem
          Caption = 'Report'
          SmallImageIndex = 17
          OnClick = nbDruckClick
        end
        object dxNavBar1Item2: TdxNavBarItem
          Caption = 'dxNavBar1Item2'
        end
        object dxNavBar1Item3: TdxNavBarItem
          Caption = 'dxNavBar1Item3'
        end
        object dxNavBar1Item4: TdxNavBarItem
          Caption = 'dxNavBar1Item4'
        end
      end
      object dxLayoutControlAbuchGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahLeft
        AlignVert = avBottom
        CaptionOptions.Text = 'Parameter'
        Control = cxTextEditParameter
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 220
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup5
        CaptionOptions.Text = 'Beschreibung'
        Control = cxTextEditBeschreibung
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 220
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup7
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Formular'
        Control = cxTextEditFormular
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 200
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup7
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Modul'
        Control = cxTextEditModul
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 200
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = cxCheckBoxdrucker
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        CaptionOptions.Visible = False
        Control = cxCheckBoxMicrosoftWord
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 96
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        CaptionOptions.Visible = False
        Control = cxCheckBoxMicrosoftExcel
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 96
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 2
      end
      object dxLayoutItem9: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = cxCheckBoxBildschirm
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 96
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        CaptionOptions.Visible = False
        Control = cxCheckBoxPDF
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 96
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup2
        CaptionOptions.Visible = False
        Control = cxCheckBoxTestdruck
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 96
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 2
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutGroupBericht
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Berichtsoptionen'
        Index = 0
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutGroupBericht
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Ausgabeziel'
        ButtonOptions.ShowExpandButton = True
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Reports (.rpt)'
        Control = cxComboBoxVorlage
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 200
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        AlignVert = avClient
        Index = 1
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        AlignVert = avClient
        Index = 0
      end
      object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahLeft
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup6
        AlignHorz = ahRight
        AlignVert = avBottom
        Control = cxImage1
        ControlOptions.OriginalHeight = 61
        ControlOptions.OriginalWidth = 60
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup1
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahRight
        AlignVert = avTop
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = cxLabel1
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 70
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem14: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'E-Mail Empf'#228'nger'
        Control = cxComboBoxEmailEmpfaenger
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 2
      end
      object dxLayoutGroup3: TdxLayoutGroup
        Parent = dxLayoutGroupBericht
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Reports'
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        Index = 2
      end
      object dxLayoutItem15: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignVert = avClient
        CaptionOptions.Text = 'Exemplare'
        Control = cxTextEditExemplarecount
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutItem16: TdxLayoutItem
        Parent = dxLayoutGroup4
        CaptionOptions.Text = 'Ausgabedrucker'
        Control = cxComboBoxAusgabedrucker
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup4: TdxLayoutGroup
        Parent = dxLayoutGroupBericht
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Drucker'
        Index = 3
      end
      object dxLayoutItem17: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxButtonAbbrechen
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem18: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = cxButtonDrucken
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroupBericht
        AlignHorz = ahClient
        AlignVert = avTop
        LayoutDirection = ldHorizontal
        Index = 4
      end
      object dxLayoutItem19: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahRight
        CaptionOptions.Visible = False
        Control = cxButtonDokumente
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahLeft
        Index = 0
      end
      object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup4
        Index = 1
      end
      object dxLayoutItem20: TdxLayoutItem
        Parent = dxLayoutControlAbuchGroup_Root
        AlignVert = avClient
        Control = dxNavBar1
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 300
        ControlOptions.OriginalWidth = 276
        Index = 0
      end
      object dxLayoutGroupBericht: TdxLayoutGroup
        Parent = dxLayoutControlAbuchGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        Visible = False
        Index = 1
      end
    end
  end
  object CRBatchMove1: TCRBatchMove
    Left = 536
    Top = 192
  end
  object MSDataSourceReport: TMSDataSource
    Left = 664
    Top = 256
  end
end
