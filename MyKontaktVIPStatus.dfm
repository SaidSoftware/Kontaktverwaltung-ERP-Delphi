object KontaktVIPStatus: TKontaktVIPStatus
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'VIP-Status'
  ClientHeight = 367
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    00000100200000000000000400000000000000000000000000000000000094D7
    F70092D7F7001634620A15315E1500000007000000028AD4F70088D3F70087D3
    F7000000000200000007132D58161431610A82D0F60080D0F6002151A1009CDC
    F8009ADAF800122A4E132456A4EF0D28698C0819412000000008000000050000
    000808173D210C26648D2253A2EF0F25491487D3F70086D3F6002152A100A4DE
    F900A3DFF9000000000A3D72B6EE468EC9FF1F4B8EF70D296A9D13346D480D27
    6A9D1D488BF73E88C7FF376EB1EF0000000B8FD5F7008ED6F7002253A300ACE2
    FA00AAE2FA00000000082E62A8D06DC5F4FF64BFF3FF519BD3FF3672B6FF4F99
    D2FF5BBAF1FF61BEF2FF2C60A7D40000000997D9F80096D9F8002254A400B4E6
    FB00B3E5FA00000000062559A0B17CC8F2FF4FB4F2FF55B9F3FF62BFF4FF53B6
    F2FF49B0F1FF70C1F0FF23539DB2000000079FDDF9009EDDF8002356A400BAE9
    FC00B9E9FC000000000724599F9B74BDE9FF5DBDF4FF54B8F3FF52B7F2FF50B7
    F3FF56B9F4FF6AB6E8FF23539A9C00000008A7E1FA00A7E0F9002458A600C2EC
    FC00000000031A42813D3368ABF47ECBF2FF61C1F5FF5BBEF4FF5ABDF5FF58BC
    F5FF58BCF3FF72C3F0FF3063A8F4173B794300000004AFE3FA001B4693000000
    00021A4480333265A9EF87CFF3FF6BC9F8FF66C6F8FF64C5F7FF63C4F7FF61C2
    F6FF60C2F6FF62C2F5FF79C5F0FF2D5FA5EF163A7536000000031C4996001C47
    86243466A8E9A7D8F2FFA0E0FCFF8BD8FBFF77CFF9FF6CCAF9FF6BC9F8FF69C9
    F9FF70CCF8FF84D4FAFF95DAF9FF9BD2EFFF2E5EA2EA163A7527000000012D69
    AD85417BBADE6397CAFF81B0D9FFA0CBE8FFB1E0F7FF79D4FAFF72CFFAFF76D1
    FAFFADDDF6FF9BC7E7FF7BABD6FF5D91C6FF3B71B4DF275DA486000000020000
    0002000000041E46730E2A62A3422B64A7734E86C0F1B1E8FDFF7CD5FCFFAEE6
    FCFF4D83BEF12860A37425599A4418396210000000050000000300000001DBF7
    FF00DAF6FF00DAF6FF0000000001000000032C67AB7294C1E2FF99E2FFFF93BF
    E1FF2A65A872000000040000000100000001D0F3FE00CEF2FE002B65AE00DEF8
    FF00DEF8FF00DDF8FF00DDF8FF00DCF8FF001C436D0A437FBCE1C2E7F8FF437E
    BCE1193B620BD7F5FE00D6F5FF00D6F5FF00D4F4FE00D4F4FE002C68B000E1F9
    FF00E1F9FF00E1F9FF00E0F9FF00E0F8FF00000000012E6DAD584F88C2FF2C69
    AB5900000001DBF7FF00DBF7FF00D9F7FF00D9F6FF00D8F6FF002D6AB100E2F9
    FF00E2F9FF00E2F9FF00E1F9FF00E2F9FF00E1F9FF00000000023072B4890000
    0002E0F9FF00DFF8FF00DEF8FF00DEF8FF00DDF8FF00DCF7FF002D6DB300347C
    BD00347BBC00357ABC00337ABB003379BB003378BA003277BA00000000013275
    B8003174B8003174B7003073B7003072B6003071B5003070B5002F6FB500C387
    0000C0070000C0070000C0070000C0070000C007000080030000000100000000
    00000000000000000000E0070000F83F0000F83F0000FC7F0000FEFF0000}
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object dxPanelStatus: TdxPanel
    Left = 0
    Top = 38
    Width = 630
    Height = 329
    Align = alClient
    TabOrder = 0
    object dxLayoutControlStatus: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 628
      Height = 327
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      object cxGridStatus: TcxGrid
        Left = 27
        Top = 31
        Width = 574
        Height = 265
        TabOrder = 0
        object cxGridStatusDBTableViewStatus: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = cxGridStatusDBTableViewStatusCellDblClick
          DataController.DataSource = MSDataSourceStatus
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridStatusDBTableViewStatusVipStatusID: TcxGridDBColumn
            DataBinding.FieldName = 'VipStatusID'
            DataBinding.IsNullValueType = True
            Visible = False
          end
          object cxGridStatusDBTableViewStatusStatusName: TcxGridDBColumn
            Caption = 'Statusname'
            DataBinding.FieldName = 'StatusName'
            DataBinding.IsNullValueType = True
            Width = 141
          end
          object cxGridStatusDBTableViewStatusRabatt: TcxGridDBColumn
            Caption = 'Grundrabatt %'
            DataBinding.FieldName = 'Rabatt'
            DataBinding.IsNullValueType = True
            Width = 101
          end
          object cxGridStatusDBTableViewStatusMinUmsatz: TcxGridDBColumn
            Caption = 'Min/Umsatz'
            DataBinding.FieldName = 'MinUmsatz'
            DataBinding.IsNullValueType = True
            Width = 90
          end
          object cxGridStatusDBTableViewStatusPrioritaet: TcxGridDBColumn
            Caption = 'Priorit'#228't'
            DataBinding.FieldName = 'Prioritaet'
            DataBinding.IsNullValueType = True
            Width = 89
          end
          object cxGridStatusDBTableViewStatusFarbe: TcxGridDBColumn
            DataBinding.FieldName = 'Farbe'
            DataBinding.IsNullValueType = True
            Visible = False
            Width = 75
          end
          object cxGridStatusDBTableViewStatusAktiv: TcxGridDBColumn
            DataBinding.FieldName = 'Aktiv'
            DataBinding.IsNullValueType = True
            Width = 151
          end
        end
        object cxGridStatusLevel1: TcxGridLevel
          GridView = cxGridStatusDBTableViewStatus
        end
      end
      object dxLayoutControlStatusGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxGridStatus
        ControlOptions.OriginalHeight = 234
        ControlOptions.OriginalWidth = 451
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutControlStatusGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        Index = 0
      end
    end
  end
  object MSQueryStatus: TMSQuery
    Connection = MyDataModule.MyConnections
    SQL.Strings = (
      'Select * FROM VipStatus;')
    Left = 400
    Top = 16
  end
  object MSDataSourceStatus: TMSDataSource
    DataSet = MSQueryStatus
    Left = 456
    Top = 24
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
    Left = 352
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
      FloatLeft = 555
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
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
          ItemName = 'dxBarLargeButtonDelete'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarLargeButtonNeu: TdxBarLargeButton
      Caption = 'Neu'
      Category = 0
      Hint = 'Neu'
      Visible = ivNever
      OnClick = dxBarLargeButtonNeuClick
      AutoGrayScale = False
      LargeImageIndex = 27
    end
    object dxBarLargeButtonBearbeiten: TdxBarLargeButton
      Caption = 'Bearbeiten'
      Category = 0
      Hint = 'Bearbeiten'
      Visible = ivAlways
      OnClick = dxBarLargeButtonBearbeitenClick
      AutoGrayScale = False
      LargeImageIndex = 26
    end
    object dxBarLargeButtonDelete: TdxBarLargeButton
      Caption = 'L'#246'schen'
      Category = 0
      Hint = 'L'#246'schen'
      Visible = ivNever
      OnClick = dxBarLargeButtonDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
    end
  end
end
