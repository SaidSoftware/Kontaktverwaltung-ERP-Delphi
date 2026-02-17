object FBesondereNotizen: TFBesondereNotizen
  Left = 0
  Top = 0
  Width = 640
  Height = 480
  TabOrder = 0
  object dxPanelBesondereNotiz: TdxPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    Align = alClient
    TabOrder = 0
    object dxLayoutControlBesondereNotiz: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 638
      Height = 478
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
      object cxMemoBesondereNotiz: TcxMemo
        Left = 10000
        Top = 10000
        Lines.Strings = (
          'cxMemoBesondereNotiz')
        Properties.ScrollBars = ssBoth
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 0
        Height = 389
        Width = 584
      end
      object dxLayoutControlBesondereNotizGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItemMemo: TdxLayoutItem
        Parent = dxLayoutGroupMemo
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxMemoBesondereNotiz
        ControlOptions.OriginalHeight = 89
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutGroupMemo: TdxLayoutGroup
        Parent = dxLayoutControlBesondereNotizGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'Besondere Notizen'
        ButtonOptions.ShowExpandButton = True
        Expanded = False
        Index = 0
        Buttons = <
          item
            Glyph.SourceDPI = 96
            Glyph.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              610000001974455874536F6674776172650041646F626520496D616765526561
              647971C9653C0000001B744558745469746C6500506167653B4F7269656E7461
              74696F6E3B466C69707F1D18BB0000003F49444154785EDDD2310A00200C4351
              0F9F7B47C9220E966006D1C22B9DFED44632A20580863A50CCF381C90B00B06D
              03C67C1918A280E8BE11589CFC41A403707C3DF921864B3B0000000049454E44
              AE426082}
            OnClick = dxLayoutGroupMemoButton0Click
          end>
      end
    end
  end
end
