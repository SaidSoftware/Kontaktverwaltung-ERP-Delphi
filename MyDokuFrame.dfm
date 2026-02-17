object FrameDoku: TFrameDoku
  Left = 0
  Top = 0
  Width = 507
  Height = 817
  Align = alClient
  TabOrder = 0
  object dxPanelDoku: TdxPanel
    Left = 0
    Top = 0
    Width = 507
    Height = 817
    Align = alClient
    TabOrder = 0
    object dxLayoutControlDokumenten: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 505
      Height = 815
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      object cxGridDokumenten: TcxGrid
        Left = 27
        Top = 59
        Width = 451
        Height = 243
        TabOrder = 2
        LookAndFeel.Kind = lfUltraFlat
        object cxGridDBTableViewDokumenten: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          OnCellClick = cxGridDBTableViewDokumentenCellClick
          OnCellDblClick = cxGridDBTableViewDokumentenCellDblClick
          OnSelectionChanged = cxGridDBTableViewDokumentenSelectionChanged
          DataController.DataSource = MSDataSourceDoku
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableViewDokumentenFileID: TcxGridDBColumn
            DataBinding.FieldName = 'FileID'
            DataBinding.IsNullValueType = True
            Visible = False
          end
          object cxGridDBTableViewDokumentenPersonID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'PersonID'
            DataBinding.IsNullValueType = True
            Visible = False
          end
          object cxGridDBTableViewDokumentenFileName: TcxGridDBColumn
            Caption = 'Dateiname'
            DataBinding.FieldName = 'FileName'
            DataBinding.IsNullValueType = True
            Options.Editing = False
            Width = 94
          end
          object cxGridDBTableViewDokumentenFileSize: TcxGridDBColumn
            Caption = 'Dateigr'#246#223'e'
            DataBinding.FieldName = 'FileSize'
            DataBinding.IsNullValueType = True
            OnGetDisplayText = cxGridDBTableViewDokumentenFileSizeGetDisplayText
            Options.Editing = False
            Width = 104
          end
          object cxGridDBTableViewDokumentenFileData: TcxGridDBColumn
            Caption = 'Dateidaten'
            DataBinding.FieldName = 'FileData'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxHyperLinkEditProperties'
            Visible = False
            Options.Editing = False
            Width = 118
          end
          object cxGridDBTableViewDokumentenDateUploaded: TcxGridDBColumn
            Caption = 'Hochgeladen'
            DataBinding.FieldName = 'DateUploaded'
            DataBinding.IsNullValueType = True
            Options.Editing = False
            Width = 93
          end
          object cxGridDBTableViewDokumentenColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Versanderlaubt'
            DataBinding.IsNullValueType = True
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ReadOnly = False
            Visible = False
            Width = 166
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableViewDokumenten
        end
      end
      object ToolBarDokuinfo: TToolBar
        Left = 12
        Top = 782
        Width = 481
        Height = 21
        Align = alNone
        ButtonHeight = 23
        Caption = 'ToolBarInfo'
        Color = 16448250
        EdgeBorders = [ebTop]
        ParentColor = False
        TabOrder = 0
        object cxTextEditDokuGefunden: TcxTextEdit
          Left = 0
          Top = 0
          TabStop = False
          AutoSize = False
          Properties.AutoSelect = False
          Properties.ReadOnly = True
          Style.BorderStyle = ebsNone
          Style.ReadOnly = True
          TabOrder = 1
          Height = 23
          Width = 201
        end
        object cxTextEditDokuInformation: TcxTextEdit
          Left = 201
          Top = 0
          TabStop = False
          AutoSize = False
          Properties.AutoSelect = False
          Properties.ReadOnly = True
          Style.BorderStyle = ebsNone
          Style.ReadOnly = True
          Style.Shadow = False
          TabOrder = 0
          Height = 23
          Width = 192
        end
      end
      object ToolBar1: TToolBar
        Left = 12
        Top = 12
        Width = 481
        Height = 21
        Align = alNone
        Caption = 'ToolBarMain'
        Color = 16448250
        Images = Papierkorb.cxImageListStartlist
        ParentColor = False
        TabOrder = 1
        object ToolButtonNeu: TToolButton
          Left = 0
          Top = 0
          Caption = 'Neu'
          ImageIndex = 27
          OnClick = ToolButtonNeuClick
        end
        object ToolButtonBearbeiten: TToolButton
          Left = 23
          Top = 0
          Caption = 'Bearbeiten'
          ImageIndex = 26
          OnClick = ToolButtonBearbeitenClick
        end
        object ToolButtonLoeschen: TToolButton
          Left = 46
          Top = 0
          Caption = 'L'#246'schen'
          ImageIndex = 24
          OnClick = ToolButtonLoeschenClick
        end
        object ToolButtonBereinigen: TToolButton
          Left = 69
          Top = 0
          Caption = 'Bereinigen'
          ImageIndex = 65
          OnClick = ToolButtonBereinigenClick
        end
      end
      object cxTreeListDok: TcxTreeList
        Left = 27
        Top = 347
        Width = 451
        Height = 409
        BorderStyle = cxcbsNone
        Bands = <
          item
          end>
        Images = cxImageListDoku
        LookAndFeel.SkinName = 'WXI'
        Navigator.Buttons.CustomButtons = <>
        OptionsBehavior.CellHints = True
        OptionsBehavior.ExpandOnDblClick = False
        OptionsData.Editing = False
        OptionsData.Appending = True
        OptionsData.Inserting = True
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        ScrollbarAnnotations.CustomAnnotations = <>
        TabOrder = 3
        OnClick = cxTreeListDokClick
        object cxTreeListDokColumnFileID: TcxTreeListColumn
          Visible = False
          DataBinding.ValueType = 'Integer'
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxTreeListDokColumnFileName: TcxTreeListColumn
          Caption.Text = 'Dateiname'
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxTreeListDokColumnFileSize: TcxTreeListColumn
          Caption.Text = 'Gr'#246#223'e'
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxTreeListDokColumnDateUploaded: TcxTreeListColumn
          Caption.Text = 'Hochgeladen an '
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxTreeListDokColumnVersandterlaubt: TcxTreeListColumn
          Visible = False
          Caption.Text = 'Versandt erlaubt'
          Position.ColIndex = 4
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
      object dxLayoutControlDokumentenGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 3
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroupDoku
        Control = cxGridDokumenten
        ControlOptions.OriginalHeight = 243
        ControlOptions.OriginalWidth = 461
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroupDoku: TdxLayoutGroup
        Parent = dxLayoutControlDokumentenGroup_Root
        Index = 2
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutControlDokumentenGroup_Root
        AlignVert = avBottom
        CaptionOptions.Visible = False
        Control = ToolBarDokuinfo
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 150
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControlDokumentenGroup_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'ToolBar1'
        CaptionOptions.Visible = False
        Control = ToolBar1
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 150
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutControlDokumentenGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Datei'
        CaptionOptions.Visible = False
        Index = 3
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxTreeListDok
        ControlOptions.OriginalHeight = 379
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object MSQueryDoku: TMSQuery
    Connection = MSConnectionDoku
    SQL.Strings = (
      'SELECT * FROM KontaktDateien;')
    Left = 336
    Top = 240
  end
  object MSConnectionDoku: TMSConnection
    Database = 'Kontaktdaten'
    Username = 'sa'
    Server = 'PC-SASA'
    Connected = True
    Left = 360
    Top = 176
    EncryptedPassword = '9EFF9CFF8DFF96FF9DFF9EFFCFFFC7FFDEFF'
  end
  object MSDataSourceDoku: TMSDataSource
    DataSet = MSQueryDoku
    Left = 440
    Top = 160
  end
  object cxImageListDoku: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 14680496
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002334944415478DA8C53CF6B1341187DDFCC6CD634896E1A
          DB1CFCD1D24B3DB5678BE84D1044440F522B5E3C7812C116042DF80F78281E14
          A4FE40143D79104151D0A39EAC816A139196484110344D4DD964B3D9F19B4D37
          66258A0F666767F77B6FDEBC8F21AD350C3E0DEEF812F8FE2E04017A83200495
          472BDF86A32F864B9140B13FAFF75C9F432820C46F9E59B77810A150AD2179F1
          D283D18DCAA948207C98B1E40C687DEBB65E4AF5EB52361F8EA293E77556EBF9
          79BD08A50DDE5F9DD3A554F67E24A0622E9B1EAC741AC24E843B532603ED3501
          DF07A904D6B8647CFA3C0AC92D53A5D92BC6E649D17D46B80D48DB864C2420A4
          446EE6029CB367F0FDF113E4F64DE06BCAC147AB0FE3751781D69386A5BAF9F0
          1A6DB265218C460750B91CAA9F5740FC7DEBD008B46F1C35DBF5310183FAA680
          5230FC607515ADE53214BB028B869952BB2E4297030A7F28162023C016ECB131
          D081FDF0DF2D808C0099568AB600B52D8898838671C019280B5248C8E121042B
          652427F642702B25DB922459A0DEC381391487A32C1BC41DB0A626E13F7F09BF
          B088CCA3BBF09E3E83AEAE431B07AF5F210A41C442341948B6D997847DE218E4
          C07658BB77A276E8289AF71E7602364E7B8758DB8075E430ECE973F0662E2358
          2870858232BBAEFF847FF34E182E069D5E4760B82E124C6E5DBB01FA50844CA5
          3B61C5E0797FE982998E9FE60009729BD3B1F9E7A582BBD6A9EF08FC005E14DF
          BC3D88CDCBF54F30D9D487AFD16D24A2119EB2F87F5498BBFC4B800100AFF0DB
          F76CB096080000000049454E44AE426082}
        FileName = 
          '\\Srv-fs02\projektdaten\Projekte\LCPro\Icons\fatcow-hosting-icon' +
          's-3.9.2-all\fatcow-hosting-icons-3.9.2\FatCow_Icons16x16\file_ex' +
          'tension_pdf.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002124944415478DA8C534F48544118FF7DF366D75DA28387
          10444932FA77E8106C4609DB218A4ED229CCBA869EBA0A115E422ACA83E0A1CB
          E22122BAE4592A3442D20D0F29D1C5AD0C02B3D4A5DAAD7D6F66FA669EFBDE5B
          56A479BCE19B6F7EBFDFF7CDF7CD903106769CBCF56AD568D36910AE771A06E2
          F3E268BE2B5A3357460B269FE8ED7130E22F2619BB870002795ADE7F7F78E6D1
          F29DB357EBFB32A9EF2B8537B30B1042445EAD354EE573987B3987C2D83954FD
          E2C0C4F00CEA223299A2B249A6253CCF8B7CA4341411FB5834F885C1BE1CB2A9
          B703E362D646B9D220E033D830D97871061084D2CA2ADADAF7E1F8CD22141FE7
          D8991C1F72B1BF49E08F56A8688ECAC5611E3C9E5813B58D320226EA74C6560E
          CA042C601A6B600B57F1037CBC7DDAADD77ED670EFF9173CB8D48DCB85F798BC
          7684530F33BBF8743D2AB4486640647078B4E8EC1BCF5670B7EF4018858919FE
          5F97CAE81899B729C6274C0A700550D5A13D72A10B5284510AFD87F0FBAFC2D0
          54097BF74887DB51C0370AB49DE6D1B62C1ECE7F73768B14B8CEE4C07623ED39
          5C9300EFB92E78A9B0858FDF7DC78B4F65673F59FA8185AF95708F3B6471444D
          1789DBCCCA99168983E34B0E2078EA66DB63DBFAADCF5EDF20914183408D6F9D
          E0289954EC4B35BC8518279B0508BEBDF7EE0804ECF2A42C4E6E632201BFBA35
          9DFD80F3BB51939958BC0B5B7FCE44649BDE8AFF1F9BCC2DFD13600007ECD222
          B04D59350000000049454E44AE426082}
        FileName = 
          '\\Srv-fs02\projektdaten\Projekte\LCPro\Icons\fatcow-hosting-icon' +
          's-3.9.2-all\fatcow-hosting-icons-3.9.2\FatCow_Icons16x16\file_ex' +
          'tension_doc.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002264944415478DA8C533D68145110FEDECFDE9126044185
          33EAC1258D5DEE042F48B0F0B0D2CA14C6463024858208B6D616868018B43068
          63B053B0502488F88312C11C440BC1204622225A284284DCEEBEF59BB7779BBB
          C30307DEBE79EFCD7C33DFCCAC4A92044FE66A3F5D1C0F880EC8926FD252A194
          82D6FA47EDFCD31D684A6A0B58F988736DFC146F9D98738F81A8210F80A68931
          F8F6E9C3F6C5D9F0CE910B2F4FA24D6C86166DE2D1BDDB304A238E37511A9DC6
          F0C149C4EF2FE3E1DD051CBBF8162E3A33B1380B4590890E002F2E423E978736
          1AAE1179E7D517D750DC164AFAF8BE01146AD799E0B9138FAF04013DC6C54DA7
          24E94F006B35022ED9D796E6313C76962C22ECDA3B8437572B787069043B07F7
          C025C9F1AE0C944FDBD051319A6216C5EA14D65EDFC0C6E715EC1BD9CF55F154
          631766C5EDA0E0E29000069A1557DCD7976FA178601AAF5616505F7AEE833816
          B95C1D93B67402C8318E08C0C85A0E6CC6EECA697CA9DF24250393B319805052
          6D5DD05B1442CF5D408C51F85A9FC76079523AE8EFACB55CC6DB01EA1F145C83
          2DD77E0614B32994A79AD8216BC28DA0DA196F875E194864AD22940ECF640643
          B519DEF18D96D6AADE19780A3203C4EC2F543383FEC268939666F15B00DD5D50
          29051BC8D8F661F5FE514E75943E719473B9BE74A49B54DBAB685B3F8B428420
          6FD3AB24E88842942D9576AABB8DBFFF84CFDE2DAF1F6A1F909EA252FBEC28D3
          45C412F501FCBFFCA2DF4751FE0A30001135D429764DC8380000000049454E44
          AE426082}
        FileName = 
          '\\Srv-fs02\projektdaten\Projekte\LCPro\Icons\fatcow-hosting-icon' +
          's-3.9.2-all\fatcow-hosting-icons-3.9.2\FatCow_Icons16x16\file_ex' +
          'tension_zip.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002404944415478DA8C534D48545114FEEE7D636F46677446
          628A22422327C29F6913044110D4A255658A1144B5761BD4B645EDA4A8485C46
          D42ADA45AD2A5A561686606A1334A2605A993ACDCC9BF76EDF79CF976FB44507
          0EEFDC7BCFF79DDFA78C31B878EFF58FAAEBA53D0FE0D11705318283520A96A5
          BF3D183C92C59A98D0518C73B75F9A391A5F5C63A6A9056A913A53A3F23BCBB7
          27E3DFCDC0AD170FA304A25A0E2E23AFBAC0D2DB6BD833DA8DB6D10EDC7D070C
          531D07B874FD194EEECFE0F4D1EEB324798488C47C3626EC30A39E3203E8246F
          AA684CF1D10B8AB0B486B3348FBECE2CB4EA1988DD79D5C0EB3382D561BD9E78
          965699CA4F14542F1AE992A0D64872B073374E0D8FE1C48DE73890CBC0F3BCDE
          BA0C248E26C1CDB6221BC688B49BD6E8C71781FE6339F41FCFC17303C2BF0D0C
          092403C387940E521212454359C0DC9B9D98550982CA48E46770684780084587
          868C3061051A972FA9573E5F41C949A1EC2451AE26512A5C453D3C4220A9D904
          6E1125D866FD0B5F4750E1142A3583720D582C8EA0867F66A0E1B2AC384136C1
          F1584094D97E01A5DFBF50AAACF8DF569E65E491B861139B610868B211AE21C7
          05E40F0FC1B28730713E8B7DF7E7E15658AADFF2643D417B731F3E4EECC5E4D8
          94BFB6EB2C1A2AD680EC828DA78FBBE055ABE8E86AA7FF14DFA7238BA49AE9DB
          82F4D65D01415D97142A97B7A1858B6258A7F889FF86315A1C9B85746B2692C1
          6691F98B9FF86FE801963FBD9F4C99F5E43783EBDF96C37BE5B32A959795C7FF
          0BFF51F3418C3F020C007612EA304C12563B0000000049454E44AE426082}
        FileName = 
          '\\Srv-fs02\projektdaten\Projekte\LCPro\Icons\fatcow-hosting-icon' +
          's-3.9.2-all\fatcow-hosting-icons-3.9.2\FatCow_Icons16x16\file_ex' +
          'tension_jpg.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000020B4944415478DA8C533B681541143DF3DB7D4610258595
          281649A3220AAF5122F8033F8D620A4D4010B4108B884190102C42F0536A4410
          5208B6269DF829D4180836A204021649D04644D4465F7CFB7666BC73977D6F97
          ACE0C0EECEFD9D3973EE5EE1BD4758FB6F6FFC9C5ABB29B7572D0148814F33D7
          7E6CC95D2157E746281E1A3C07EB1C84E8D4311EBD8472682CF46E6E8D0F3F9A
          1BF93D98C775112D495B78F3EA35A4546D00E72CF6EEEBC3CDC9BBF83066D1B4
          2B03181F450EA20B0C61E1A12203A50A0056C253D0284A4D80F3472F23566B06
          CC8D1149E133B278474BA709AD4A8F24C0C5E565ECE8D986FAAD2EECBA6E809E
          F970ABD32506AC43B8B092487CC2B65131237FFDFE056B8D46DFF63ABCA3836C
          E75C5D943908E885C5C4A9B7ECB9F4B84EBE14F7FBDFB13D34BD87F00D52629A
          5D9A3A5362400163625C9CDACDF68AFBD52E0E3E4D31410C3380550C4830E227
          B541975E8F0BD33B31D9BFC0FEB05F57EBA6D33575C5715EBE64A90B01991AF0
          C737F0E0C47BF69F9DEAE57D6093A0C97116BB8A4110D14B8F8963736DDFC393
          1FF97BEF78A6CB95170732B1AB008288268A31FCF210B5A943B3E59AB8737016
          F3DF66A1B4E6BC4A80208ED211B18C4A631013D8D59923F48B4B12B9562DA210
          D9B4E83882A898A518B5EC9767E544965F04481B78FEECC9D3C3FF9CC6E26052
          71C8E77D5E40CEADF4D980FF5F3FA976E9AF000300DA0DD8F89D7DE371000000
          0049454E44AE426082}
        FileName = 
          '\\Srv-fs02\projektdaten\Projekte\LCPro\Icons\fatcow-hosting-icon' +
          's-3.9.2-all\fatcow-hosting-icons-3.9.2\FatCow_Icons16x16\file_ex' +
          'tension_xls.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002214944415478DA8C53BD6B144114FFBD995DF7CE58A431
          20681492C642B0535008A412C12A8D318A10AF48A220B948422EE25D848B5EF4
          347E9C0A46E18AD346D20996B1F13F10C42F4240102CB4523137B3BE37BB7BE6
          B25738C3ECBE79F37BBFF7354361186274F6E6776B6DB7C85B47C893642AFA56
          AFCCF4B4F431D6938F181F1F3CE294240A72966E6F79C97FFDCBD79D23530BCF
          1AD5C2A9CD0EBC84CD349B78B9FA065A29E7513C1B63716CE030565EAD62A536
          8FF9FB8D61262126194E0814628FD686083C1F81CF6B5BFCE7C56A28260D377E
          A3786104FBFBF69D3C3B5379D116810C632D94F624D7280D6167D91A83DDBB7A
          303479DDE94E0C1EC5FBB5F5A13401874B6CD96403AE09A446B27FFB610DFD7B
          7BD1DFBB079EA7DD59AA06E2B169ACABC59372BE0D70667A1137A6734E1E2D54
          71E8E08134815048049EF61974DBC9862389D250387D69115A2B6483002147F0
          2FC98480A21404FC746112E7E69650AF4CA5EEC444A9E6709BECDB8BE8B197B1
          2BF7A039F9DCDC9DB83646AE047CADB13D1B385C8714B88DCCAC49E3D1D5B1D6
          E178B186E5F2C5D63E5F7EEC701D098C09A1B9CAE74B0FB1C1978A4871448489
          E203D75ACDFB20F01DAE63178C35DC26855A693C957BFEDA326ECDE650A8D61D
          8E521148C3599D09B2B8BCD488F20C2366F1BCA3AB0BC5BBCF91C96423256DE9
          C29F5F3F5FBFFBFC7120793CF1336C559B62038A65C12704E45E20511FCBDDF8
          FFF183ED3E89F05780010084D6E4626F0F91F90000000049454E44AE426082}
        FileName = 
          '\\Srv-fs02\projektdaten\Projekte\LCPro\Icons\fatcow-hosting-icon' +
          's-3.9.2-all\fatcow-hosting-icons-3.9.2\FatCow_Icons16x16\file_ex' +
          'tension_txt.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000002234944415478DA8C534D6B5341143DF3F1F25E53631292
          0A9AE8C222B5CBA6AD5B0517EEAD1F4DBA100441D095FE0E0B2D2EA55244772E
          2CEEB2AA20B8A8B8E842A108D204178DD6805469F266C63B33693E151CB8CCCC
          7DF79C7BEE9DFB9831065FEFB01F46210383D1657DCC59A3F81427BA6EE383A5
          BB10B8B074D77AFD57C6FCD99A56E4D038DCD99EA8C75B2F8ACF50E9E797DD2C
          718CFAF32760A20F4FD8E2CD5BD85D5BC7999706F9E5E9721D9F18919407093A
          326492C052120173120D918269300ED43470FAC147E4574B8B75F92120C4350B
          E33D020D1E0410649C4804190FA49372EC5C0EB8C1B0BBC0109E3D6F152F8C2A
          50317822A06CC4A95A646D703A1F6CBF4376FE12B2336D4A47F5293DD0E39E02
          4D0492B2137D545A446E55636C6E09877B35ECBFD900AEBFC2F7CD0DDF98BF12
          5009822473AE11CE53A37FEE21BC50A152001126D07C48658D852EEE1F0ADA10
          42403003397505BFD7AFBADDDEAD651EC510B63C8A1B2170AF1FDB123882B90A
          CCC137E89DB76E0F66CBE0CCCBB6DFA1D4C0BCF52950B009E44C056C3C8FF115
          E3767BE7DC43EC0BF9C11A1EA4A312120988C9CB683D9E059A5FC04F95206F57
          A1D2054F1025479AE809981B6EF02805FDFA3E84FA05A44F52236B74BF07919A
          805A99024FA6FD88B221023BBA56BF481D071A5B04CEF6E6B9F11E88A8B628E7
          7D14C78609F65BD844B57A119DFFA79BA1BF5BACE3663EBE70E4B6334FB33F49
          E70CFE7F3509F7D91EFE0830004BF4C66A309154A90000000049454E44AE4260
          82}
        FileName = 
          '\\Srv-fs02\projektdaten\Projekte\LCPro\Icons\fatcow-hosting-icon' +
          's-3.9.2-all\fatcow-hosting-icons-3.9.2\FatCow_Icons16x16\file_ex' +
          'tension_ai.png'
      end>
  end
end
