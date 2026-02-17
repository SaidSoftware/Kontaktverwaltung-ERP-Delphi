object TKontaktQ: TTKontaktQ
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Kontaktqualit'#228't [Archivzustand: Aktuell]'
  ClientHeight = 619
  ClientWidth = 997
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
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object PanelAdmin: TPanel
    Left = 0
    Top = 38
    Width = 997
    Height = 581
    Align = alClient
    Color = clIvory
    ParentBackground = False
    TabOrder = 0
    object dxLayoutControl1: TdxLayoutControl
      Left = 1
      Top = 1
      Width = 995
      Height = 579
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      object ImageChart: TImage
        Left = 27
        Top = 58
        Width = 773
        Height = 485
        Transparent = True
      end
      object cxTextEditVoll: TcxTextEdit
        Left = 844
        Top = 58
        Hint = 'Klicken Sie hier, um die Tabelle zu sehen'
        TabStop = False
        ParentShowHint = False
        Properties.ReadOnly = True
        Properties.OnChange = cxTextEditVollPropertiesChange
        ShowHint = True
        Style.HotTrack = False
        Style.ReadOnly = True
        Style.TransparentBorder = False
        TabOrder = 0
        Text = 'Vollst'#228'ndig '
        OnClick = cxTextEditVollClick
        Width = 124
      end
      object cxTextEditUnvoll: TcxTextEdit
        Left = 844
        Top = 121
        Hint = 'Klicken Sie hier, um die Tabelle zu sehen'
        TabStop = False
        ParentShowHint = False
        Properties.ReadOnly = True
        ShowHint = True
        Style.HotTrack = False
        Style.ReadOnly = True
        Style.TransparentBorder = False
        TabOrder = 2
        Text = 'Unvollst'#228'ndig '
        OnClick = cxTextEditUnvollClick
        Width = 124
      end
      object ColorBoxVoll: TColorBox
        Left = 844
        Top = 92
        Width = 124
        Height = 22
        Hint = 'Vollst'#228'ndig Farbe'
        Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames, cbCustomColors]
        TabOrder = 1
      end
      object ColorBoxUnVoll: TColorBox
        Left = 844
        Top = 155
        Width = 124
        Height = 22
        Hint = 'unvollst'#228'ndig Farbe'
        Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbPrettyNames]
        TabOrder = 3
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup3
        AlignHorz = ahCenter
        LayoutLookAndFeel = Papierkorb.Standart
        Control = ImageChart
        ControlOptions.OriginalHeight = 485
        ControlOptions.OriginalWidth = 773
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'New Group'
        LayoutLookAndFeel = Papierkorb.Standart
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignHorz = ahLeft
        Control = cxTextEditVoll
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 124
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup4: TdxLayoutGroup
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        ShowBorder = False
        Index = 0
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        AlignVert = avTop
        Control = cxTextEditUnvoll
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 124
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        Control = ColorBoxVoll
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 93
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        AlignVert = avTop
        Control = ColorBoxUnVoll
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 124
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahRight
        CaptionOptions.Text = 'Optionen'
        LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
        Index = 0
      end
      object dxLayoutGroup3: TdxLayoutGroup
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'Diagramm'
        LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
        LayoutDirection = ldHorizontal
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
    ImageOptions.Images = Papierkorb.cxImageListAll
    ImageOptions.LargeImages = Papierkorb.cxImageListAll
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 721
    Top = 1
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
      FloatLeft = 835
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      Images = Papierkorb.cxImageListAll
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonAnpassen'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButtonArten'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButDevEx'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButAktualisieren'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButExport'
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
    object dxBarLargeButtonAnpassen: TdxBarLargeButton
      Caption = 'Anpassen'
      Category = 0
      Hint = 'Anpassen'
      Visible = ivAlways
      OnClick = dxBarLargeButtonAnpassenClick
      AutoGrayScale = False
      LargeImageIndex = 5
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButtonArten: TdxBarLargeButton
      Caption = 'Charttypen'
      Category = 0
      Hint = 'Charttypen'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxRibbonDropDownGalleryChartTypen
      AutoGrayScale = False
      LargeImageIndex = 8
      SyncImageIndex = False
      ImageIndex = 8
    end
    object dxBarLargeButDiagramm: TdxBarLargeButton
      Caption = 'Diagramm'
      Category = 0
      Hint = 'Diagramm'
      Visible = ivAlways
      OnClick = dxBarLargeButDiagrammClick
      LargeImageIndex = 8
      SyncImageIndex = False
      ImageIndex = 11
    end
    object dxBarLargeButColumn: TdxBarLargeButton
      Caption = 'Column'
      Category = 0
      Hint = 'Column'
      Visible = ivAlways
      OnClick = dxBarLargeButColumnClick
      SyncImageIndex = False
      ImageIndex = 9
    end
    object dxBarLargeButBar: TdxBarLargeButton
      Caption = 'Bar'
      Category = 0
      Hint = 'Bar'
      Visible = ivAlways
      OnClick = dxBarLargeButBarClick
      SyncImageIndex = False
      ImageIndex = 10
    end
    object dxBarLargeButDevEx: TdxBarLargeButton
      Caption = 'Mehr Charts ansehen '
      Category = 0
      Hint = 'Mehr Charts ansehen '
      Visible = ivAlways
      OnClick = dxBarLargeButDevExClick
      AutoGrayScale = False
      LargeImageIndex = 11
      SyncImageIndex = False
      ImageIndex = 11
    end
    object dxBarLargeButAktualisieren: TdxBarLargeButton
      Caption = 'Aktualisieren'
      Category = 0
      Hint = 'Aktualisieren'
      Visible = ivAlways
      OnClick = dxBarLargeButAktualisierenClick
      AutoGrayScale = False
      LargeImageIndex = 14
      SyncImageIndex = False
      ImageIndex = 14
    end
    object dxBarLargeButExport: TdxBarLargeButton
      Caption = 'Exportieren'
      Category = 0
      Hint = 'Exportieren'
      Visible = ivAlways
      OnClick = dxBarLargeButExportClick
      AutoGrayScale = False
      LargeImageIndex = 15
    end
  end
  object MSQuery1: TMSQuery
    Connection = StartListe.MyConnection
    Left = 681
    Top = 65535
  end
  object dxRibbonDropDownGalleryChartTypen: TdxRibbonDropDownGallery
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarLargeButBar'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButColumn'
      end
      item
        Visible = True
        ItemName = 'dxBarLargeButDiagramm'
      end>
    UseOwnFont = False
    Left = 705
    Top = 55
    PixelsPerInch = 96
  end
  object SaveDialog1: TSaveDialog
    Left = 89
    Top = 247
  end
  object SavePictureDialog1: TSavePictureDialog
    Left = 89
    Top = 303
  end
end
