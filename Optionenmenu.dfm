object Optionform: TOptionform
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Optionform'
  ClientHeight = 646
  ClientWidth = 606
  Color = clBtnFace
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
    000F0000003200000033000000330000003300000033A6740FB9C08B24FFC38D
    25FFA77819BD000000220000000000000000000000000000000000000000743D
    0C6FA7550DFBA7520AFFA65007FFA34900FFE3C8B7FFBE891EFFEEBA65FFE8AF
    4FFFD49931FFA67819B90000002300000000000000000000000000000000B15F
    16FFD7975AFFE2A76DFFE2A56AFFDF9F62FFFAE8DBFFC08B20FFFFEFCCFFE9B5
    5EFFE7AD4CFFD59930FFB17E16B900000000000000000000000000000000C076
    33FFE8B98DFFDF9F5DFFDE9B58FFDD964FFFF6DBC4FFCA9D4CFFD7A64BFFFFED
    C8FFE9B35BFFEAAD47FFAA7509AD00000033000000330000002A00000007CC86
    48FFEDCBAAFFE8AD6BFFE9AF6FFFF5F8FBFFEDF2F4FFFCE7D4FFCBA04DFFD6A4
    48FFFFECC2FFE1BF87FFA7ABB5E86D6C6FFF726F6FFF716E6DDB3634344FD495
    58FFF4DFCDFFF5BF7DFFFFF1DEFFFFFEFDFFF5F2EEFFEFE3D4FFFFEED8FFCCA5
    59FFDEB36FFFD5D8DEF1D0D0D2FFD7D5D5FFF0EFEFFFEDEBECFF7B7877FFD188
    40EAEAC49FFFFFECD6FFB3D9EFFF5DA1C5FF3C7EA3FF7A9AAEFFFFF2DEFFFAEB
    E0FFF5D8BCCFA7A8ABFFDBDBDBFFD1D0D0FF767372FF7D7A79FF817E7DFF0000
    0000E09347A7F0AA64FFBDC3BBFF6099B8FF437A98FF92948AFFF1AB64FFE49E
    57A40000000079797BFFD9D8D7FFC5C2C1FF7F7B79FF00000033000000330000
    000000000000212829287CADC4FF78BADEFF6AABCFFF628FA8FF000000190000
    0000000000007D7B7BFFE5E3E4FFB3B1AFFF8C8886FF878481FF8A8785FF0000
    000000000000002C5EA69AE2FFFF86C7E8FF77B6D8FF6DAED0FF022E5E970000
    00000000000087848396C3C3C1FFF6F5F5FFE6E5E5FFC6C5C2FF8B8787FF0000
    000000000000063465FFAFF7FFFF96D9F8FF86C8E7FF7FC1E0FF04275AFF0000
    000000000000000000008D8987C08C8987FF8C8987FF8E8B89D28F8C8A230000
    0000000000000E3F6FFF226190FF5487B2FF7CB3D5FF679ABEFF0C2D5DFF0000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000124675FF307DAFFF4E8EBCFF517FACFF2D4B76FF103161FF0000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000113D6ED42577A9FF3C88BAFF3B7AA9FF214875FF113667D40000
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000011407323114474E81A588AFF195182FF123F70E8114275230000
    000000000000000000000000000000000000000000000000000000000000FC3F
    0000001F0000000F0000000F0000000000000000000000000000000000008040
    0000C0C00000C0C00000C0E00000C0FF0000C0FF0000C0FF0000C0FF0000}
  KeyPreview = True
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  TextHeight = 15
  object dxPanelMenu: TdxPanel
    Left = 0
    Top = 38
    Width = 606
    Height = 587
    Align = alClient
    AutoSize = True
    LookAndFeel.Kind = lfStandard
    LookAndFeel.SkinName = 'Basic'
    TabOrder = 0
    object dxLayoutControlOptionsform: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 604
      Height = 585
      Align = alClient
      ParentBackground = True
      TabOrder = 0
      Transparent = True
      LayoutLookAndFeel = Papierkorb.SkinLook
      OnKeyDown = dxLayoutControlOptionsformKeyDown
      object cxGridMenu: TcxGrid
        Left = 27
        Top = 185
        Width = 550
        Height = 369
        PopupMenu = PopupMenu1
        TabOrder = 3
        OnExit = cxGridMenuExit
        LookAndFeel.Kind = lfUltraFlat
        object cxGridMenuDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellDblClick = cxGridMenuDBTableView1CellDblClick
          OnFocusedRecordChanged = cxGridMenuDBTableView1FocusedRecordChanged
          OnSelectionChanged = cxGridMenuDBTableView1SelectionChanged
          DataController.DataSource = MSDataSource1
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Appending = True
          OptionsData.Editing = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.ShowColumnFilterButtons = sfbWhenSelected
          Preview.AutoHeight = False
          object cxGridMenuDBTableView1ID: TcxGridDBColumn
            Caption = 'Wert'
            DataBinding.FieldName = 'ID'
            Width = 62
          end
          object cxGridMenuDBTableView1Bezeichnung1: TcxGridDBColumn
            DataBinding.FieldName = 'Bezeichnung'
            Width = 117
          end
          object cxGridMenuDBTableView1Kategorie: TcxGridDBColumn
            Caption = 'Icon'
            DataBinding.FieldName = 'IconIndex'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = Papierkorb.cxImageListKategorie
            Properties.Items = <
              item
                Description = '0'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = '1'
                ImageIndex = 1
                Value = 1
              end
              item
                Description = '2'
                ImageIndex = 15
                Value = 2
              end
              item
                Description = '3'
                ImageIndex = 16
                Value = 3
              end
              item
                Description = '4'
                ImageIndex = 12
                Value = 4
              end
              item
                Description = '5'
                ImageIndex = 13
                Value = 5
              end
              item
                Description = '6'
                ImageIndex = 9
                Value = 6
              end
              item
                Description = '7'
                ImageIndex = 16
                Value = 7
              end
              item
                Description = '8'
                ImageIndex = 7
                Value = 8
              end
              item
                Description = '9'
                ImageIndex = 8
                Value = 9
              end
              item
                Description = '10'
                ImageIndex = 6
                Value = 10
              end
              item
                Description = '11'
                ImageIndex = 16
                Value = 11
              end
              item
                Description = '12'
                ImageIndex = 7
                Value = 12
              end
              item
                Description = '13'
                ImageIndex = 8
                Value = 13
              end
              item
                Description = '14'
                ImageIndex = 16
                Value = 14
              end>
            Properties.ShowDescriptions = False
            OnGetCellHint = cxGridMenuDBTableView1KategorieGetCellHint
            Width = 115
          end
          object cxGridMenuDBTableView1Archiv: TcxGridDBColumn
            DataBinding.FieldName = 'Archiv'
            HeaderGlyph.SourceHeight = 16
            HeaderGlyph.SourceWidth = 16
            HeaderGlyphAlignmentHorz = taRightJustify
            Options.Editing = False
            Options.ExpressionEditing = False
            Width = 237
          end
        end
        object cxGridMenuDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxGridMenuLevel1: TcxGridLevel
          GridView = cxGridMenuDBTableView1
        end
      end
      object EditId: TcxTextEdit
        Left = 108
        Top = 58
        AutoSize = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 0
        Height = 24
        Width = 86
      end
      object Editname: TcxTextEdit
        Left = 294
        Top = 58
        AutoSize = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
        Height = 24
        Width = 283
      end
      object cxComboBoxArchiv: TcxComboBox
        Left = 108
        Top = 89
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.OnChange = cxComboBoxArchivPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 24
        Width = 86
      end
      object dxLayoutControlOptionsformGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItemWert: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Wert'
        Control = EditId
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 86
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItemBezeichnung: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahRight
        CaptionOptions.Text = 'Bezeichnung'
        Control = Editname
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 283
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItemArchiev: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Archivzustand'
        Control = cxComboBoxArchiv
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 86
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroup2
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'cxGridMenu'
        CaptionOptions.Visible = False
        Control = cxGridMenu
        ControlOptions.OriginalHeight = 369
        ControlOptions.OriginalWidth = 480
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutControlOptionsformGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Men'#252
        Index = 1
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutControlOptionsformGroup_Root
        CaptionOptions.Text = 'Suchparameter'
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
    ImageOptions.LargeIcons = True
    ImageOptions.UseLargeImagesForLargeIcons = True
    LookAndFeel.SkinName = 'WXI'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 600
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      38
      21)
    object dxBarManager1Bar2: TdxBar
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 678
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButSuchen'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButZurueck'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButBearbeiten'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButNeu'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButArchivieren'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonLoeschen'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButAusblenden'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      Color = clWindow
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 657
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
          UserDefine = [udWidth]
          UserWidth = 139
          Visible = True
          ItemName = 'cxBarEditItemGefunden'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 42
          Visible = True
          ItemName = 'cxBarEditItemStatus'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 214
          Visible = True
          ItemName = 'cxBarEditItemInfo'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 147
          Visible = True
          ItemName = 'cxBarEditItemWahlen'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeBtSchliessen: TdxBarLargeButton
      Action = AcSchliessen
      Category = 0
      AutoGrayScale = False
    end
    object dxBarSubItemOptionen: TdxBarSubItem
      Align = iaClient
      Caption = 'Optionen'
      Category = 0
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
        3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
        423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
        233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
        6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
        696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
        6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
        7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D224F
        7074696F6E735F315F223E0D0A09093C7061746820636C6173733D22426C7565
        2220643D224D32372E332C32332E386C2D382E322D382E3263302E362D312E31
        2C302E392D322E332C302E392D332E3763302D342E342D332E362D382D382D38
        632D312E332C302D322E352C302E332D332E362C302E396C342E392C342E3920
        202623393B2623393B63312C312C312C322E362C302C332E36632D312C312D32
        2E362C312D332E362C304C342E392C382E3443342E332C392E352C342C31302E
        372C342C313263302C342E342C332E362C382C382C3863312E332C302C322E36
        2D302E332C332E372D302E396C382E322C382E3220202623393B2623393B6330
        2E392C302E392C322E352C302E392C332E342C304332382E322C32362E332C32
        382E322C32342E382C32372E332C32332E387A222F3E0D0A093C2F673E0D0A3C
        2F7376673E0D0A}
      ItemLinks = <>
    end
    object dxBarLargeButNeu: TdxBarLargeButton
      Action = AcNeu
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButSuchen: TdxBarLargeButton
      Action = AcSuchen
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButtonSave: TdxBarLargeButton
      Caption = 'Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 0
    end
    object dxBarLargeButtonLoeschen: TdxBarLargeButton
      Action = AcLoeschen
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButZurueck: TdxBarLargeButton
      Action = AcZurueck
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButBearbeiten: TdxBarLargeButton
      Action = AcBearbeiten
      Category = 0
      AutoGrayScale = False
    end
    object dxBarLargeButArchivieren: TdxBarLargeButton
      Action = AcArchivieren
      Category = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000010744558745469746C6500546578743B426F6F6B3B0C3F
        E3B90000020449444154785E8593C14B15511487BFFB1C338D762DA24544D1AE
        B5BBB008825605FD01B94868112D8AA8451024E8220AA1450811A5EB76A1495A
        48AB94C0883029C9424112B310DF9B997BCF39E1011FCA08FDE0C739F7CE9CEF
        9E393313CC8C10024070EF54607719609BCA7011A61E5F781302A74CFD127800
        C3F03DCF0055A2E864D78DD1338034011AE3A9839D9739DC791E5543DC8AC8A6
        8DA4E6B99A32F7E462D756774D4059DFE0DBAB077C1DB98FA9A18A4753C50C87
        62E6F9DE7D6D5400290A27AFDC01ACFAB8E88EE5C4C0BD0A805424D09272E583
        335ADA0F60863B6844F25587B5741C2216D204D47011623D47531D4B2598B74F
        4FEF47EE0ECE422D2358C052C45241AC37706D03108B8836FEA2458E590B539F
        56585C5E67FCFD32B3F36B586D0F1A73B4B1E6F7563A4851B172038D2521644C
        7F5EE5E1B5E3A808432FBF838115395AE648A9BB01044D0D42D6EE270E8F2C72
        A9770695C4F8D42FDFA3B5034B39290AAEED439428846C3FB5ACCED0D802EF1E
        9D0033BEFCACD3DD3FC7B3D125FA7B8E40AD154956ED40A262B14E77DF2CE3D3
        AB9CBD3E834949DFF00F4C8489E9DFDC1E9CF7214A12AADF8103729EDE3C0618
        80173EBF7514977989BF2511AB0090A4947F16D0C67A13E0B1190CCC08591B9A
        B43203290A79FB62E0F56903CC0C74ABCEDC8607579E741248DB01E9EAD8D239
        5FFFFF97362F8612E01F90035EA30484177C0000000049454E44AE426082}
      AutoGrayScale = False
    end
    object cxBarEditItemGefunden: TcxBarEditItem
      Caption = 'Gefunden'
      Category = 0
      Hint = 'Gefunden'
      Visible = ivAlways
      PropertiesClassName = 'TcxMemoProperties'
      BarStyleDropDownButton = False
      CanSelect = False
      Properties.ReadOnly = True
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TdxToggleSwitchProperties'
      Properties.ImmediatePost = True
    end
    object cxBarEditItemStatus: TcxBarEditItem
      Caption = 'Status:'
      Category = 0
      Hint = 'Status:'
      Visible = ivAlways
      BarStyleDropDownButton = False
      CanSelect = False
    end
    object cxBarEditItemInfo: TcxBarEditItem
      Caption = 'Info'
      Category = 0
      Hint = 'Info'
      Visible = ivAlways
      PropertiesClassName = 'TcxMemoProperties'
      BarStyleDropDownButton = False
      CanSelect = False
      Properties.ReadOnly = True
    end
    object cxBarEditItemWahlen: TcxBarEditItem
      Caption = 'Wahlen'
      Category = 0
      Hint = 'Wahlen'
      Visible = ivAlways
      PropertiesClassName = 'TcxMemoProperties'
      Properties.ReadOnly = True
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Ansicht'
      Category = 0
      Hint = 'Ansicht'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = dxRibbonDropDownGalleryOptionForm
      AutoGrayScale = False
      LargeImageIndex = 34
    end
    object dxBarButtonAlle: TdxBarButton
      Caption = 'Alle Komponenten anzeigen'
      Category = 0
      Hint = 'Alle Komponenten anzeigen'
      Visible = ivAlways
      ImageIndex = 35
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButtonNurTable: TdxBarButton
      Caption = 'Nur Tabelle anzeigen'
      Category = 0
      Hint = 'Nur Tabelle anzeigen'
      Visible = ivAlways
      ImageIndex = 33
    end
    object dxBarLargeButAusblenden: TdxBarLargeButton
      Caption = 'Ausblenden'
      Category = 0
      Hint = 'Ausblenden'
      Visible = ivAlways
      OnClick = dxBarLargeButAusblendenClick
      AutoGrayScale = False
      LargeImageIndex = 59
      SyncImageIndex = False
      ImageIndex = 59
    end
  end
  object MSConnection1: TMSConnection
    Database = 'Kontaktdaten'
    Username = 'sa'
    Server = 'PC-SASA'
    Connected = True
    Left = 571
    Top = 65533
    EncryptedPassword = '9EFF9CFF8DFF96FF9DFF9EFFCFFFC7FFDEFF'
  end
  object MSDataSource1: TMSDataSource
    DataSet = MSQuery1
    Left = 603
    Top = 29
  end
  object PopupMenu1: TPopupMenu
    Images = Papierkorb.cxImageListStartlist
    Left = 565
    Top = 85
    object Suchen: TMenuItem
      Action = AcSuchen
    end
    object Zurcksetzen1: TMenuItem
      Action = AcZurueck
    end
    object Bearbeiten1: TMenuItem
      Action = AcBearbeiten
    end
    object Neuhinzufuegen: TMenuItem
      Action = AcNeu
    end
    object Kopieren1: TMenuItem
      Action = AcKopieren
    end
    object Archivieren1: TMenuItem
      Action = AcArchivieren
    end
    object Loeschen: TMenuItem
      Action = AcLoeschen
    end
    object Schliessen: TMenuItem
      Action = AcSchliessen
    end
  end
  object TMSQueryforGrid: TMSQuery
    Connection = MSConnection1
    SQL.Strings = (
      'SELECT * FROM KOMBINIERTTABELLE'
      '')
    Left = 571
    Top = 25
  end
  object MSQuery1: TMSQuery
    Connection = MSConnection1
    SQL.Strings = (
      'SELECT WertID AS ID, Bezeichnung,IsArchived AS Archiv'
      'FROM Kombinierttabelle'
      '')
    Active = True
    Left = 568
    Top = 54
  end
  object ActionListOptionMenu: TActionList
    Left = 600
    Top = 54
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
    object AcBearbeiten: TAction
      Caption = 'Bearbeiten'
      Hint = 'Bearbeiten'
      ImageIndex = 26
      ShortCut = 16450
      OnExecute = AcBearbeitenExecute
    end
    object AcNeu: TAction
      Caption = 'Neu'
      Hint = 'Neu'
      ImageIndex = 27
      ShortCut = 16462
      OnExecute = AcNeuExecute
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
      ImageIndex = 24
      ShortCut = 16452
      OnExecute = AcLoeschenExecute
    end
    object AcSchliessen: TAction
      Caption = 'Schlie'#223'en'
      Hint = 'Schlie'#223'en'
      ImageIndex = 2
      ShortCut = 27
    end
    object AcKopieren: TAction
      Caption = 'Kopieren'
      Hint = 'Kopieren'
      ImageIndex = 20
      ShortCut = 16451
      OnExecute = AcKopierenExecute
    end
  end
  object Timer1: TTimer
    Interval = 800
    OnTimer = Timer1Timer
    Left = 600
    Top = 94
  end
  object dxRibbonDropDownGalleryOptionForm: TdxRibbonDropDownGallery
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButtonAlle'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonNurTable'
      end>
    UseOwnFont = False
    Left = 608
    Top = 102
    PixelsPerInch = 96
  end
end
