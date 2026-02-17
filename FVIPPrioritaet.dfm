object FramePrioritaet: TFramePrioritaet
  Left = 0
  Top = 0
  Width = 409
  Height = 572
  Align = alClient
  TabOrder = 0
  object dxPanelPrioritaet: TdxPanel
    Left = 0
    Top = 0
    Width = 409
    Height = 572
    Align = alClient
    TabOrder = 0
    object dxLayoutControlPrioritaet: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 407
      Height = 570
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      CustomizeFormTabbedView = True
      object cxTextPersonalManager: TcxTextEdit
        Left = 121
        Top = 48
        AutoSize = False
        Enabled = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
        OnDblClick = cxTextPersonalManagerDblClick
        Height = 24
        Width = 274
      end
      object cxLookupVipStatus: TcxLookupComboBox
        Left = 111
        Top = 125
        Properties.ListColumns = <>
        Properties.ListSource = DataSourceVipStatus
        Properties.OnChange = cxLookupVipStatusPropertiesChange
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 2
        OnDblClick = cxLookupVipStatusDblClick
        Width = 269
      end
      object cxCurrencyTotalRevenue: TcxCurrencyEdit
        Left = 111
        Top = 227
        Enabled = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 5
        Width = 175
      end
      object cxTextEditGrundRabatt: TcxTextEdit
        Left = 111
        Top = 193
        Enabled = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = [fsBold]
        Style.HotTrack = False
        Style.TransparentBorder = False
        Style.IsFontAssigned = True
        TabOrder = 4
        Width = 269
      end
      object cxCheckBoxAktive: TcxCheckBox
        Left = 293
        Top = 227
        Caption = 'Aktiv'
        Properties.OnChange = cxCheckBoxAktivePropertiesChange
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 6
      end
      object cxTextEditPrioritaet: TcxTextEdit
        Left = 111
        Top = 159
        Enabled = False
        Properties.ReadOnly = False
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 3
        Width = 269
      end
      object ToolBar1: TToolBar
        Left = 12
        Top = 12
        Width = 383
        Height = 29
        Align = alNone
        Caption = 'ToolBar1'
        Color = 16448250
        Images = cxImageListPrioritaet
        ParentColor = False
        TabOrder = 0
        Transparent = True
        object ToolButtonViewHistory: TToolButton
          Left = 0
          Top = 0
          Caption = 'Status-Historie'
          ImageIndex = 2
          OnClick = cxButtonViewHistoryClick
        end
        object ToolButtonVIPPrivilegien: TToolButton
          Left = 23
          Top = 0
          Caption = 'Privilegien'
          ImageIndex = 3
          OnClick = cxBtVIPPrivilegienClick
        end
        object ToolButtonTransaktion: TToolButton
          Left = 46
          Top = 0
          Caption = 'Transaktion'
          ImageIndex = 4
          OnClick = cxButtonTransaktionClick
        end
      end
      object dxLayoutControlPrioritaetGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItemManager: TdxLayoutItem
        Parent = dxLayoutControlPrioritaetGroup_Root
        CaptionOptions.Text = 'Personalmitarbeiter'
        Control = cxTextPersonalManager
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutItemVipStatus: TdxLayoutItem
        Parent = dxLayoutGroupActions
        CaptionOptions.Text = 'VIP-Status'
        Control = cxLookupVipStatus
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 243
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItemRevenue: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        CaptionOptions.Text = 'Gesamtumsatz'
        Control = cxCurrencyTotalRevenue
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 175
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutGroupActions: TdxLayoutGroup
        Parent = dxLayoutControlPrioritaetGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Actions'
        ItemIndex = 3
        Index = 2
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutGroupActions
        CaptionOptions.Text = 'Grundrabatt%'
        Control = cxTextEditGrundRabatt
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 243
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 2
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutAutoCreatedGroup3
        CaptionOptions.Text = 'cxCheckBox1'
        CaptionOptions.Visible = False
        Control = cxCheckBoxAktive
        ControlOptions.OriginalHeight = 30
        ControlOptions.OriginalWidth = 52
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = dxLayoutGroupActions
        LayoutDirection = ldHorizontal
        Index = 3
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutGroupActions
        CaptionOptions.Text = 'Priorit'#228't'
        Control = cxTextEditPrioritaet
        ControlOptions.OriginalHeight = 27
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutControlPrioritaetGroup_Root
        CaptionOptions.Text = 'ToolBar1'
        CaptionOptions.Visible = False
        Control = ToolBar1
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 29
        ControlOptions.OriginalWidth = 150
        ControlOptions.ShowBorder = False
        Index = 0
      end
    end
  end
  object QueryVipStatus: TMSQuery
    Left = 336
    Top = 64
  end
  object DataSourceVipStatus: TMSDataSource
    Left = 240
    Top = 88
  end
  object MSQueryDiscount: TMSQuery
    Connection = MyDataModule.MyConnections
    SQL.Strings = (
      'SELECT *FROM VipPrivilegien;')
    Left = 328
    Top = 376
  end
  object MSDataSourceDiscount: TMSDataSource
    DataSet = MSQueryDiscount
    Left = 296
    Top = 184
  end
  object cxImageListPrioritaet: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 19923200
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C000001854944415478DAA452BF4BC34014BE4B2E5DEC507F900C
          0A76A84E0E0A7568A87F814BA90852FCD7A4835241543A4807E9269D9DDCC596
          A249AD4B2D8D3689DF4B7307C5B42ABEF0B8CBFBDEF7BD77778F8761C8FE63E2
          A6D18836411030DFF79F21689128E79CE9BAFE08E801F17D19833B885B9AA64D
          0424F9733C6EEFD9B6659AA652BFAED7B358B2E55249C51CC731EF5AAD7BC330
          7648448BC99D62A1B046E4B35A4D25A332F38193855809A39CA26D6F83734E5C
          0D4917A8BC6A59167B6A77188F5B5326EF88AAC1DD5E8F512E3847E05E0A9CED
          5056A684CD5C2EF9B6A0B301ECB6D98CBA39AE54A01D1E8820AE40016983C180
          A5D3E929FE70F8CE76F3F9C8A51157C816FBAF6F7121DC363E36CD67DEE8838D
          46DE04832D2D2F46C713EA3D05B67CCE7B1B62EA382A2E37BAD0E70E0CDE3E59
          F8A7845F0B087420C79A26EE5BE20C5CB0F827BA8379339F84832B34CEFFDCB6
          34E2F2936AF52A93C9948378641588A1C2A475E1FD542AB59584BBAE7B4AE5D7
          E12B338A78F0317C6106FEF225C000716DA718A55006F30000000049454E44AE
          426082}
        FileName = 
          '\\Srv-fs02\projektdaten\Projekte\LCPro\Icons\fatcow-hosting-icon' +
          's-3.9.2-all\fatcow-hosting-icons-3.9.2\FatCow_Icons16x16\documen' +
          't_view_book.png'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000017744558745469746C65004167656E64613B5363686564756C65723B
          CAFBF418000001B149444154785E8D53B16E1341107D8B4F2920519A28FF4045
          938622A952C4F6D9C84628F441E407F884FC4422E503288CC19C8D91D2809100
          A5494A246A0A4A10C1BA9BD9C98C467787902ECA939EDE8C66F7CD68B41B0024
          CA3BA811D084BA26CAA8A4F0F149EF430BD88931224681A9285969B03CB2E762
          CA7E2E275A3CFD72BE9B24013BF7076D40FC322203AC3191B762CB194CAACA48
          7686F07972B60DA09544113B84E5F76F6EC0DED12EBA81E56C5AC5ADD535EB67
          0889D8D8790E2682908F2FC4A66E40A5A1D5D8EB85AA4437B81C1EE1E1FE03AC
          B1A084045F1354C55BD585E079F6F202F8BA151222EFF4E3E72FDC169B1BAB28
          0AF60988485560BEC7930E0EFB33ECA50334619E8DC122A50192A28888E2231F
          F666A698BF1DA31102D87AF49E4F5010012210E549D6C5F3748A767F8826BC9B
          BC52039B80E0063957CFEA995E369DEAA126589DE51F030B04BEEDD3698A836E
          86F4D16334217B334264D43BC835B091CCE5A09399227B3DBA790722A0720716
          0880F5F57B5E0F6E5642AAB40CDCA020F609AEAE7E2F5E1CBDDF8688D7A56E55
          BFAAAA56C5F9F2CF2713ABDE55AEFCF78DC32DBE73AEFC7B0DAF7343EC0A99F3
          400000000049454E44AE426082}
        FileName = 'Images\Scheduling\AgendaView_16x16.png'
        Keywords = 'Scheduling;AgendaView'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001D744558745469746C650043616C656E6461723B5363686564756C65
          723B5669657785A932520000022749444154785E8D93CF4B545114C7BF6FE651
          1839D8F457B46AE3C640712144508B82A85DBB681515495308868C8454630B2B
          A2DAB4CA36516AA33625E314D3508B468BB0EC07445612D5A84DFAEE8FD3BDE7
          CE7B031AD181CBE79C7BCE3BE77B2FF779007C0031D4CDC36A5B9B23036D28BD
          C9BDBBF271A04D6B0DAD0996649632B4C6FBCAC564A95C5D206561FF93A71DBE
          EFA16DCBEE1D00B98FA115A08C2FA51BA56CACA0A4A1595ADA1A89E2DD5C2B80
          B8AF89B8687976C635503C91F7AC11C78A19FAF18D8D207247F2C9CA0E022829
          4192E51B2AA6359261439B73FB240C49BB06E53D69B4ECDB8A4645088DBCDA35
          19921B554F782E1E1E7C0E949ABD98946ED2ADD169CCCD2F60303B85CF5F1770
          F35E8DC3657C995F44A5FF0496BE7FC3CFF39D7C89422856E09DBB5EA223079A
          F161AE827F59C20F581511D0904C62E0C6339C3AB42D1113424313902FBD0369
          60A238CB7CF0F80D737CF235535CED85B6BCD2E328B453D03350A0D4C116BCFF
          54098FFD5726E22BD10B6A68DA8CCCB522D2C7DA9B622250BC79BF30C34AC6F2
          AF9823132F9943B9174C71B1DB9DFD421714190AE914A4FA7274FA683BDE7EFC
          51BFE5B564055493B0DE28E8BB9447A66BFBA6582014771E31932C87C6A79977
          46A798B7B365669049812CCF76421341867770B83B4B674E7660A95A7B793C11
          915114460E23DDFF10977B7726FD6A75B1703C3DD60AA248625416BDAA2817F9
          C1F2AF471636BB01C0BA55BFB1F71FBF7360F8FB0FFBFD934CCFEEFED0000000
          0049454E44AE426082}
        FileName = 'Images\Scheduling\Calendar_16x16.png'
        Keywords = 'Scheduling;Calendar'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001B744558745469746C65004E65773B4E65774F70706F7274756E6974
          6965733BA304E2950000007F49444154785EA591B10D80300C04B35356A06708
          0A7A06A363038660052858C1E0E2A517E2E558413A1C8A3B1928D73632C6CF66
          16C262E5990D400295B7522060E02BDCFB525EEC0F77C20DA240F80D201CD300
          4440FC0504CE75D601BFE17DFDEC93249E61C0FC1232C4A680901201221D6841
          0698FC065938D0437FE001A384E8D9F103C4C20000000049454E44AE426082}
        FileName = 'DevAV\Actions\NewOpportunities_16x16.png'
        Keywords = 'Actions;NewOpportunities'
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001F744558745469746C650043757272656E63793B446F6C6C61723B42
          75636B3B4575726FF8F3458F0000037549444154785E6D926D4C93571CC59F39
          5DB2AF33CE148863049C18A0C01282056513A180AB9452DE6A7989348E017333
          5829C2267305B514C69649E54DB4D5A69A011554E22842B7156A2BD8F1566AC1
          021D6BC065166921B097B3E721DB87A5DEE42437B9E7FCEEF9DF5CE2EF753341
          AE571E5EE0FA8ED767C926EA797313F55918ABCB9A1FADCD6C1EACE2F852E71B
          4B1A62549A4100F89F36C3C3920CE6F857992BBF6AEAE0B2F5E0CF65035CD36A
          D87BCEC35493BE3224662750BEC717389E809FCEA5F8FE2C4D77BEB076617DB1
          0723120E7A78013056B1B03AA3C0EFA636729FB2DC752ADECFF0E5114F8051CC
          BEF44B6F1D3696DA31DE948B87D51CB866D4183C7704F3B78BB0325E035B6739
          7EF82CA9816CB1C503A0AF642DB89EDEC4FA5C33BAF342F1DBA306B8CDB5587B
          AAC0CAD8C559A7FEB46E492756F78BE2BE21015B2908354E590B83A044FC5891
          B8BE36DB02458237E44C2FC8E3BD70358EB6EA349C314E690ADA9B9489962FAE
          1C709166889A1976A16C5F6B9124DC8F02599C32827870FAD0C2F3E16A72845E
          A83243B068B88CB5B976E3832E5E6F794BD41FD7B5020CD9AA61792EC3A04D0C
          F9C0319436EE737D2C7DF7F0669B3B27F63759941FE285A912BADA1C741747CE
          8EA8733ACA1A191BDA2767F168B102FD7601B865BEE89B3F06BDA3147D536528
          B914B1CC17ED0D205AB3C377DFFD24DA65BF5B08E7480D3A8B6374A5C2C029C5
          403E193C8E7BB634A4087781FDAF64030771DF968D2B1A3E0A2ED29B08AAC655
          7EE8079DC7235CC35FB3B1A015AB85DF46AE7E6F2D42F70C07D71F2781F5A90F
          EE4F17406B2FC66D2B07B7A612D165CE2301410E626DEE3B0AF2AA3479CF1EC5
          D190367956B0EC2349F05FDDD634743C61A1D39A8CF3B70E815944C3898620A8
          CC71504EC64235990041D5DE0D42954D2754FCE0CD1F498148BD9E2F0E742846
          E2C99B98A4310E6A6B2A593B1F07053B51A1A4E3DAE87E5CD64721E7EC6EC7CB
          FEF656DE19FFB6EA0E066E4CBC0F998E8198BC1D9B3A90BB038DBAF7D06A8A44
          E5CD3070856F5F7B19604B6C362D88FFB9BFBBBE3F02F2D118DC99E6218ABF9D
          9C3F830C3320D58422B3DCCF1DCD7D93EE014817BD4541B631055EA969A25D6E
          615B206AFBC2A0B67051D3178292D677902AF471C7E6EC4C277DAF7900524FF9
          FCF71EDB1829DBE9870B6937924FFA3C63977823F9A4F7B3A4429A3282F54618
          15A67CFF00D461458D1C2631660000000049454E44AE426082}
        FileName = 'Images\Miscellaneous\Currency_16x16.png'
        Keywords = 'Miscellaneous;Currency'
      end>
  end
  object ActionList1: TActionList
    Left = 256
    Top = 400
    object Action1: TAction
      Caption = 'Action1'
    end
    object Action2: TAction
      Caption = 'Action2'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 288
    Top = 448
    object TMenuItem
    end
    object TMenuItem
    end
    object TMenuItem
    end
  end
end
