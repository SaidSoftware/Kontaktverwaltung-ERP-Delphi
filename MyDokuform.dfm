object MyFormDoku: TMyFormDoku
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Datei'
  ClientHeight = 316
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0023000000330000003300000033000000330000003300000033000000330000
    0033000000330000003300000033000000330000003300000033000000233A60
    87C03E6690FF3D668FFF3E668FFF3E6690FF3E6791FF3E6892FF3E6892FF3E68
    92FF3E6892FF3E6791FF3E6690FF3E668FFF3D668FFF3E6690FF3A6087C03E68
    92FF7BB2E1FF66A4D7FF67A4D8FF66A4D9FF5088B6FF497FABFF497FACFF497F
    ACFF497FABFF5088B6FF66A4D9FF67A4D8FF66A4D7FF7BB2E1FF3E6892FF3D69
    94FF90BADDFF5A96C7FF5C98C8FF5A97CAFFCEC3B9FFD5C7BBFFD4C7BBFFD4C7
    BBFFD5C7BBFFC5BDB9FF5A97CAFF5D98C8FF5A96C7FF90BADDFF3D6994FF3C6A
    95FFA9C8E0FF518BBBFF548DBCFF538DBDFF4E8BBDFF4989BDFF4788BCFF4888
    BCFF4A89BDFF4F8BBDFF548DBDFF548DBCFF518BBBFFA9C8E0FF3C6A95FF3D6C
    97FFC7D9E9FF4781AFFF4A83B0FF4983B0FF4580AFFF98B9D6FF95B8D6FF95B8
    D6FF98B9D6FF4580AFFF4983B0FF4A83B0FF4781AFFFC7D9E9FF3D6C97FF4071
    9DFF9DBCD3FF9BBBD4FF97B9D3FF91B4D0FFA2BACCFFA09995FF9D9895FF9D98
    95FFA09995FFA2BACCFF91B4D0FF97B9D3FF9BBBD4FF9DBCD3FF40719DFF4575
    A0AC4276A1FF0F2539FF706963FFA4A09DFFBFBDBAFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFBFBDBAFFA4A09DFF706963FF0F2539FF4276A1FF4575A0AC0000
    0000467AA5A73F76A4FFBEBAB3FFFFFFFFFFFAF8F8FFF7F6F6FFF6F5F5FFF6F5
    F5FFF7F6F6FFFAF8F8FFFFFFFFFFBEBAB3FF3F76A4FF467AA5A7000000000000
    0000000000003C75A3A4B9B4AEFFFFFFFFFFF0F0EFFFF0F0EFFFF0F0EFFFF0F0
    EFFFF0F0EFFFF0F0EFFFFFFFFFFFB9B4AEFF3C75A3A400000000000000000000
    00000000000000000000B6B2ADFFFFFFFFFFECEBEBFFEDECECFFEDECECFFECEB
    EBFFEBEAEAFFEBEAEAFFFFFFFFFFB6B2ADFF0000000000000000000000000000
    00000000000000000000B1AFACFFFFFFFFFFE9E8E7FFEAE9E7FFE9E8E7FFF3F2
    F2FFFFFFFFFFFFFFFFFFFFFFFFFFB1AFACFF0000000000000000000000000000
    00000000000000000000AEAEABFFFFFFFFFFE5E4E3FFE6E5E4FFE5E4E3FFFFFF
    FFFFCACAC9FFA4A4A2FFFFFFFFFFAFAFADFF0000000000000000000000000000
    00000000000000000000AEAEACFFFFFFFFFFE0DFDFFFE0DFDFFFE0DEDFFFFFFF
    FFFFA4A4A2FFFFFFFFFFE9E9E9FFB0B0AEAC0000000000000000000000000000
    00000000000000000000AFAFADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFE9E9E9FFAFAFADA7000000000000000000000000000000000000
    00000000000000000000B3B3B1B0B0B0ADFFAEAEACFFAEAEABFFADAEABFFAEAE
    ABFFAFAFADFFB0B0AEAC00000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000008001
    0000C0030000E0070000E0070000E0070000E0070000E00F0000E01F0000}
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object dxPanelDoku: TdxPanel
    Left = 0
    Top = 38
    Width = 639
    Height = 278
    Align = alClient
    TabOrder = 0
    object dxLayoutControlDoku: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 637
      Height = 276
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.Standart
      object cxTextEditFile: TcxTextEdit
        Left = 12
        Top = 67
        TabStop = False
        AutoSize = False
        Properties.ReadOnly = True
        Properties.OnChange = cxTextEditFilePropertiesChange
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
        Height = 45
        Width = 327
      end
      object cxButtonFile: TcxButton
        Left = 12
        Top = 12
        Width = 327
        Height = 48
        Caption = 'Datei ausw'#228'hlen'
        Enabled = False
        TabOrder = 0
        OnClick = cxButtonFileClick
      end
      object cxLabelFile: TcxLabel
        Left = 12
        Top = 119
        AutoSize = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        Properties.WordWrap = True
        Height = 113
        Width = 327
      end
      object cxImageDoku: TcxImage
        Left = 346
        Top = 12
        Cursor = crHandPoint
        TabStop = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 3
        OnDblClick = cxImageDokuDblClick
        Height = 252
        Width = 279
      end
      object dxLayoutControlDokuGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
        Hidden = True
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        Control = cxTextEditFile
        ControlOptions.OriginalHeight = 45
        ControlOptions.OriginalWidth = 327
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxButtonFile
        ControlOptions.OriginalHeight = 48
        ControlOptions.OriginalWidth = 327
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = cxLabelFile
        ControlOptions.OriginalHeight = 113
        ControlOptions.OriginalWidth = 325
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutControlDokuGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.AlignHorz = taRightJustify
        CaptionOptions.AlignVert = tavTop
        Control = cxImageDoku
        ControlOptions.OriginalHeight = 252
        ControlOptions.OriginalWidth = 271
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutControlDokuGroup_Root
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ItemIndex = 2
        ShowBorder = False
        Index = 0
      end
    end
  end
  object dxBarManagerDoku: TdxBarManager
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
    Left = 472
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      38
      0)
    object dxBarManagerDokuBar1: TdxBar
      BorderStyle = bbsNone
      Caption = 'Custom Doku'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 535
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      Images = Papierkorb.cxImageListStartlist
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButSpeichern'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButZuruecksetzen'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButDownload'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarLargeButSpeichern: TdxBarLargeButton
      Caption = 'Speichern und Schlie'#223'en'
      Category = 0
      Hint = 'Speichern und Schlie'#223'en'
      Visible = ivAlways
      OnClick = dxBarLargeButSpeichernClick
      AutoGrayScale = False
      LargeImageIndex = 31
    end
    object dxBarLargeButZuruecksetzen: TdxBarLargeButton
      Caption = 'Zur'#252'cksetzen'
      Category = 0
      Hint = 'Zur'#252'cksetzen'
      Visible = ivNever
      OnClick = dxBarLargeButZuruecksetzenClick
      AutoGrayScale = False
      LargeImageIndex = 12
    end
    object dxBarLargeButSchliessen: TdxBarLargeButton
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = dxBarLargeButSchliessenClick
      AutoGrayScale = False
      LargeImageIndex = 2
    end
    object dxBarLargeButDownload: TdxBarLargeButton
      Caption = 'Exportieren'
      Category = 0
      Hint = 'Exportieren'
      Visible = ivInCustomizing
      OnClick = dxBarLargeButDownloadClick
      AutoGrayScale = False
      LargeImageIndex = 50
    end
  end
end
