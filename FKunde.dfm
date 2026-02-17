object FrameKundeVIP: TFrameKundeVIP
  Left = 0
  Top = 0
  Width = 1415
  Height = 169
  Align = alTop
  TabOrder = 0
  object dxPanelKunde: TdxPanel
    Left = 0
    Top = 0
    Width = 1415
    Height = 169
    Align = alClient
    TabOrder = 0
    object dxLayoutControlKunde: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 1413
      Height = 167
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      OptionsImage.Images = Papierkorb.cxImageListStartlist
      object cxTextEditPersonalmitarbeiter: TcxTextEdit
        Left = 136
        Top = 98
        AutoSize = False
        Enabled = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = False
        TabOrder = 1
        Height = 24
        Width = 121
      end
      object cxTextEditStatus: TcxTextEdit
        Left = 312
        Top = 98
        AutoSize = False
        Enabled = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = False
        TabOrder = 2
        Height = 24
        Width = 121
      end
      object ToolBar1: TToolBar
        Left = 12
        Top = 12
        Width = 1389
        Height = 33
        Align = alNone
        Caption = 'ToolBarKunde'
        Color = 16448250
        Images = Papierkorb.cxImageListStartlist
        ParentColor = False
        TabOrder = 0
        Transparent = True
        object ToolButtonStory: TToolButton
          Left = 0
          Top = 0
          Caption = 'ToolButtonStory'
          ImageIndex = 76
          OnClick = ToolButtonStoryClick
        end
        object ToolButTransaktion: TToolButton
          Left = 23
          Top = 0
          Hint = 'Transaktion'
          Caption = 'Transaktion'
          ImageIndex = 83
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButTransaktionClick
        end
      end
      object cxDateEditVipSince: TcxDateEdit
        Left = 735
        Top = 98
        AutoSize = False
        Enabled = False
        Properties.AllowDropDownWhenReadOnly = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = False
        TabOrder = 4
        Height = 24
        Width = 160
      end
      object cxMemoBesondereNotizen: TcxMemo
        Left = 1017
        Top = 98
        Lines.Strings = (
          'cxMemoBesondereNotizen')
        Properties.ReadOnly = True
        Properties.ScrollBars = ssVertical
        Style.HotTrack = False
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = False
        TabOrder = 6
        OnDblClick = cxMemoBesondereNotizenDblClick
        Height = 24
        Width = 255
      end
      object cxLabelJahr: TcxLabel
        Left = 902
        Top = 98
        Style.HotTrack = False
        Style.ReadOnly = True
        Style.TextStyle = [fsBold]
        Style.TransparentBorder = False
        Properties.LabelEffect = cxleCool
      end
      object cxCurrencyEditGesamtUmsatz: TcxCurrencyEdit
        Left = 524
        Top = 98
        AutoSize = False
        Enabled = False
        Properties.ReadOnly = True
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 3
        Height = 24
        Width = 121
      end
      object dxLayoutControlKundeGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ItemIndex = 1
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroupPrioritaet
        CaptionOptions.Text = 'Personalmitarbeiter'
        Control = cxTextEditPersonalmitarbeiter
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutGroupPrioritaet: TdxLayoutGroup
        Parent = dxLayoutControlKundeGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Glyph.SourceDPI = 96
        CaptionOptions.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000003F744558745469746C6500436F6E646974696F6E616C466F726D6174
          74696E7349636F6E5365745374617273333B436F6E646974696F6E616C466F72
          6D617474696E673BBD1216EC0000032C49444154785E45926D485B571CC69F73
          131793D4248B26EB5A496A8BA26E6E3ACA46192BD889C3B1C98476AC30F61206
          5DCBFAA576C240987BB5DD8B1F4A999B038BF8C142EBC656B73A669DB8B56C85
          958C2AAD7496D48A1A6B6362D47B73EF3DE7BF136F322F3C3CFC9F737FCFE1DE
          73D8A5F6DD2002400C04211DB999D078F21A1B7EF709CA06042BA3FFD7AD9951
          6606F9C74AD986334758193A56DBF94257F43DCAC4C42605E477196A6B817D33
          DC5C60853BD8E0D1C75EF604C36DE70E9B51E6D87196D45B395AE41082E0801D
          C437E19C1F7DB6D4E9F5074E3EF97A2BFEE8FEE044E4E9FB3F9230D798458248
          582E28574016CC5C150C8072EED0A36F57EC6B09398C1B28AF7F29D4383F7F48
          71579D02C0A520D251923404B73845CADEDA18F2F447AAF70DBCF548EBD8A7CD
          29BEF0039993ED64CE7D47A31FBD98EA7FA3F278CFC1F286C89EAD3E00055236
          29C6060FD77C52E42F39E82BDD59E67D3804EFF630BC8107615BFD1330328062
          87B9E529A41613589E8D2139378344EC762CB9B434F06AFF54BB32757BF94CE2
          5EDA5D59DF805DB5611417DD83B27C05B49E86D033202D2DE7DF651EC7AEC7B7
          A1AA7E2F12F7D3EE7FA697FBACC307948E866D7555655B479E3F72C057A0CF02
          DCB07E14114848877428306C0FE1A79EA164F456FCB9CFAF2CFEFD55532957CC
          A571D1313217BD39BDD03CFCCDF9355D2996BC019E5121A44857C1750D06F361
          B8F7E2DAC4BF8BFB257C4DBFFB3DE73C5BCB3598F15FF8FBA373575753A90175
          651D649A12CC6C80C2D0C0B88096D6B0924C9FEDBC1CBFACDF19304972C57E27
          14E23A84A9C3FA1E1674BA0B21D415803128853E10D9C0D5340ADD0FC0060401
          10991A88AB1082A06407C80190EF3B9D6185A7C0DC01C4664C8C5F9840ECAE09
          B8FCC8E6AE22E74E20C764952F209ED928F0F8BCA1C9BFA6F0ED17BF6ADD5D23
          BD17C7A79BBEEE1AEDEDE91AD726AF4EC3E5716F07F28C14017612D92681E66A
          BF33313BCF2EFC1CFFF266CA38FDDBBCB690BB7963CF248D8FE571BFB3B72618
          692AF73A21B43502411001EA8DD352A710D91D74BD56170800704829EAC46750
          AF9F90EACCDF56C72B35C5C137EB4A5CEBD10FB11EED405F4B19FE0365D3BD53
          AA437B1A0000000049454E44AE426082}
        CaptionOptions.Text = 'Priorit'#228'tinfo'
        ItemIndex = 2
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutGroupPrioritaet
        CaptionOptions.Text = 'Priorit'#228't'
        Control = cxTextEditStatus
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 1
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutControlKundeGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'ToolBar1'
        CaptionOptions.Visible = False
        Control = ToolBar1
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 29
        ControlOptions.OriginalWidth = 150
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutGroupPrioritaet
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'VIP-Kunde seit'
        Control = cxDateEditVipSince
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 160
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 3
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutGroupPrioritaet
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Besondere Notizen'
        Control = cxMemoBesondereNotizen
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 255
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutGroupPrioritaet
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Control = cxLabelJahr
        ControlOptions.OriginalHeight = 23
        ControlOptions.OriginalWidth = 3
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutGroupPrioritaet
        CaptionOptions.Text = 'Gesamtumsatz'
        Control = cxCurrencyEditGesamtUmsatz
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 2
      end
    end
  end
end
