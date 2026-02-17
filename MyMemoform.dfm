object MemoForm: TMemoForm
  Left = 0
  Top = 0
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Memo'
  ClientHeight = 557
  ClientWidth = 1096
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
    0023000000330000003300000033000000330000003300000033000000330000
    0033000000330000003300000033000000330000003300000033000000233A60
    88C03E6691FF3D6690FF3E6690FF3E6691FF3E6792FF3E6893FF3E6894FF3E68
    94FF3E6893FF3E6792FF3E6691FF3E6690FF3D6690FF3E6691FF3A6088C03E68
    93FF7BB2E1FF66A4D7FF67A4D7FF66A4D9FF5088B6FF497FABFF497FACFF497F
    ACFF497FABFF5088B6FF66A4D9FF67A4D7FF66A4D7FF7BB2E1FF3E6893FF3D69
    94FF90BCDDFF5A96C7FF5C97C8FF5A97CAFFCEC3B9FFD5C7BBFFD4C7BBFFD4C7
    BBFFD5C7BBFFC5BDB9FF5A97CAFF5D98C8FF5A96C7FF90BCDDFF3D6994FF3C6A
    96FFA9C8E0FF518BBBFF548DBCFF538DBDFF4E8BBDFF4989BDFF4788BCFF4888
    BCFF4A89BDFF4F8BBDFF548DBDFF548DBCFF518BBBFFA9C8E0FF3C6A96FF3D6C
    99FFC7DAE9FF4781B1FF4A83B1FF4982B1FF4580B0FF98BAD6FF95B9D5FF95B9
    D5FF98BAD6FF4580B0FF4982B1FF4A83B1FF4781B1FFC7DAE9FF3D6C99FF4071
    9DFF9CBBD5FF96B8D6FF94B6D2FF91B3CFFFA2BBCDFFA49E9AFFA19D99FFA19D
    99FFA49E9AFFA2BBCDFF91B3CFFF94B6D2FF96B8D6FF9CBBD5FF40719DFF4475
    A1AC3B74A6FF744200FFA5A4A5FF9C9796FFC2C0BEFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFC2C0BEFF9C9796FFA5A4A5FF744200FF3B74A6FF4475A1AC4376
    A5003B78AFA4C58000FFFFFFFFFFF9F9F9FFF7F6F5FFF4F4F3FFF3F3F2FFF3F3
    F2FFF4F4F3FFF7F6F5FFF9F9F9FFFFFFFFFFC58000FF3B78AFA44376A5003975
    B0003276B800BE7C00FFFFFFFFFFE9E9E9FFE9E8E7FFE9E8E7FFE9E8E7FFE9E8
    E7FFE9E8E7FFE9E8E7FFE9E9E9FFFFFFFFFFBE7C00FF3276B8003975B000C789
    1200C3861100B87B04FFFFFFFFFFDDDDDEFFDFDDDDFFDFDEDDFFDFDEDDFFDFDE
    DDFFDFDEDDFFDFDDDDFFDDDDDEFFFFFFFFFFB87B04FFC3861100C7891200BD87
    1D00BB851A00B57B08FFFFFFFFFFD2D2D3FFD3D3D2FFD3D3D3FFD3D3D2FFD3D3
    D2FFD3D3D2FFD3D3D2FFD2D2D2FFFFFFFFFFB57B08FFBB851A00BD871D00BB87
    1F00BA851C00B57C0BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB57C0AFFBA851C00BB871F00BB87
    1F00BA861C00B67F10FFF6DDB8FFD18912FFD3901DFFD69527FFD9992FFFDB9D
    37FFDDA140FFE0A649FFE2AB52FFF5DCB5FFB67F10FFBA861C00BB871F00BB87
    1F00BB861D00B88216FFEFD09EFFEDCE9BFFECCE9BFFECCE9BFFECCD9BFFECCD
    9AFFECCD99FFECCD98FFECCC98FFEFCF9DFFB88216FFBB861D00BB871F00BB87
    1F00BB871F00BA851CB0B88217FFB78115FFB68115FFB68115FFB68115FFB681
    15FFB68114FFB68114FFB68114FFB88217FFBA851CB0BB871F00BB871F000000
    0000000000000000000000000000000000000000000000000000000000008001
    0000C0030000C0030000C0030000C0030000C0030000C0030000C0030000}
  ParentBiDiMode = False
  Position = poMainFormCenter
  Visible = True
  TextHeight = 15
  object dxPanelMemoform: TdxPanel
    Left = 0
    Top = 0
    Width = 1096
    Height = 557
    Align = alClient
    TabOrder = 0
    object dxLayoutControlMemo: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 1094
      Height = 555
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      object cxMemoKomponent: TcxMemo
        Left = 27
        Top = 58
        Lines.Strings = (
          'cxMemoKomponent')
        Properties.ScrollBars = ssVertical
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 0
        Height = 434
        Width = 1040
      end
      object cxButtonSave: TcxButton
        Left = 984
        Top = 518
        Width = 98
        Height = 25
        Caption = 'Fertig'
        TabOrder = 1
        OnClick = cxButtonSaveClick
      end
      object dxLayoutControlMemoGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutGroupMemo: TdxLayoutGroup
        Parent = dxLayoutControlMemoGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Memo'
        Index = 0
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroupMemo
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxMemoKomponent
        ControlOptions.OriginalHeight = 89
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutControlMemoGroup_Root
        AlignHorz = ahRight
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = cxButtonSave
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 98
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
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 544
    Top = 24
    PixelsPerInch = 96
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
      Images = Papierkorb.cxImageListStartlist
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonSave'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonZuruecksetzen'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = True
    end
    object dxBarLargeButtonSave: TdxBarLargeButton
      Caption = 'Speichern und schlie'#223'en'
      Category = 0
      Hint = 'Speichern und schlie'#223'en'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 31
      SyncImageIndex = False
      ImageIndex = 31
    end
    object dxBarLargeButtonZuruecksetzen: TdxBarLargeButton
      Caption = 'Zur'#252'cksetzen'
      Category = 0
      Hint = 'Zur'#252'cksetzen'
      Visible = ivAlways
      OnClick = dxBarLargeButtonZuruecksetzenClick
      AutoGrayScale = False
      LargeImageIndex = 12
      SyncImageIndex = False
      ImageIndex = 12
    end
  end
  object MSQueryMemo: TMSQuery
    Left = 552
    Top = 198
  end
end
