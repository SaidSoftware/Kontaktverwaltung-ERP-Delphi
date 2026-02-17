object Anhang: TAnhang
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Anhang'
  ClientHeight = 616
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    0000010020000000000000040000000000000000000000000000000000000000
    0030000000330000003300000033000000330000003300000033000000330000
    003300000033000000330000003300000033000000300000000000000000CBA2
    6AF2CCA066FFCB9F64FFCB9F64FFCB9F64FFCB9F64FFCB9F64FFCB9F64FFCB9F
    64FFCB9F64FFCB9F64FFCBA065FFCCA167FFCCA26AF10000000000000000CCA0
    66FFFFFFF7FFFFFFF1FFFFFFF2FFFFFFF3FFFFFFF3FFFFFFF3FFFFFFF3FFFFFF
    F3FFFFFFF3FFFFFFF3FFFFFFF3FFFFFFFAFFCCA167FF0000003300000023CB9F
    64FFFFFFF0FFD2AB74FFC6985AFFC69859FFC69759FFC69759FFC69758FFC697
    58FFC69758FFC69758FFC69859FFC7995BFFC99D60FFCBA065FFBC9662BFCB9F
    64FFFFFFF0FFC6985AFFFFFFF1FFFFFCEBFFFFFCEAFFFFFBE9FFFFFAE8FFFFFA
    E8FFFFFAE8FFFFFAE8FFFFFBE9FFFFFCEAFFFFFEECFFFFFFF5FFCCA066FFCB9F
    64FFFFFFF0FFC69859FFFFFBE9FFE6CA9FFFF7E4C5FFFFF6DDFFFFF4DBFFFFF4
    DAFFFFF4DAFFFFF4DBFFFFF6DDFFF7E4C5FFE6CA9FFFFFFCEBFFCA9E63FFCCA0
    65FFFFFFF1FFC79859FFFFFAE6FFFFFEF6FFDCB784FFE6C59AFFFFF4DBFFFFF4
    DAFFFFF4DAFFFFF4DAFFE3C498FFDBB683FFFFFEF6FFFFFBE8FFCA9E63FFD6A2
    68FFFFFFF8FFCC995CFFFFF9E7FFFFEFD0FFFFFFFFFFEDBD8CFFE6BD8DFFC797
    58FFC59656FFDEBA88FFDCB884FFFFFFFDFFFFEECEFFFFF9E8FFCA9E63FFA99E
    63FF009256FFDC9C60FFFFFBEAFFFFEFCFFF50AA73FF007F3AFFFBC294FFFFFF
    FFFFFFFFFFFFDCBA86FFFBF6ECFFFFECC9FFFFEAC7FFFFFAE8FFCA9E63FF0089
    47FF00D392FF88AB6DFFFFFFF5FFFFF4D2FF00803CFF00E5A3FF007D38FFFFF6
    DBFFFFF1D2FFFFFFFFFFDBB581FFF2D5A8FFFFE9C3FFFFFAECFFCA9E63FF0088
    47FF00DCA4FF00A160FF007F3AFF00813CFF00813EFF00D9A1FF00D89FFF007B
    35FFFFEFCDFFFFEAC5FFFFFEF7FFDEB883FFFADBB0FFFFFCEFFFCA9E63FF0088
    46FFA7F7E7FF00CE9CFF00CE9CFF00CF9DFF00CE9DFF00CD9BFF00CD9CFF00CF
    9EFF007C36FFFFE8BCFFFFE3B5FFFFF9EAFFE6C089FFFFFEF4FFCA9E63FF008B
    49FC00B686FF61E1CCFFA0F0E3FF9EF0E2FFA2EFE2FF00C59AFF00C59BFF9DF2
    E6FF00803AFFFFFFFFFFFFFFF8FFFFFFF6FFFFFFF8FFFFFFFEFFCCA065FF008D
    4D22008B49FC008845FF008743FF008642FF00833DFF00C09EFFA1EDE6FF0084
    3EFFEAA46BFFD3A166FFCB9E63FFCA9E62FFCA9E63FFCCA065FFCDA46BB00000
    000000000000000000000000000000000000008946FFA6EFEEFF008641FF0000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000008D4CB1008B49FF000000000000
    0000000000000000000000000000000000000000000000000000000000000003
    0000000300000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000F8FF0000F9FF0000}
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object dxPanelAnhang: TdxPanel
    Left = 0
    Top = 38
    Width = 527
    Height = 578
    Align = alClient
    TabOrder = 0
    object dxLayoutControl1: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 525
      Height = 576
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      object dxLayoutControl1Group_Root1: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        Hidden = True
        ShowBorder = False
        Index = -1
      end
    end
  end
  object dxBarManagerAnhang: TdxBarManager
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
    Left = 440
    Top = 8
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      38
      0)
    object dxBarManagerAnhangBar1: TdxBar
      BorderStyle = bbsNone
      Caption = 'Custommain'
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
          ItemName = 'dxBarLargeButtonSenden'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonDownload'
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
    object dxBarLargeButtonSenden: TdxBarLargeButton
      Caption = 'Senden'
      Category = 0
      Hint = 'Senden'
      Visible = ivAlways
      OnClick = dxBarLargeButtonSendenClick
      AutoGrayScale = False
      LargeImageIndex = 57
      SyncImageIndex = False
      ImageIndex = 0
    end
    object dxBarLargeButtonSchliessen: TdxBarLargeButton
      Caption = 'Schliessen'
      Category = 0
      Hint = 'Schliessen'
      Visible = ivAlways
      DropDownEnabled = False
      AutoGrayScale = False
      LargeImageIndex = 2
    end
    object dxBarLargeButtonDownload: TdxBarLargeButton
      Caption = 'Herunterladen'
      Category = 0
      Hint = 'Herunterladen'
      Visible = ivAlways
      OnClick = dxBarLargeButtonDownloadClick
      AutoGrayScale = False
      LargeImageIndex = 50
    end
  end
end
