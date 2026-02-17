object KontaktMenu: TKontaktMenu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = '[Neu] Kontakt '
  ClientHeight = 818
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    000001002000000000000004000000000000000000000000000000000000FFFF
    FF00000000000000000000000000000000000000000000000000000000000000
    00000000001E0000003300000033000000330000001E00000000FFFFFF00FFFF
    FF000000000F0000003200000033000000330000003300000033000000330000
    0033008049A9008D4CFF008B4AFF008C4CFF007E45AC0000001EFFFFFF00FFFF
    FF00743D0C6FA7530DFBA7520AFFA7520AFFA75209FFA95109FFB54F07FF4A73
    2FFF009B5EFF00BB86FF77E0C6FF00BB86FF00995CFF007E45ACFFFFFF00FFFF
    FF00B15F16FFD7975AFFE2A76DFFE2A66CFFE2A56CFFE5A56CFFF5A56CFF008E
    4DFF00C28EFF00BC83FFFFFFFFFF00BC83FF00C18DFF008C4CFFFFFFFF00FFFF
    FF00C07633FFE8B98DFFDF9F5DFFDF9C59FFDF9A55FFE29A56FFF59D5AFF0089
    46FF73E7CEFFFFFFFFFFFFFFFFFFFFFFFFFF77E7CEFF008B49FFFFFFFF00FFFF
    FF00CA8648FFEDCBAAFFEAAD6BFFEAAF6FFFF6FAFEFFEFF0F2FFFFB171FF0086
    42FF00CB97FF00C990FFFFFFFFFF00C990FF00CD99FF008C4BFFFFFFFF00FFFF
    FF00D39559FFF4DFCDFFF6BF7DFFFFF1DFFFFFFEFEFFF7F5F3FFFADFCAFF66A2
    5FFF009F61FF00D49EFF76EFD6FF00D49FFF00A367FF008E4E97FFFFFF00FFFF
    FF00D1883FEAEBC49FFFFFECD6FFB3D9EFFF5DA1C5FF3D7FA4FF809DB2FFFFF3
    DEFF5E9E66FF008949FF008948FF008B4AFF008E4E9700000000FFFFFF00FFFF
    FF0000000000E09347A7F0AA63FFBDC3BBFF6099B8FF437A98FF94948BFFF8AF
    69FFF0954AA60000000000000000000000000000000000000000FFFFFF00FFFF
    FF000000000000000000212829287CADC4FF78BADEFF6AABCFFF6290A8FF0000
    0019000000000000000000000000000000000000000000000000FFFFFF00FFFF
    FF000000000000000000002C5EA69AE2FFFF86C7E8FF77B6D8FF6DAED0FF022E
    5F97000000000000000000000000000000000000000000000000FFFFFF00FFFF
    FF000000000000000000063465FFAFF7FFFF96D9F8FF86C8E7FF7FC1E0FF0528
    5BFF000000000000000000000000000000000000000000000000FFFFFF00FFFF
    FF0000000000000000000E3F6FFF226190FF5488B2FF7CB3D5FF679BBEFF0E2E
    5EFF000000000000000000000000000000000000000000000000FFFFFF00FFFF
    FF000000000000000000124675FF307DAFFF4E8EBCFF517FACFF2D4B77FF1132
    61FF000000000000000000000000000000000000000000000000FFFFFF00FFFF
    FF000000000000000000113D6ED42577A9FF3C88BAFF3C7AA9FF224A75FF1136
    67D4000000000000000000000000000000000000000000000000FFFFFF00FFFF
    FF00000000000000000011407323114474E81A588AFF195182FF123F70E81142
    7523000000000000000000000000000000000000000000000000FFFFFF00FF83
    000080010000800100008001000080010000800100008001000080030000C03F
    0000E07F0000E07F0000E07F0000E07F0000E07F0000E07F0000E07F0000}
  KeyPreview = True
  PopupMenu = PopupMenuKontakt
  Position = poOwnerFormCenter
  StyleElements = [seFont]
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object dxPanelMenu: TdxPanel
    Left = 0
    Top = 38
    Width = 832
    Height = 780
    Align = alClient
    LookAndFeel.SkinName = 'DevExpressStyle'
    TabOrder = 0
    object cxPageControlMenu: TcxPageControl
      Left = 0
      Top = 9
      Width = 830
      Height = 769
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenuKontakt
      TabOrder = 0
      Properties.ActivePage = cxTabSheetBenutzer
      Properties.CustomButtons.Buttons = <>
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
      Properties.Style = 6
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      OnChange = cxPageControlMenuChange
      OnPageChanging = cxPageControlMenuPageChanging
      ClientRectBottom = 769
      ClientRectRight = 830
      ClientRectTop = 26
      object cxTabSheetBenutzer: TcxTabSheet
        Caption = 'Kontaktdaten'
        ImageIndex = 0
        ParentShowHint = False
        PopupMenu = PopupMenuKontakt
        ShowHint = True
        object dxLayoutControlKontakt: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 830
          Height = 743
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
          CustomizeFormTabbedView = True
          DesignSize = (
            830
            743)
          object ComboBoxAnrede: TcxComboBox
            Left = 227
            Top = 89
            AutoSize = False
            Properties.DropDownListStyle = lsEditFixedList
            Properties.ReadOnly = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            Style.ButtonTransparency = ebtNone
            TabOrder = 2
            OnDblClick = ComboBoxAnredeDblClick
            Height = 24
            Width = 300
          end
          object ComboBoxTitel: TcxComboBox
            Left = 227
            Top = 120
            AutoSize = False
            Properties.DropDownListStyle = lsEditFixedList
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 3
            OnDblClick = ComboBoxTitelDblClick
            Height = 24
            Width = 300
          end
          object EditName: TcxTextEdit
            Left = 227
            Top = 182
            AutoSize = False
            Properties.OnChange = EditNamePropertiesChange
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 5
            Height = 24
            Width = 300
          end
          object EditVorname: TcxTextEdit
            Left = 227
            Top = 151
            AutoSize = False
            Properties.OnChange = EditVornamePropertiesChange
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 4
            Height = 24
            Width = 300
          end
          object exEditGeburtsdatum: TcxDateEdit
            Left = 227
            Top = 213
            AutoSize = False
            Properties.SaveTime = False
            Properties.ShowTime = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 6
            Height = 24
            Width = 300
          end
          object EditStrasse: TcxTextEdit
            Left = 227
            Top = 312
            AutoSize = False
            Properties.OnChange = EditStrassePropertiesChange
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 8
            OnExit = EditNameExit
            Height = 24
            Width = 300
          end
          object Edithausnummer: TcxTextEdit
            Left = 624
            Top = 312
            AutoSize = False
            Properties.MaxLength = 13
            Properties.OnChange = EdithausnummerPropertiesChange
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 9
            Height = 24
            Width = 160
          end
          object EditPLZ: TcxTextEdit
            Left = 227
            Top = 343
            AutoSize = False
            Properties.MaxLength = 5
            Properties.OnChange = EditPLZPropertiesChange
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 10
            OnExit = EditPLZExit
            Height = 24
            Width = 57
          end
          object EditOrt: TcxTextEdit
            Left = 331
            Top = 343
            AutoSize = False
            Properties.OnChange = EditOrtPropertiesChange
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 12
            OnExit = EditNameExit
            Height = 24
            Width = 453
          end
          object cxImage1: TcxImage
            Left = 534
            Top = 58
            TabStop = False
            Picture.Data = {
              0D546478536D617274496D6167653C3F786D6C2076657273696F6E3D22312E30
              2220656E636F64696E673D225554462D38223F3E0D0A3C737667207665727369
              6F6E3D22312E31222069643D224C617965725F312220786D6C6E733D22687474
              703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A78
              6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
              6E6B2220783D223070782220793D22307078222076696577426F783D22302030
              20333220333222207374796C653D22656E61626C652D6261636B67726F756E64
              3A6E6577203020302033322033323B2220786D6C3A73706163653D2270726573
              65727665223E262331333B262331303B3C7374796C6520747970653D22746578
              742F6373732220786D6C3A73706163653D227072657365727665223E2E426C75
              657B66696C6C3A233131373744373B7D262331333B262331303B2623393B2E59
              656C6C6F777B66696C6C3A234646423131353B7D262331333B262331303B2623
              393B2E5265647B66696C6C3A234431314331433B7D262331333B262331303B26
              23393B2E477265656E7B66696C6C3A233033394332333B7D262331333B262331
              303B2623393B2E426C61636B7B66696C6C3A233732373237323B7D262331333B
              262331303B2623393B2E57686974657B66696C6C3A234646464646463B7D2623
              31333B262331303B2623393B2E7374307B6F7061636974793A302E353B7D2623
              31333B262331303B2623393B2E7374317B6F7061636974793A302E37353B7D26
              2331333B262331303B2623393B2E7374327B646973706C61793A6E6F6E653B7D
              262331333B262331303B2623393B2E7374337B646973706C61793A696E6C696E
              653B66696C6C3A234646423131353B7D262331333B262331303B2623393B2E73
              74347B646973706C61793A696E6C696E653B7D262331333B262331303B262339
              3B2E7374357B646973706C61793A696E6C696E653B6F7061636974793A302E37
              353B7D262331333B262331303B2623393B2E7374367B646973706C61793A696E
              6C696E653B6F7061636974793A302E353B7D262331333B262331303B2623393B
              2E7374377B646973706C61793A696E6C696E653B66696C6C3A23303339433233
              3B7D262331333B262331303B2623393B2E7374387B646973706C61793A696E6C
              696E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B
              2E7374397B646973706C61793A696E6C696E653B66696C6C3A23313137374437
              3B7D262331333B262331303B2623393B2E737431307B646973706C61793A696E
              6C696E653B66696C6C3A234646464646463B7D3C2F7374796C653E0D0A3C6720
              69643D22456D706C6F7965655F315F223E0D0A09093C7061746820636C617373
              3D22426C61636B2220643D224D31302E322C392E39632D302E312C302E352C30
              2E322C302E392C302E342C312E34732D302E312C312E372C302E392C312E3663
              302C302C302C302E312C302C302E3263302E362C322E332C322C342E392C342E
              372C342E3920202623393B2623393B73342E322D322E362C342E372D342E3956
              313363312C302E312C302E362D312E312C302E392D312E3663302E322D302E35
              2C302E342D302E392C302E332D312E34632D302E312D302E342D302E342D302E
              342D302E352D302E334332332E342C342E382C32302E352C352C32302E352C35
              5332302E322C322C31352C3220202623393B2623393B632D342E382C302D352E
              342C342D342E332C372E364331302E362C392E362C31302E332C392E372C3130
              2E322C392E397A204D32302E322C3138632D302E382C312E352D322E312C342D
              342C34732D332E322D322E352D342D34632D322E332C332E352D382C312D382C
              382E35563330683234762D332E3520202623393B2623393B4332382E322C3139
              2E312C32322E352C32312E342C32302E322C31387A222F3E0D0A093C2F673E0D
              0A3C2F7376673E0D0A}
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 7
            OnDblClick = cxImage1DblClick
            Height = 182
            Width = 232
          end
          object cxComboBoxTelefon: TcxComboBox
            Left = 137
            Top = 439
            AutoSize = False
            Properties.DropDownListStyle = lsEditFixedList
            Properties.ReadOnly = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 13
            OnDblClick = cxComboBoxTelefonDblClick
            Height = 24
            Width = 101
          end
          object cxComboBoxTelefonzwei: TcxComboBox
            Left = 137
            Top = 470
            AutoSize = False
            Properties.DropDownListStyle = lsEditFixedList
            Properties.ReadOnly = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 16
            OnDblClick = cxComboBoxTelefonDblClick
            Height = 24
            Width = 101
          end
          object cxComboBoxTelefondrei: TcxComboBox
            Left = 137
            Top = 501
            AutoSize = False
            Properties.DropDownListStyle = lsEditFixedList
            Properties.ReadOnly = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 19
            OnDblClick = cxComboBoxTelefonDblClick
            Height = 24
            Width = 101
          end
          object EditTelefon: TcxTextEdit
            Left = 245
            Top = 439
            AutoSize = False
            Properties.MaxLength = 15
            Properties.OnChange = EditTelefonPropertiesChange
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 14
            Height = 24
            Width = 493
          end
          object EditTelefonzwei: TcxTextEdit
            Left = 245
            Top = 470
            AutoSize = False
            Properties.MaxLength = 15
            Properties.OnChange = EditTelefonzweiPropertiesChange
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 17
            Height = 24
            Width = 493
          end
          object EditTelefondrei: TcxTextEdit
            Left = 245
            Top = 501
            AutoSize = False
            ParentShowHint = False
            Properties.MaxLength = 15
            Properties.OnChange = EditTelefondreiPropertiesChange
            ShowHint = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 20
            Height = 24
            Width = 493
          end
          object cxComboBoxEmail: TcxComboBox
            Left = 137
            Top = 597
            AutoSize = False
            Properties.DropDownListStyle = lsEditFixedList
            Properties.ReadOnly = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 22
            OnDblClick = cxComboBoxEmailDblClick
            Height = 24
            Width = 101
          end
          object cxComboBoxEmailzwei: TcxComboBox
            Left = 137
            Top = 628
            AutoSize = False
            Properties.DropDownListStyle = lsEditFixedList
            Properties.ReadOnly = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 23
            OnDblClick = cxComboBoxEmailDblClick
            Height = 24
            Width = 101
          end
          object cxComboBoxEmaildrei: TcxComboBox
            Left = 137
            Top = 659
            AutoSize = False
            Properties.DropDownListStyle = lsEditFixedList
            Properties.ReadOnly = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 28
            OnDblClick = cxComboBoxEmailDblClick
            Height = 24
            Width = 101
          end
          object EditEmail: TcxTextEdit
            Left = 245
            Top = 597
            AutoSize = False
            Properties.OnChange = EditEmailPropertiesChange
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 24
            Height = 24
            Width = 493
          end
          object EditEmailzwei: TcxTextEdit
            Left = 245
            Top = 628
            AutoSize = False
            Properties.OnChange = EditEmailzweiPropertiesChange
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 25
            Height = 24
            Width = 494
          end
          object EditEmaildrei: TcxTextEdit
            Left = 245
            Top = 659
            AutoSize = False
            Properties.OnChange = EditEmaildreiPropertiesChange
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 29
            Height = 24
            Width = 493
          end
          object cxBenutzerID: TcxTextEdit
            Left = 227
            Top = 58
            TabStop = False
            AutoSize = False
            Properties.AutoSelect = False
            Properties.ReadOnly = True
            Style.HotTrack = False
            Style.ReadOnly = True
            Style.TransparentBorder = False
            StyleReadOnly.BorderColor = clActiveBorder
            StyleReadOnly.BorderStyle = ebsSingle
            StyleReadOnly.Color = clWindow
            TabOrder = 1
            Height = 24
            Width = 57
          end
          object cxImageMap: TcxImage
            Left = 291
            Top = 343
            Cursor = crHandPoint
            Anchors = []
            Picture.Data = {
              0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
              00100000001008060000001FF3FF610000001974455874536F66747761726500
              41646F626520496D616765526561647971C9653C0000000F744558745469746C
              650047656F506F696E743B54A4DB6F000002E149444154785E75927D48DC751C
              C75FBFFBDD76BB3B710FA737CF875C7ADEEAD82EB1316DD2D33F52C9C6182C92
              ADE88FFAA7D14828F7100CA6B99611ACC8A0489758DD95194342DCA2D02DB912
              8382852662B75D379D536F7ADEA3DEEF9303EF87C87AC387EFF79FF78BD7F7C3
              17110160F0FC3E0043677DB9F3C7B3959F0F343F16BCDA5C25FD4D55C1CB67F6
              5E6C7B6D7719A0F63756022022F7061D00A8DF9FA8D8FFEB8567A2A16BCD12BF
              D9255AF8F2CAF9AD84AEBE23831FD4447DF5E50700752DC00000281FBFE276E6
              D973BD15CFBF6A71949560526761FE6F4CDA248E921CF61CAEB314D86D5FB7D4
              B95CA0F7F48BB1D8667EABD0B3C7AAA667884E8E32F0D937784F7EC440FB2562
              533730264214ED725B4BECE63701E37A806A52A9CD29DC0E893043DD3F33723D
              D072C437BE6D6C34D832FC831F598A93EBC8C6A4507B3F80414B8BCDA8A69064
              84C5F03C9746EEB60271EF9F339FC617E7D1C4884A0C34D90218144561657480
              2413CBFF44A7A7D19251F29CF91C7DA2E018B0FDA5A70B8FDB4B8A209D267267
              8E586239B06A60608D4A7A3692FA2E343A71BA6C771E0F577930675B1A7E29CE
              6ED8E2C86787C783A4EE121C9B24703B7E05D8086C00521983E59FFE0AB707AE
              4F4496924B6CD4E67095BBA83C7090B28A0A8C4B33C4E7A618FDE3DFD845FF54
              1F600136018A2222282B014C1F1E2E6DA8DE577AD65D9E0322201A0820C2D0B5
              1B74F64D7CD53674E70BE036700B08679E2040EABD2BC14FCE9B8D87F2F2B31E
              D9BA15BD3C3D15A57F3078AB6378E637C00AA4811820FA4FEC7A7927C086D71F
              77D4F4BEF1E8F242EF2159ECDD2F0B3DB5D256E74CEFB46DEA00EA816A202BB3
              441DE07BD105A000D6779F7BA0D1DF542D919E67A5E7F82EA97930CB0F9C039E
              042C7A792DC07BC44962F86D56C9DB5A0F16F78DB43E2547DD9B6F028DC04399
              C5A1670D49D384EEF77D7CF942A9062C74FE3E7BCCDB3D16E8198F3401178071
              20796AAF4D00D61BAC8F021801DBAAB2CAFFE43F44AA4028728E642F00000000
              49454E44AE426082}
            Properties.ReadOnly = True
            Style.BorderColor = clWindowFrame
            Style.BorderStyle = ebsSingle
            Style.HotTrack = False
            Style.TransparentBorder = True
            StyleDisabled.BorderStyle = ebsNone
            StyleFocused.BorderStyle = ebsNone
            StyleHot.BorderStyle = ebsNone
            StyleReadOnly.BorderStyle = ebsNone
            TabOrder = 11
            Transparent = True
            OnClick = cxImageMapClick
            Height = 24
            Width = 33
          end
          object cxImageEmail: TcxImage
            Left = 746
            Top = 597
            Picture.Data = {
              0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
              00100000001008060000001FF3FF610000001974455874536F66747761726500
              41646F626520496D616765526561647971C9653C00000028744558745469746C
              65004C65747465723B652D6D61696C3B656D61696C3B6D61696C3B54656D706C
              6174653B9BE1250C0000007449444154785EADCFCB09C0201444511B4C4B82C1
              9E928D8B57D94441E1C9E03F810B2E320735008E3A07AEFB0D316C140A805882
              DC24E0F2FFD08025A43FB615D040CCA81A60C478EF312A038C14A0F36980DFA8
              011149D1590134C61AC0632C3D81C67C034A034F196D0140B3FF000EF3C0A80F
              D2FBBDBA0743E2C20000000049454E44AE426082}
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 26
            OnClick = cxImageEmailClick
            Height = 24
            Width = 38
          end
          object cxImageEmailzwei: TcxImage
            Left = 746
            Top = 628
            Picture.Data = {
              0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
              00100000001008060000001FF3FF610000001974455874536F66747761726500
              41646F626520496D616765526561647971C9653C00000028744558745469746C
              65004C65747465723B652D6D61696C3B656D61696C3B6D61696C3B54656D706C
              6174653B9BE1250C0000007449444154785EADCFCB09C0201444511B4C4B82C1
              9E928D8B57D94441E1C9E03F810B2E320735008E3A07AEFB0D316C140A805882
              DC24E0F2FFD08025A43FB615D040CCA81A60C478EF312A038C14A0F36980DFA8
              011149D1590134C61AC0632C3D81C67C034A034F196D0140B3FF000EF3C0A80F
              D2FBBDBA0743E2C20000000049454E44AE426082}
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 27
            OnClick = cxImageEmailzweiClick
            Height = 24
            Width = 38
          end
          object cxImageEmaildrei: TcxImage
            Left = 745
            Top = 659
            Picture.Data = {
              0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
              00100000001008060000001FF3FF610000001974455874536F66747761726500
              41646F626520496D616765526561647971C9653C00000028744558745469746C
              65004C65747465723B652D6D61696C3B656D61696C3B6D61696C3B54656D706C
              6174653B9BE1250C0000007449444154785EADCFCB09C0201444511B4C4B82C1
              9E928D8B57D94441E1C9E03F810B2E320735008E3A07AEFB0D316C140A805882
              DC24E0F2FFD08025A43FB615D040CCA81A60C478EF312A038C14A0F36980DFA8
              011149D1590134C61AC0632C3D81C67C034A034F196D0140B3FF000EF3C0A80F
              D2FBBDBA0743E2C20000000049454E44AE426082}
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 30
            OnClick = cxImageEmaildreiClick
            Height = 24
            Width = 39
          end
          object cxImagenummer: TcxImage
            Left = 745
            Top = 439
            Picture.Data = {
              0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
              00100000001008060000001FF3FF61000000097048597300000EC100000EC101
              B8916BED00000016744558745469746C650050686F6E653B486F6D6550686F6E
              653B8259023B0000003B49444154785EE5D3A11100200C43511664296426EA76
              1FD33B06C8A506F1ED336917609503F6293A59402717601A78FD09E457983F24
              C59FC9EA02DA54E9A1CC2A3E4F0000000049454E44AE426082}
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 15
            OnClick = cxImagenummerClick
            Height = 24
            Width = 39
          end
          object cxImagenummerzwei: TcxImage
            Left = 745
            Top = 470
            Picture.Data = {
              0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
              00100000001008060000001FF3FF61000000097048597300000EC100000EC101
              B8916BED00000016744558745469746C650050686F6E653B486F6D6550686F6E
              653B8259023B0000003B49444154785EE5D3A11100200C43511664296426EA76
              1FD33B06C8A506F1ED336917609503F6293A59402717601A78FD09E457983F24
              C59FC9EA02DA54E9A1CC2A3E4F0000000049454E44AE426082}
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 18
            OnClick = cxImagenummerzweiClick
            Height = 24
            Width = 39
          end
          object cxImagenummerdrei: TcxImage
            Left = 745
            Top = 501
            Picture.Data = {
              0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
              00100000001008060000001FF3FF61000000097048597300000EC100000EC101
              B8916BED00000016744558745469746C650050686F6E653B486F6D6550686F6E
              653B8259023B0000003B49444154785EE5D3A11100200C43511664296426EA76
              1FD33B06C8A506F1ED336917609503F6293A59402717601A78FD09E457983F24
              C59FC9EA02DA54E9A1CC2A3E4F0000000049454E44AE426082}
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 21
            OnClick = cxImagenummerdreiClick
            Height = 24
            Width = 39
          end
          object cxCheckBoxAutoArchivieren: TcxCheckBox
            Left = 10000
            Top = 10000
            Hint = 'Autoarchiv'
            AutoSize = False
            Caption = 'Autoarchiv'
            Properties.Glyph.SourceHeight = 16
            Properties.GlyphCount = 0
            Properties.OnEditValueChanged = cxCheckBoxAutoArchivierenPropertiesEditValueChanged
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 31
            Transparent = True
            Visible = False
            Height = 24
            Width = 83
          end
          object cxTextEdit1: TcxTextEdit
            Left = 10000
            Top = 10058
            TabStop = False
            AutoSize = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.Edges = []
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Segoe UI'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.ReadOnly = True
            Style.TransparentBorder = False
            Style.IsFontAssigned = True
            TabOrder = 33
            Visible = False
            Height = 24
            Width = 491
          end
          object cxSpinEditArchiv: TcxSpinEdit
            Left = 10000
            Top = 10058
            AutoSize = False
            Properties.MaxValue = 1000.000000000000000000
            Properties.MinValue = 1.000000000000000000
            Properties.OnChange = cxSpinEditArchivPropertiesChange
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 32
            Value = 1
            Visible = False
            Height = 24
            Width = 59
          end
          object cxTreeListKategorie: TcxTreeList
            Left = 10000
            Top = 10000
            Width = 270
            Height = 660
            BorderStyle = cxcbsNone
            Bands = <
              item
              end>
            Images = Papierkorb.cxImageListKontaktKategorie
            LookAndFeel.SkinName = 'WXI'
            Navigator.Buttons.CustomButtons = <>
            OptionsView.CellAutoHeight = True
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupFooters = tlgfAlwaysVisible
            OptionsView.TreeLineStyle = tllsSolid
            ScrollbarAnnotations.CustomAnnotations = <>
            TabOrder = 0
            Visible = False
            OnEditValueChanged = cxTreeListKategorieEditValueChanged
            object cxTreeListKategorieColumnID: TcxTreeListColumn
              Visible = False
              Caption.Text = 'KategorieID'
              DataBinding.ValueType = 'Integer'
              Width = 84
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxTreeListKategorieColumnGroup: TcxTreeListColumn
              Caption.Text = 'Icons'
              Options.Editing = False
              Width = 70
              Position.ColIndex = 1
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxTreeListKategorieColumnGroup2: TcxTreeListColumn
              Caption.Text = 'Group'
              Width = 68
              Position.ColIndex = 2
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object cxTreeListKategorieColumnAusgewaehlt: TcxTreeListColumn
              PropertiesClassName = 'TcxCheckBoxProperties'
              Caption.Text = 'Ausgew'#228'hlt'
              DataBinding.ValueType = 'Boolean'
              Width = 48
              Position.ColIndex = 3
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
          end
          object dxLayoutControlKontaktGroup_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
            Hidden = True
            ItemIndex = 1
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItemAnrede: TdxLayoutItem
            Parent = dxLayoutGroupName
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Anrede'
            Control = ComboBoxAnrede
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 300
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItemTitel: TdxLayoutItem
            Parent = dxLayoutGroupName
            CaptionOptions.Text = 'Titel'
            Control = ComboBoxTitel
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 183
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItemName: TdxLayoutItem
            Parent = dxLayoutGroupName
            CaptionOptions.Text = 'Name *'
            Control = EditName
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 270
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutItemVorname: TdxLayoutItem
            Parent = dxLayoutGroupName
            CaptionOptions.Text = 'Vorname *'
            Control = EditVorname
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 269
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutItemGeburtsdatum: TdxLayoutItem
            Parent = dxLayoutGroupName
            CaptionOptions.Text = 'Geburtsdatum *'
            Control = exEditGeburtsdatum
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 183
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutItemStrasse: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Strasse *'
            Control = EditStrasse
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 300
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItemHausnummer: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup2
            CaptionOptions.Text = 'Hausnummer * '
            Control = Edithausnummer
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 160
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItemPLZ: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            CaptionOptions.Text = 'PLZ / Ort*  '
            Control = EditPLZ
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 57
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItemOrt: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Ort *'
            CaptionOptions.Visible = False
            Control = EditOrt
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 453
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutGroupName: TdxLayoutGroup
            Parent = dxLayoutGroup4
            CaptionOptions.Text = 'Name'
            ItemIndex = 2
            ShowBorder = False
            Index = 0
          end
          object dxLayoutGroupAdresse: TdxLayoutGroup
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Adresse'
            ItemIndex = 1
            Index = 1
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroupAdresse
            LayoutDirection = ldHorizontal
            Index = 1
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroupAdresse
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object dxLayoutItemImage: TdxLayoutItem
            Parent = dxLayoutGroup4
            CaptionOptions.Text = 'Image'
            CaptionOptions.Visible = False
            Control = cxImage1
            ControlOptions.OriginalHeight = 182
            ControlOptions.OriginalWidth = 232
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControlKontaktGroup_Root
            AlignHorz = ahClient
            AlignVert = avClient
            Index = 1
          end
          object dxLayoutItemComboTel: TdxLayoutItem
            Parent = dxLayoutGroup1
            CaptionOptions.Glyph.SourceHeight = 16
            CaptionOptions.Glyph.SourceWidth = 16
            CaptionOptions.Text = 'cxComboBoxTelefon'
            CaptionOptions.Visible = False
            Control = cxComboBoxTelefon
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 101
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItemComboTelzwei: TdxLayoutItem
            Parent = dxLayoutGroup2
            CaptionOptions.Text = 'cxComboBoxTelefonzwei'
            CaptionOptions.Visible = False
            Control = cxComboBoxTelefonzwei
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 101
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItemCombodrei: TdxLayoutItem
            Parent = dxLayoutGroup3
            CaptionOptions.Text = 'cxComboBoxTelefondrei'
            CaptionOptions.Visible = False
            Control = cxComboBoxTelefondrei
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 101
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItemEditTel: TdxLayoutItem
            Parent = dxLayoutGroup1
            CaptionOptions.Text = 'EditTelefon'
            CaptionOptions.Visible = False
            Control = EditTelefon
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 493
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItemEditTelzwei: TdxLayoutItem
            Parent = dxLayoutGroup2
            CaptionOptions.Text = 'EditTelefonzwei'
            CaptionOptions.Visible = False
            Control = EditTelefonzwei
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 493
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItemEditTeldrei: TdxLayoutItem
            Parent = dxLayoutGroup3
            CaptionOptions.Text = 'EditTelefondrei'
            CaptionOptions.Visible = False
            Control = EditTelefondrei
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 493
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItemComboEmail: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup10
            AlignHorz = ahLeft
            CaptionOptions.Text = 'cxComboBoxEmail'
            CaptionOptions.Visible = False
            Control = cxComboBoxEmail
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 101
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItemComboEmailzwei: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup10
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'cxComboBoxEmailzwei'
            CaptionOptions.Visible = False
            Control = cxComboBoxEmailzwei
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 101
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItemComboEmaildrei: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignHorz = ahLeft
            AlignVert = avClient
            CaptionOptions.Text = 'cxComboBoxEmaildrei'
            CaptionOptions.Visible = False
            Control = cxComboBoxEmaildrei
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 101
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItemEditEmail: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'EditEmail'
            CaptionOptions.Visible = False
            Control = EditEmail
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 493
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItemEditEmailzwei: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'EditEmailzwei'
            CaptionOptions.Visible = False
            Control = EditEmailzwei
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 494
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItemEditEmaildrei: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignVert = avTop
            CaptionOptions.Text = 'EditEmaildrei'
            CaptionOptions.Visible = False
            Control = EditEmaildrei
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 493
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutGroupKontaktDaten: TdxLayoutGroup
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Telefondaten'
            ItemIndex = 2
            Index = 2
          end
          object dxLayoutGroupEmail: TdxLayoutGroup
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Emailadresse'
            Index = 3
          end
          object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroupEmail
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup5
            Index = 1
          end
          object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahLeft
            Index = 0
          end
          object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroupEmail
            LayoutDirection = ldHorizontal
            Index = 1
          end
          object dxLayoutItemID: TdxLayoutItem
            Parent = dxLayoutGroupName
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'ID'
            Control = cxBenutzerID
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 57
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutGroup1: TdxLayoutGroup
            Parent = dxLayoutGroupKontaktDaten
            CaptionOptions.Text = 'New Group'
            ItemIndex = 2
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object dxLayoutGroup2: TdxLayoutGroup
            Parent = dxLayoutGroupKontaktDaten
            CaptionOptions.Text = 'New Group'
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object dxLayoutGroup3: TdxLayoutGroup
            Parent = dxLayoutGroupKontaktDaten
            CaptionOptions.Text = 'New Group'
            ItemIndex = 2
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 2
          end
          object dxLayoutGroup4: TdxLayoutGroup
            Parent = dxLayoutGroup5
            AlignHorz = ahClient
            CaptionOptions.Text = 'Name'
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            LayoutLookAndFeel = Papierkorb.Standart
            Control = cxImageMap
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 33
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItemEmail: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahLeft
            Control = cxImageEmail
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 38
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItemEmailzwei: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup6
            AlignHorz = ahLeft
            AlignVert = avBottom
            Control = cxImageEmailzwei
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 38
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahLeft
            Index = 2
          end
          object dxLayoutItemEmaildrei: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup8
            AlignVert = avClient
            Control = cxImageEmaildrei
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 39
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutGroup1
            Control = cxImagenummer
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 39
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutGroup2
            Control = cxImagenummerzwei
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 39
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutGroup3
            Control = cxImagenummerdrei
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 39
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutGroup6
            AlignHorz = ahLeft
            CaptionOptions.Visible = False
            Control = cxCheckBoxAutoArchivieren
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 83
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItemInforAutoArchivieren: TdxLayoutItem
            Parent = dxLayoutGroup6
            AlignHorz = ahClient
            Control = cxTextEdit1
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 313
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutGroup6
            AlignHorz = ahLeft
            Control = cxSpinEditArchiv
            ControlOptions.OriginalHeight = 24
            ControlOptions.OriginalWidth = 59
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutGroup5: TdxLayoutGroup
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Group'
            ShowBorder = False
            Index = 0
          end
          object dxLayoutGroup6: TdxLayoutGroup
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Autoarchivierung'
            ButtonOptions.ShowExpandButton = True
            Expanded = False
            LayoutDirection = ldHorizontal
            Index = 4
          end
          object dxLayoutGroup7: TdxLayoutGroup
            Parent = dxLayoutControlKontaktGroup_Root
            CaptionOptions.Text = 'Kategorie'
            ButtonOptions.ShowExpandButton = True
            Expanded = False
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutGroup7
            AlignHorz = ahLeft
            AlignVert = avClient
            Control = cxTreeListKategorie
            ControlOptions.OriginalHeight = 150
            ControlOptions.OriginalWidth = 270
            ControlOptions.ShowBorder = False
            Index = 0
          end
        end
      end
      object cxTabSheetVIPVerwaltung: TcxTabSheet
        Caption = 'VIP-Verwaltung'
        ImageIndex = 4
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 746
        object dxLayoutControlVIP: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 830
          Height = 743
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
          ExplicitHeight = 746
          object dxLayoutControlVIPGroup_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutGroupVIP: TdxLayoutGroup
            Parent = dxLayoutControlVIPGroup_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Group'
            CaptionOptions.Visible = False
            ShowBorder = False
            Index = 0
          end
        end
      end
      object cxTabSheetLieferantVerwaltung: TcxTabSheet
        Caption = 'Lieferant-Verwaltung'
        ImageIndex = 3
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 746
        object dxLayoutControlLieferant: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 830
          Height = 743
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
          ExplicitHeight = 746
          object dxLayoutControlLieferantGroup_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutGroupLieferant: TdxLayoutGroup
            Parent = dxLayoutControlLieferantGroup_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Group'
            CaptionOptions.Visible = False
            ShowBorder = False
            Index = 0
          end
        end
      end
      object cxTabSheetNotizen: TcxTabSheet
        Caption = 'Notizen'
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object EditNotizen: TcxMemo
          Left = 216
          Top = 296
          Lines.Strings = (
            'EditNotizen')
          Style.BorderStyle = ebsSingle
          Style.LookAndFeel.SkinName = 'Basic'
          StyleDisabled.LookAndFeel.SkinName = 'Basic'
          StyleFocused.BorderStyle = ebsSingle
          StyleFocused.LookAndFeel.SkinName = 'Basic'
          StyleHot.LookAndFeel.SkinName = 'Basic'
          StyleReadOnly.LookAndFeel.SkinName = 'Basic'
          TabOrder = 0
          Height = 26
          Width = 120
        end
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 830
          Height = 743
          Align = alClient
          TabOrder = 1
          LayoutLookAndFeel = Papierkorb.SkinLook
          ExplicitHeight = 746
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            Hidden = True
            ShowBorder = False
            Index = -1
          end
        end
      end
      object cxTabSheetDokumenten: TcxTabSheet
        Caption = 'Datei'
        ImageIndex = 2
        ParentShowHint = False
        ShowHint = True
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 746
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 830
          Height = 743
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = Papierkorb.SkinLook
          ExplicitHeight = 746
          object dxLayoutControl2Group_Root1: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            Hidden = True
            ShowBorder = False
            Index = -1
          end
        end
      end
    end
    object cxLabelColor: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      AutoSize = False
      Height = 9
      Width = 830
    end
  end
  object PopupMenuKontakt: TPopupMenu
    Images = Papierkorb.cxImageListStartlist
    Left = 720
    Top = 64
    object Kategorie1: TMenuItem
      Caption = 'Kategorie'
      ImageIndex = 53
      object Kategorie2: TMenuItem
        Caption = 'Mitarbeiter'
        ImageIndex = 92
        object Intern1: TMenuItem
          Action = AcIntern
        end
        object Extern1: TMenuItem
          Action = AcExtern
        end
      end
      object Kunde1: TMenuItem
        Caption = 'Kunde'
        ImageIndex = 92
        object VIP1: TMenuItem
          Action = AcVIP
        end
        object Standard1: TMenuItem
          Action = AcStandard
        end
        object Interessent1: TMenuItem
          Action = AcInteressent
        end
      end
      object Ohne1: TMenuItem
        Action = AcOhne
      end
      object Sontiges1: TMenuItem
        Action = AcSontiges
      end
      object Lieferant1: TMenuItem
        Action = AcLieferant
      end
      object Partner1: TMenuItem
        Action = AcPartner
      end
    end
    object Autoarchivieren1: TMenuItem
      Caption = 'Autoarchivierung'
      Hint = 'Autoarchivierung'
      ImageIndex = 10
      object Aktivieren1: TMenuItem
        Action = AcAktivieren
      end
      object Deaktivieren1: TMenuItem
        Action = AcDeaktivieren
        AutoCheck = True
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object VIPVerwaltung: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000102040A0204081500000007000000020000000000000000000000000000
        000200000007020408160102040A000000000000000000000000000000000000
        00000103061322519AEF07163A8C010308200000000800000005000000080103
        08210715378D204E98EF01030614000000000000000000000000000000000000
        00000000000A396AAAEE468EC9FF1E498AF70819419D050F1F480818419D1C46
        87F73E88C7FF3467A6EF0000000B000000000000000000000000000000000000
        000000000008265089D06DC5F4FF64BFF3FF519BD3FF3672B6FF4F99D2FF5BBA
        F1FF61BEF2FF25508BD400000009000000000000000000000000000000000000
        0000000000061A3E6FB17CC8F2FF4FB4F2FF55B9F3FF62BFF4FF53B6F2FF49B0
        F1FF70C1F0FF183A6EB200000007000000000000000000000000000000000000
        0000000000071636619B74BDE9FF5DBDF4FF54B8F3FF52B7F2FF50B7F3FF56B9
        F4FF6AB6E8FF15335E9C00000008000000000000000000000000000000000000
        000306101F3D3164A4F47ECBF2FF61C1F5FF5BBEF4FF5ABDF5FF58BCF5FF58BC
        F3FF72C3F0FF2E5FA1F40610204300000004000000000000000000000002050E
        1A332F5F9EEF87CFF3FF6BC9F8FF66C6F8FF64C5F7FF63C4F7FF61C2F6FF60C2
        F6FF62C2F5FF79C5F0FF2A599BEF050C19360000000300000000040A1324305D
        9AE9A7D8F2FFA0E0FCFF8BD8FBFF77CFF9FF6CCAF9FF6BC9F8FF69C9F9FF70CC
        F8FF84D4FAFF95DAF9FF9BD2EFFF2A5695EA030912270000000117375A85396B
        A2DE6397CAFF81B0D9FFA0CBE8FFB1E0F7FF79D4FAFF72CFFAFF76D1FAFFADDD
        F6FF9BC7E7FF7BABD6FF5D91C6FF34639DDF1431568600000002000000020000
        00040204060E0B192A42132D4B734A7FB5F1B1E8FDFF7CD5FCFFAEE6FCFF497C
        B4F1122C4A740A18294402040610000000050000000300000001000000000000
        0000000000000000000100000003142E4C7294C1E2FF99E2FFFF93BFE1FF132D
        4B72000000040000000100000001000000000000000000000000000000000000
        00000000000000000000000000000103040A3B70A6E1C2E7F8FF3B6FA6E10103
        040B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000110263C584F88C2FF0F253C590000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000021A3D6189000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'VIP-Verwaltung'
      Visible = False
      object VIPHistory: TMenuItem
        Action = AcVIPHistory
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000102040A0204081500000007000000020000000000000000000000000000
          000200000007020408160102040A000000000000000000000000000000000000
          00000103061322519AEF07163A8C010308200000000800000005000000080103
          08210715378D204E98EF01030614000000000000000000000000000000000000
          00000000000A396AAAEE468EC9FF1E498AF70819419D050F1F480818419D1C46
          87F73E88C7FF3467A6EF0000000B000000000000000000000000000000000000
          000000000008265089D06DC5F4FF64BFF3FF519BD3FF3672B6FF4F99D2FF5BBA
          F1FF61BEF2FF25508BD400000009000000000000000000000000000000000000
          0000000000061A3E6FB17CC8F2FF4FB4F2FF55B9F3FF62BFF4FF53B6F2FF49B0
          F1FF70C1F0FF183A6EB200000007000000000000000000000000000000000000
          0000000000071636619B74BDE9FF5DBDF4FF54B8F3FF52B7F2FF50B7F3FF56B9
          F4FF6AB6E8FF15335E9C00000008000000000000000000000000000000000000
          000306101F3D3164A4F47ECBF2FF61C1F5FF5BBEF4FF5ABDF5FF58BCF5FF58BC
          F3FF72C3F0FF2E5FA1F40610204300000004000000000000000000000002050E
          1A332F5F9EEF87CFF3FF6BC9F8FF66C6F8FF64C5F7FF63C4F7FF61C2F6FF60C2
          F6FF62C2F5FF79C5F0FF2A599BEF050C19360000000300000000040A1324305D
          9AE9A7D8F2FFA0E0FCFF8BD8FBFF77CFF9FF6CCAF9FF6BC9F8FF69C9F9FF70CC
          F8FF84D4FAFF95DAF9FF9BD2EFFF2A5695EA030912270000000117375A85396B
          A2DE6397CAFF81B0D9FFA0CBE8FFB1E0F7FF79D4FAFF72CFFAFF76D1FAFFADDD
          F6FF9BC7E7FF7BABD6FF5D91C6FF34639DDF1431568600000002000000020000
          00040204060E0B192A42132D4B734A7FB5F1B1E8FDFF7CD5FCFFAEE6FCFF497C
          B4F1122C4A740A18294402040610000000050000000300000001000000000000
          0000000000000000000100000003142E4C7294C1E2FF99E2FFFF93BFE1FF132D
          4B72000000040000000100000001000000000000000000000000000000000000
          00000000000000000000000000000103040A3B70A6E1C2E7F8FF3B6FA6E10103
          040B000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000110263C584F88C2FF0F253C590000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000021A3D6189000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      object VIPPrivilegien1: TMenuItem
        Action = AcVIPprivilegien
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000102040A0204081500000007000000020000000000000000000000000000
          000200000007020408160102040A000000000000000000000000000000000000
          00000103061322519AEF07163A8C010308200000000800000005000000080103
          08210715378D204E98EF01030614000000000000000000000000000000000000
          00000000000A396AAAEE468EC9FF1E498AF70819419D050F1F480818419D1C46
          87F73E88C7FF3467A6EF0000000B000000000000000000000000000000000000
          000000000008265089D06DC5F4FF64BFF3FF519BD3FF3672B6FF4F99D2FF5BBA
          F1FF61BEF2FF25508BD400000009000000000000000000000000000000000000
          0000000000061A3E6FB17CC8F2FF4FB4F2FF55B9F3FF62BFF4FF53B6F2FF49B0
          F1FF70C1F0FF183A6EB200000007000000000000000000000000000000000000
          0000000000071636619B74BDE9FF5DBDF4FF54B8F3FF52B7F2FF50B7F3FF56B9
          F4FF6AB6E8FF15335E9C00000008000000000000000000000000000000000000
          000306101F3D3164A4F47ECBF2FF61C1F5FF5BBEF4FF5ABDF5FF58BCF5FF58BC
          F3FF72C3F0FF2E5FA1F40610204300000004000000000000000000000002050E
          1A332F5F9EEF87CFF3FF6BC9F8FF66C6F8FF64C5F7FF63C4F7FF61C2F6FF60C2
          F6FF62C2F5FF79C5F0FF2A599BEF050C19360000000300000000040A1324305D
          9AE9A7D8F2FFA0E0FCFF8BD8FBFF77CFF9FF6CCAF9FF6BC9F8FF69C9F9FF70CC
          F8FF84D4FAFF95DAF9FF9BD2EFFF2A5695EA030912270000000117375A85396B
          A2DE6397CAFF81B0D9FFA0CBE8FFB1E0F7FF79D4FAFF72CFFAFF76D1FAFFADDD
          F6FF9BC7E7FF7BABD6FF5D91C6FF34639DDF1431568600000002000000020000
          00040204060E0B192A42132D4B734A7FB5F1B1E8FDFF7CD5FCFFAEE6FCFF497C
          B4F1122C4A740A18294402040610000000050000000300000001000000000000
          0000000000000000000100000003142E4C7294C1E2FF99E2FFFF93BFE1FF132D
          4B72000000040000000100000001000000000000000000000000000000000000
          00000000000000000000000000000103040A3B70A6E1C2E7F8FF3B6FA6E10103
          040B000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000110263C584F88C2FF0F253C590000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000021A3D6189000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      object Transaktionen1: TMenuItem
        Action = AcTransaktion
        Bitmap.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000102040A0204081500000007000000020000000000000000000000000000
          000200000007020408160102040A000000000000000000000000000000000000
          00000103061322519AEF07163A8C010308200000000800000005000000080103
          08210715378D204E98EF01030614000000000000000000000000000000000000
          00000000000A396AAAEE468EC9FF1E498AF70819419D050F1F480818419D1C46
          87F73E88C7FF3467A6EF0000000B000000000000000000000000000000000000
          000000000008265089D06DC5F4FF64BFF3FF519BD3FF3672B6FF4F99D2FF5BBA
          F1FF61BEF2FF25508BD400000009000000000000000000000000000000000000
          0000000000061A3E6FB17CC8F2FF4FB4F2FF55B9F3FF62BFF4FF53B6F2FF49B0
          F1FF70C1F0FF183A6EB200000007000000000000000000000000000000000000
          0000000000071636619B74BDE9FF5DBDF4FF54B8F3FF52B7F2FF50B7F3FF56B9
          F4FF6AB6E8FF15335E9C00000008000000000000000000000000000000000000
          000306101F3D3164A4F47ECBF2FF61C1F5FF5BBEF4FF5ABDF5FF58BCF5FF58BC
          F3FF72C3F0FF2E5FA1F40610204300000004000000000000000000000002050E
          1A332F5F9EEF87CFF3FF6BC9F8FF66C6F8FF64C5F7FF63C4F7FF61C2F6FF60C2
          F6FF62C2F5FF79C5F0FF2A599BEF050C19360000000300000000040A1324305D
          9AE9A7D8F2FFA0E0FCFF8BD8FBFF77CFF9FF6CCAF9FF6BC9F8FF69C9F9FF70CC
          F8FF84D4FAFF95DAF9FF9BD2EFFF2A5695EA030912270000000117375A85396B
          A2DE6397CAFF81B0D9FFA0CBE8FFB1E0F7FF79D4FAFF72CFFAFF76D1FAFFADDD
          F6FF9BC7E7FF7BABD6FF5D91C6FF34639DDF1431568600000002000000020000
          00040204060E0B192A42132D4B734A7FB5F1B1E8FDFF7CD5FCFFAEE6FCFF497C
          B4F1122C4A740A18294402040610000000050000000300000001000000000000
          0000000000000000000100000003142E4C7294C1E2FF99E2FFFF93BFE1FF132D
          4B72000000040000000100000001000000000000000000000000000000000000
          00000000000000000000000000000103040A3B70A6E1C2E7F8FF3B6FA6E10103
          040B000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000110263C584F88C2FF0F253C590000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000021A3D6189000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000000000
          0000000000000000000000000000000000000000000000000000}
      end
    end
    object LieferungVerwaltung1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000022316C7F3D59C3E6202F6679000000000000000000000000000000000000
        000022316C7F3D59C3E6202F6679000000000000000000000000000000000000
        0000415FD0F54463D8FF415FD0F5000000000000000000000000000000000000
        0000415FD0F54463D8FF415FD0F5000000000000000000000000000000000000
        000027397D944463D7FE2637788E000000000000000000000000000000000000
        000027397D944463D7FE2637788E000000000000000000000000000000000000
        0000000000000202050600000000000000000000000000000000000000000000
        0000000000000202050600000000000000000000000000000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF0000000000000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000004463D8FF4463D8FF0000000000000000000000000000
        00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF000000004463D8FF4463D8FF0000000000000000000000000000
        00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF000000004463D8FF4463D8FF0000000000000000000000000000
        00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF4463D8FF000000000000
        00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF4463D8FF000000000000
        00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF0000000000000000000000000000000000000000000000000000
        00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
        00004463D8FF0000000000000000000000000000000000000000000000000000
        00004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Lieferung-Verwaltung'
      Visible = False
      object LieferungVerwaltung2: TMenuItem
        Caption = 'Zahlungsbedingungen'
      end
      object Bewettungssystem1: TMenuItem
        Caption = 'Bewettungssystem'
      end
      object ProdukteDiensleistungen1: TMenuItem
        Caption = 'Produkte/Diensleistungen'
      end
      object Lieferbedingungen1: TMenuItem
        Caption = 'Lieferbedingungen'
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Speichern: TMenuItem
      Action = AcSpeichernundSchliessen
    end
    object zurcksetzen1: TMenuItem
      Action = AcZuruecksetzen
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
    LookAndFeel.SkinName = 'DevExpressDarkStyle'
    PopupMenuLinks = <>
    Style = bmsStandard
    UseSystemFont = True
    Left = 641
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
      FloatLeft = 625
      FloatTop = 176
      FloatClientWidth = 68
      FloatClientHeight = 168
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Images = Papierkorb.cxImageListStartlist
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButSpeichernSchliessen'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButSpeichern'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButZurueck'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarLargeButSpeichernSchliessen: TdxBarLargeButton
      Caption = 'Speichern und Schlie'#223'en'
      Category = 0
      Hint = 'Speichern und Schlie'#223'en'
      Visible = ivAlways
      ShortCut = 16467
      OnClick = AcSpeichernundSchliessenExecute
      AutoGrayScale = False
      LargeImageIndex = 31
      SyncImageIndex = False
      ImageIndex = 0
    end
    object dxBarLargeButZurueck: TdxBarLargeButton
      Caption = 'Zur'#252'cksetzen'
      Category = 0
      Hint = 'Zur'#252'cksetzen'
      Visible = ivAlways
      ShortCut = 16474
      OnClick = AcZuruecksetzenExecute
      AutoGrayScale = False
      LargeImageIndex = 12
      SyncImageIndex = False
      ImageIndex = 12
    end
    object dxBarLargeButSpeichern: TdxBarLargeButton
      Caption = 'Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivAlways
      OnClick = dxBarLargeButSpeichernClick
      AutoGrayScale = False
      LargeImageIndex = 40
      SyncImageIndex = False
      ImageIndex = 40
    end
    object dxBarLargeButNachricht: TdxBarLargeButton
      Caption = 'Nachricht'
      Category = 0
      Hint = 'Nachricht'
      Visible = ivNever
      AutoGrayScale = False
      LargeImageIndex = 60
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 673
    Top = 3
  end
  object MyConnection: TMSConnection
    Database = 'Kontaktdaten'
    Username = 'sa'
    Server = 'PC-SASA'
    Connected = True
    Left = 769
    Top = 3
    EncryptedPassword = '9EFF9CFF8DFF96FF9DFF9EFFCFFFC7FFDEFF'
  end
  object MSDataSourceNotizen: TMSDataSource
    DataSet = MSQueryNotizen
    Left = 801
    Top = 3
  end
  object MSQueryNotizen: TMSQuery
    Connection = MyConnection
    SQL.Strings = (
      
        'SELECT * FROM [Kontaktdaten].[dbo].[KontaktNotizen] WHERE Person' +
        'ID = 118'
      '')
    Left = 728
  end
  object cxImageListKontaktmenuIcon: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 2622008
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002634944415478DA8C535F48536114FF7DBBDBC4A6B9CA39
          8B88CA20D77A502B057BA828107D8820A87C8A5E2C9F0C05F1A120460F4A1A41
          58D243F607DA434459D44B64414894C8CACAAC70CB4D4A9BEECFDD76EF76B77B
          4FDFD5B0053276E0E3FBCEF9CEEFFC3F8C88C018834E1DFBD754302346CA4A0B
          EDC91421144ACD9904DA7B69383C851548C71AB2056915437B7695DAABAAB662
          BBA302268BD52EC631841CF49F818242E6349B2D3098D74230D9606016281938
          F336A0A432989E1121296638763BD170A41E6A46CD8587319B911249B45DEB43
          CAFF0BE1700496D5E55015197947904A2A6E04838884228886A2882C846034AB
          03791B18CD6C718D8CFA21C544C8891826FD09DC1ED75C791968B8FAC35DEFF2
          7C91CB0EE09B6F166F3D5F1130D6A0F561F267537FE45ECE1AECEBFEF0FB44B5
          C556575982F50B1226BC2A8A4C0A3614CEE3E8A10274DF6F696EEC4133E91EB9
          4BA38081C7ED685D1E86E6FE8F34E68BD3F99712F9A2449A46144BC8F4CEA7D0
          C93B2D746A1074F3136822DC4983FC3E7D1774F832AE2F0F52382A636A3EC527
          2F8E2BC341202383D249B8C74D08CCDC40ED4E404C000E6B0FA2FCAED901A81A
          CE2CA7108C480884D21045197ADB8FDF4A8041E0A19AF57051B7B103D5E5BD8B
          11B7D5123CB35D78443DFF6A10988B62CC1BC63AAB85A7A4E7A54B8545859809
          78F5BD0F4F3FF7E1DC41C2C5170CABB84C60594594BCAFCF3E894BBD2A2DF18B
          783240D38A50B9AD09EF8B9FA17233F066BA0B02FFF44CF29911F14057637FB7
          B184BF2B747EA556355E40A7508C639AC6BBC096C0CF5D68E7583FCB5EE71CB4
          891F5B16CF2B0DBF8EFD23C000BA3614668B9402290000000049454E44AE4260
          82}
        FileName = 
          '\\Srv-fs02\projektdaten\Projekte\LCPro\Icons\fatcow-hosting-icon' +
          's-3.9.2-all\fatcow-hosting-icons-3.9.2\FatCow_Icons16x16\user_ad' +
          'd.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002874944415478DA8C535B48145118FE66DD8BEBAA6D61BB
          2296A8A1890F2AEB66E84322919004E94B4A412026410F2552D0834412266917
          0AB5A21B06FAD0558288247D5029D02DCD102FB85ED614DD6D6667779C9DD99D
          F1341B64BBA1E2073FE7FAFDE73FE77C1F450801455108A2B670672AA5C68029
          4E6F1644029A16973511A4A0A98799C606087255A11301195D564B9C393B3B05
          E919A9D0188C660F872E6C81B0043A3D95A9D51AA0D2EE428466375494017E09
          99DB4EE01725CC2D78C0FBB5C8C8CD44F1F17CC892BC151FEAD001BF2AE07CEB
          4D88F34B6018370CB1F190FD02B65D8128F83BE174C24DBBC1D22CDCBF684468
          A5FBA17B269AFAC9E88D5EB261824129B97E60701EBCD703DFAA17E3F3AB68FF
          BE56FF77BDBEB181E8F727C11B1D8DAF75AF49D8158AEFCD76269A8DE53E930D
          9363CF313BE78027A114556FDA16C7177D0F8BDD6DD5559567F0A8FD312C740E
          E298957F151C6A1C5929CF3194D716ED40AE89474CA40C832680D4281AE78E68
          D1EAC8AAAE39918E074F3A60B51CC407D5271C683B9BBB2E868A9651629BE148
          5D2F4FEC2C21B232C9F032E99E23E4CBC534423E1712F222998C775D233597AF
          044BB7840989617D9876898AF238DCE971415214E5955488BA9B86BCB23DC04F
          27E0E530F4F1256E5FBF1A3CD916F68D4E370F071D00CB0A1064354A9E726898
          CA427E5912B0B0A4905DE81CDE8B532DB630F2FA1B389659D8EC0C8C916AC4E8
          75E84E2C81B5B202301601EC125E8DC4E3B4B715FF93D72BE0ED7D17DE717C73
          604DA516641D8E152440B722E3685E2C3ABE25E2E4E22D7FA4EBEDA5C0664AE4
          FA9A9F294D9F127F6C3995523A24DB7F601F3B81E119B102EF0F4F2A7ADCD091
          54A89D436009E98F29E1DBCCCEBF051800BDD3267435C29CC50000000049454E
          44AE426082}
        FileName = 
          '\\Srv-fs02\projektdaten\Projekte\LCPro\Icons\fatcow-hosting-icon' +
          's-3.9.2-all\fatcow-hosting-icons-3.9.2\FatCow_Icons16x16\user_ed' +
          'it.png'
      end>
  end
  object ActionListKontaktMenu: TActionList
    Images = Papierkorb.cxImageListStartlist
    Left = 680
    Top = 62
    object AcSpeichernundSchliessen: TAction
      Caption = 'Speichern und Schlie'#223'en'
      Hint = 'Speichern und Schlie'#223'en'
      ImageIndex = 31
      OnExecute = AcSpeichernundSchliessenExecute
    end
    object AcZuruecksetzen: TAction
      Caption = 'Zur'#252'cksetzen'
      Hint = 'Zur'#252'cksetzen'
      ImageIndex = 12
      OnExecute = AcZuruecksetzenExecute
    end
    object AcLieferant: TAction
      Caption = 'Lieferant'
      ImageIndex = 88
    end
    object AcIntern: TAction
      Caption = 'Intern'
      ImageIndex = 93
    end
    object AcExtern: TAction
      Caption = 'Extern'
      ImageIndex = 87
    end
    object AcVIP: TAction
      Caption = 'VIP'
      ImageIndex = 85
    end
    object AcStandard: TAction
      Caption = 'Standard'
      ImageIndex = 86
    end
    object AcInteressent: TAction
      Caption = 'Interessent'
      ImageIndex = 90
    end
    object AcOhne: TAction
      Caption = 'Ohne'
      ImageIndex = 92
    end
    object AcSontiges: TAction
      Caption = 'Sontiges'
      ImageIndex = 91
    end
    object AcPartner: TAction
      Caption = 'Partner'
      ImageIndex = 89
    end
    object AcAutoarchivieren: TAction
      Caption = 'Autoarchivierung'
      Hint = 'Autoarchivierung'
      ImageIndex = 10
    end
    object AcAktivieren: TAction
      Caption = 'Aktiviert'
      Hint = 'Aktivieren'
      OnExecute = AcAktivierenExecute
    end
    object AcDeaktivieren: TAction
      AutoCheck = True
      Caption = 'Deaktiviert'
      Hint = 'Deaktivieren'
      OnExecute = AcDeaktivierenExecute
    end
    object AcAutoArchivCheck: TAction
      Caption = 'Autoarchiv'
      Hint = 'Autoarchiv'
    end
    object AcVIPHistory: TAction
      Caption = 'VIP-Historie'
      OnExecute = AcVIPHistoryExecute
    end
    object AcVIPprivilegien: TAction
      Caption = 'VIP-Privilegien'
      OnExecute = AcVIPprivilegienExecute
    end
    object AcTransaktion: TAction
      Caption = 'Transaktion'
      OnExecute = AcTransaktionExecute
    end
  end
end
