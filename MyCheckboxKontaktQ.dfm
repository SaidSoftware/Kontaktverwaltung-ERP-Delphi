object KontatkQZustand: TKontatkQZustand
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'KontaktQZustand'
  ClientHeight = 481
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000001000000220000
    0033000000330000003300000033000000220000000300000000000000000000
    0030000000330000003300000033000000330000003300110939007E43B90089
    48FF008847FF008847FF008948FF007E44BA001E113D00000006C3871D00E7B7
    75F2E9B772FFE9B570FFECB671FFF8B975FFD6B370FF028948FF04B478FF07DC
    A0FF03E0A4FF03E0A3FF05DC9FFF01B679FF008B4EFF3337124B00000003E9B7
    72FFFFEECFFFFFEAC7FFFFEBC9FFF4E3BFFF008847FF0ECB9BFF06D5A3FF00D1
    9CFF00D19BFF00D09BFF00D29CFF60ECD2FF00884AFFC98215FF3727082DE9B5
    70FFFFEBCBFFFFF4E5FFFFF8EAFF53A66CFF04AB76FF0FCFA7FF00C79BFF00C7
    9BFF00C69AFF00C79BFF64E4CFFF008140FFFFC77DFFDDA953FFA87818BAE9B5
    70FFFFEACDFFFFF3E2FFFFF8E7FF00833BFF29CCACFF00BF98FF00BE96FF00BE
    96FF00BF98FF6EE1D4FF008240FFFFB75FFFF3B761FFF1C885FFB78217FFE9B5
    70FFFFECD1FFFFDEB2FFFFE4B5FF60C08EFF93EDD7FF72E1C4FF74E2C4FF74E1
    C5FF71E1CDFF00823BFFFFB050FFEFB054FFE8AF53FFF0C681FFB68117FFE9B5
    70FFFFECD4FFFFDCACFFFFE6ACFF0F1FC3FF8A91FFFF5E67FFFF6068FFFF5D66
    FFFF858CFFFFFFC670FFEBA843FFE5A947FFE3A746FFEEC37EFFB68217FFE9B5
    6FFFFFEDD6FFFFF0D9FFFFFBD9FF1F30BEFF93A0FDFF5166F8FF4F63F7FF4A5F
    F9FF8294FFFFF9C972FFE3A234FFE1A23AFFE1A237FFEEC787FFB78218FFE9B5
    6FFFFFF0DCFFFFEED7FFFFF7D7FF716CB4FF5869DEFF6F81F6FF3E57F0FF3A54
    F1FF869BFFFFF7CA78FFDF9924FFDF9A29FFE8B661FFD4A958FFB7831AAAE9B5
    6FFFFFF1E2FFFFD3A0FFFFD8A0FFF2E1D2FF1F32C0FF8796F0FF6A7FF3FF2F4A
    ECFF8DA0FFFFF8CD80FFDD9418FFE7B25BFFE8C384FFB58115FFB9851C0CE9B5
    6EFFFFF4E8FFFFD09BFFFFD29BFFFFF3D5FFE3D4CFFF2637C1FF5C6DDCFF9BA9
    F8FFB1C1FFFFFFE1AAFFF0CD92FFD2A754FFB68116FFD09D4641B9841A00E9B5
    6EFFFFF6ECFFFFE9CFFFFFEAD2FFFFCF97FFFFD496FFF2DDCEFF7073C5FF1C2E
    C0FF0520CBFFB77A00FFB57E0CFFD2AB62FFE9B670FFCC983E00B5801300E9B5
    6DFFFFFAF3FFFFE6CBFFFFE7CDFFFFCA91FFFFCB91FFFFECCDFFFFF1CDFFFFD6
    8FFFFFD693FFFFF1D7FFFFEED8FFFFFFFDFFECB874FFEEBD7D00F0BF8000E9B6
    70FFFFFFFFFFFFFCF9FFFFFCF9FFFFFDFBFFFFFDFBFFFFFDFAFFFFFEF9FFFFFF
    FBFFFFFFFCFFFFFEFBFFFFFDFBFFFFFFFFFFEAB671FFEBBA7800ECBB7900EAB8
    75EFE9B670FFE9B46DFFE9B46DFFE9B46DFFE9B46DFFE9B46DFFE9B46DFFE9B4
    6DFFE9B46DFFE9B46DFFE9B46DFFE9B670FFEAB875EFEBBA7800EBBA7800FC03
    0000000100000000000000000000000000000000000000000000000000000000
    000000000000000000000001000000030000000300000003000000030000}
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object dxPanelDatenq: TdxPanel
    Left = 0
    Top = 38
    Width = 447
    Height = 443
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 466
    ExplicitHeight = 455
    object dxLayoutControlCheck: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 445
      Height = 441
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      CustomizeFormTabbedView = True
      ExplicitWidth = 464
      ExplicitHeight = 453
      object cxCheckBoxGeburtsdatum: TcxCheckBox
        Left = 27
        Top = 240
        Caption = 'Geburtsdatum'
        Enabled = False
        State = cbsChecked
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 5
      end
      object cxCheckBoxName: TcxCheckBox
        Left = 27
        Top = 203
        Caption = 'Name'
        Enabled = False
        State = cbsChecked
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 4
      end
      object cxCheckBoxVorname: TcxCheckBox
        Left = 27
        Top = 166
        Caption = 'Vorname'
        Enabled = False
        State = cbsChecked
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 3
      end
      object cxCheckBoxTitel: TcxCheckBox
        Left = 27
        Top = 129
        Caption = 'Titel'
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 2
      end
      object cxCheckBoxAnrede: TcxCheckBox
        Left = 27
        Top = 92
        Caption = 'Anrede'
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
      end
      object cxCheckBoxPLZ: TcxCheckBox
        Left = 185
        Top = 268
        Caption = 'PLZ'
        Enabled = False
        State = cbsChecked
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 9
      end
      object cxCheckBoxOrt: TcxCheckBox
        Left = 185
        Top = 305
        Caption = 'Ort'
        Enabled = False
        State = cbsChecked
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 10
      end
      object cxCheckBoxStrasse: TcxCheckBox
        Left = 185
        Top = 342
        Caption = 'Stra'#223'e'
        Enabled = False
        State = cbsChecked
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 11
      end
      object cxCheckBoxHausnummer: TcxCheckBox
        Left = 185
        Top = 379
        Caption = 'Hausnummer'
        Enabled = False
        State = cbsChecked
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 12
      end
      object cxCheckBoxNummer1: TcxCheckBox
        Left = 185
        Top = 92
        Caption = 'Nummer 1'
        Enabled = False
        State = cbsChecked
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 6
      end
      object cxCheckBoxNummer2: TcxCheckBox
        Left = 185
        Top = 129
        Caption = 'Nummer 2'
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 7
      end
      object cxCheckBoxNummer3: TcxCheckBox
        Left = 185
        Top = 166
        Caption = 'Nummer 3'
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 8
      end
      object cxCheckBoxEmail1: TcxCheckBox
        Left = 320
        Top = 92
        Caption = 'Email 1'
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 13
      end
      object cxCheckBoxEmail2: TcxCheckBox
        Left = 320
        Top = 129
        Caption = 'Email 2'
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 14
      end
      object cxCheckBoxEmail3: TcxCheckBox
        Left = 320
        Top = 166
        Caption = 'Email 3'
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 15
      end
      object cxCheckBoxNotizen: TcxCheckBox
        Left = 320
        Top = 268
        Caption = 'Notizen'
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 16
      end
      object cxCheckBoxBild: TcxCheckBox
        Left = 320
        Top = 305
        Caption = 'Bild'
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 17
      end
      object cxCheckBoxDatei: TcxCheckBox
        Left = 320
        Top = 342
        Caption = 'Datei'
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 18
      end
      object cxTextEditZustand: TcxTextEdit
        Left = 12
        Top = 12
        TabStop = False
        Properties.ReadOnly = True
        Properties.OnChange = cxTextEditComboBoxZustandPropertiesChange
        Style.HotTrack = False
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = False
        TabOrder = 0
        Text = 'Vollst'#228'ndig'
        Width = 420
      end
      object dxLayoutControlCheckGroup_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avTop
        LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = cxCheckBoxGeburtsdatum
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 89
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 4
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Visible = False
        Control = cxCheckBoxName
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 3
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Visible = False
        Control = cxCheckBoxVorname
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 2
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Visible = False
        Control = cxCheckBoxTitel
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutGroup1
        CaptionOptions.Visible = False
        Control = cxCheckBoxAnrede
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Kontaktdaten'
        ItemIndex = 4
        Index = 0
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxPLZ
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 45
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxOrt
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 42
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxStrasse
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 58
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 2
      end
      object dxLayoutItem9: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxHausnummer
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 98
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 3
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxNummer1
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutAutoCreatedGroup1
        CaptionOptions.Text = 'Adresse'
        Index = 1
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxNummer2
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxNummer3
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutGroup3: TdxLayoutGroup
        Parent = dxLayoutAutoCreatedGroup1
        CaptionOptions.Text = 'Telefon'
        Index = 0
      end
      object dxLayoutItem13: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxEmail1
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 63
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem14: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxEmail2
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 63
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem15: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxEmail3
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 63
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutGroup4: TdxLayoutGroup
        Parent = dxLayoutAutoCreatedGroup2
        AlignVert = avTop
        CaptionOptions.Text = 'Emailadresse'
        ItemIndex = 1
        Index = 0
      end
      object dxLayoutItem16: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxNotizen
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 66
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem17: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxBild
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 45
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem18: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignHorz = ahLeft
        CaptionOptions.Visible = False
        Control = cxCheckBoxDatei
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 52
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutGroup5: TdxLayoutGroup
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Notizen,Bild,Datei'
        Index = 1
      end
      object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutControlCheckGroup_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        Index = 0
      end
      object dxLayoutGroup8: TdxLayoutGroup
        Parent = dxLayoutAutoCreatedGroup4
        CaptionOptions.Text = 'New Group'
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahClient
        AlignVert = avClient
        Index = 1
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutAutoCreatedGroup5
        AlignHorz = ahClient
        AlignVert = avClient
        Index = 2
      end
      object dxLayoutItem19: TdxLayoutItem
        Parent = dxLayoutGroup8
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxTextEditZustand
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 413
        ControlOptions.ShowBorder = False
        Index = 0
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 576
    Top = 8
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
      FloatLeft = 652
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonSave'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonZurueck'
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
    object dxBarLargeButtonSave: TdxBarLargeButton
      Caption = 'Speichern '
      Category = 0
      Hint = 'Speichern '
      Visible = ivAlways
      OnClick = dxBarLargeButtonSaveClick
      AutoGrayScale = False
      LargeImageIndex = 40
    end
    object dxBarLargeButtonZurueck: TdxBarLargeButton
      Caption = 'Zur'#252'cksetzen'
      Category = 0
      Hint = 'Zur'#252'cksetzen'
      Visible = ivAlways
      OnClick = dxBarLargeButtonZurueckClick
      AutoGrayScale = False
      LargeImageIndex = 12
    end
    object dxBarLargeButtonSchliessen: TdxBarLargeButton
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 2
    end
  end
  object MSQuery1: TMSQuery
    Left = 488
    Top = 6
  end
end
