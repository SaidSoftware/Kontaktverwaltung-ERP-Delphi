object TerminEditor: TTerminEditor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = '[Neu] Termin Editor'
  ClientHeight = 662
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001002000680400001600000028000000100000002000
    000001002000000000000004000000000000000000000000000000000000FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
    0030000000330000003300000033000000330000003300000033000000330000
    0033000000330000003300000033000000330000003300000033000000304396
    D0F24094D0FF3F92CFFF3F92CEFF3F92CEFF3F92CEFF3E92CEFF3E92CEFF3E92
    CEFF3E92CEFF3F92CEFF3F92CEFF3F92CEFF3F92CFFF4194D0FF4396D0F24094
    D0FFA0FAFFFF96F4FFFF96F3FFFF96F2FFFF95F2FFFF95F2FFFF95F2FFFF95F2
    FFFF95F2FFFF95F2FFFF96F2FFFF96F3FFFF97F4FFFF9BF4FFFF4094D0FF3E92
    CFFFA1F4FFFF62BFE8FF7BD9F7FF8DEBFFFF8CE9FFFF8BE8FFFF8BE8FFFF8BE8
    FFFF8BE8FFFF8CE9FFFF8DEBFFFF7BD9F7FF62BFE8FFA1F4FFFF3E92CFFF3D92
    CEFFA6F2FFFFC1F6FFFF4FA9DDFF5EB8E4FF88E9FFFF88E9FFFF88E9FFFF88E9
    FFFF88E9FFFF88E9FFFF5EB8E4FF4FA9DDFFC1F6FFFFA6F2FFFF3D92CEFF3D92
    CEFFADF2FFFF7BE2FEFFD4F9FFFF4EA9DCFF83E8FFFF53ADDDFF3289CAFF3289
    CAFF53ADDDFF83E8FFFF4EA9DCFFD4F9FFFF7BE2FEFFADF2FFFF3D92CEFF3D92
    CFFFB5F2FFFF77DEFCFF77DFFCFFEDFFFFFF56B6E4FF50ADDFFFFFFFFFFFFFFF
    FFFF50ADDFFF56B6E4FFEDFFFFFF77DFFCFF77DEFCFFB5F2FFFF3D92CFFF3C92
    CFFFBDF3FFFF74DBFCFF76DDFDFF5CBEEAFF4BA9DDFFF3FFFFFF78E1FEFF78E1
    FEFFF3FFFFFF4BA9DDFF5CBEEAFF76DDFDFF74DBFCFFBDF3FFFF3C92CFFF3B92
    CFFFC7F5FFFF70DAFCFF66CCF3FF4FAEDFFFE8FEFFFF74DDFCFF77DDFBFF77DD
    FBFF74DDFCFFE8FEFFFF4FAEDFFF66CCF3FF70DAFCFFC7F5FFFF3B92CFFF3B92
    CFFFD0F8FFFF65D2F9FF4AAADEFFD8F7FFFF6BD7FBFF6FD7FAFF71D7FAFF71D7
    FAFF6FD7FAFF6BD7FBFFD8F7FFFF4AAADEFF65D2F9FFD0F8FFFF3B92CFFF3B92
    CFFFD9FBFFFF46B0E4FFC2EFFDFF5ED0F8FF61D0F8FF63D0F8FF63D1F8FF63D1
    F8FF63D0F8FF61D0F8FF5ED0F8FFC2EFFDFF46B0E4FFD9FBFFFF3B92CFFF3D94
    D0FFE9FFFFFFE6FEFFFFE5FDFFFFE6FDFFFFE7FDFFFFE8FDFFFFE8FDFFFFE8FD
    FFFFE8FDFFFFE7FDFFFFE6FDFFFFE5FDFFFFE6FEFFFFE9FFFFFF3D94D0FF4297
    D2B03C94D0FF3992CFFF3991CFFF3991CFFF3991CFFF3991CFFF3991CFFF3991
    CFFF3991CFFF3991CFFF3991CFFF3991CFFF3992CFFF3C94D0FF4297D2C5FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
    0000000000000000000000000000000000000000000000000000000000000000
    00000000000000000000000000000000000000000000FFFF0000FFFF0000}
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object dxPanelDateiChoise: TdxPanel
    Left = 0
    Top = 38
    Width = 600
    Height = 624
    Align = alClient
    TabOrder = 0
    object cxPageControlEditor: TcxPageControl
      Left = 0
      Top = 0
      Width = 598
      Height = 622
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = cxTabSheetKDaten
      Properties.CustomButtons.Buttons = <>
      Properties.Images = Papierkorb.cxImageListStartlist
      LookAndFeel.SkinName = 'WXI'
      ClientRectBottom = 621
      ClientRectLeft = 1
      ClientRectRight = 597
      ClientRectTop = 29
      object cxTabSheetKDaten: TcxTabSheet
        Caption = 'Kalenderdaten'
        object dxLayoutControlEditor: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 596
          Height = 592
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
          object cxDateEditBeginn: TcxDateEdit
            Left = 91
            Top = 95
            Properties.DateButtons = [btnClear, btnNow, btnToday]
            Properties.InputKind = ikRegExpr
            Properties.ShowOnlyValidDates = True
            Properties.View = cavModern
            Properties.OnChange = cxDateEditBeginnPropertiesChange
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 1
            Width = 86
          end
          object cxDateEditEnde: TcxDateEdit
            Left = 91
            Top = 129
            Enabled = False
            Properties.DateButtons = [btnClear, btnNow, btnToday]
            Properties.ShowOnlyValidDates = True
            Properties.View = cavModern
            Properties.OnChange = cxDateEditEndePropertiesChange
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 3
            Width = 87
          end
          object cxComboBoxErinnnerung: TcxComboBox
            Left = 91
            Top = 163
            Properties.OnChange = cxComboBoxErinnnerungPropertiesChange
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 5
            Text = 'Keine'
            Width = 174
          end
          object cxImageComboBoxZustand: TcxImageComboBox
            Left = 91
            Top = 197
            Properties.Items = <>
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 6
            Width = 174
          end
          object cxButtonAuswahl: TcxButton
            Left = 302
            Top = 58
            Width = 75
            Height = 25
            Caption = 'Auswahl'
            TabOrder = 8
            OnClick = cxButtonAuswahlClick
          end
          object cxCheckBoxAlleTeilnehmer: TcxCheckBox
            Left = 302
            Top = 113
            Caption = 'Alle Teilnehmer'
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 10
            OnClick = cxCheckBoxAlleTeilnehmerClick
          end
          object cxMemoBemerkung: TcxMemo
            Left = 27
            Top = 382
            Align = alClient
            Lines.Strings = (
              'cxMemoBemerkung')
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 14
            Height = 209
            Width = 542
          end
          object cxTextEditOrt: TcxTextEdit
            Left = 344
            Top = 283
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 13
            Width = 225
          end
          object cxImageComboBoxTyp: TcxImageComboBox
            Left = 344
            Top = 215
            Properties.DefaultDescription = 'Ohne'
            Properties.DefaultImageIndex = 8
            Properties.Images = Papierkorb.cxImageListKalender
            Properties.Items = <
              item
                Description = 'Ohne'
                ImageIndex = 8
                Value = '0'
              end
              item
                Description = 'Liefertermin'
                ImageIndex = 4
                Value = '1'
              end
              item
                Description = 'Fertigungstermin'
                ImageIndex = 1
                Value = '2'
              end
              item
                Description = 'Privat'
                ImageIndex = 6
                Value = '3'
              end
              item
                Description = 'Urlaub'
                ImageIndex = 2
                Value = '4'
              end
              item
                Description = 'Muss teilnehmen'
                ImageIndex = 5
                Value = '5'
              end
              item
                Description = 'Reise erforderlich'
                ImageIndex = 0
                Value = '6'
              end
              item
                Description = 'Vorbereitung erforderlich'
                ImageIndex = 7
                Value = '7'
              end>
            Properties.ReadOnly = False
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 11
            Width = 225
          end
          object cxTextEditThema: TcxTextEdit
            Left = 344
            Top = 249
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 12
            Width = 225
          end
          object cxCheckBoxGanzerTag: TcxCheckBox
            Left = 27
            Top = 58
            Caption = 'ganzt'#228'tiger Termin'
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 0
            OnClick = cxCheckBoxGanzerTagClick
          end
          object cxCheckBoxTerminAbgesch: TcxCheckBox
            Left = 27
            Top = 231
            Caption = 'Termin bereits abgeschlossen'
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 7
            OnClick = cxCheckBoxTerminAbgeschClick
          end
          object cxMemoTeilnehmer: TcxMemo
            Left = 384
            Top = 58
            Lines.Strings = (
              'cxMemoTeilnehmer')
            Properties.ReadOnly = True
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 9
            Height = 48
            Width = 185
          end
          object cxTimeEditBegin: TcxTimeEdit
            Left = 185
            Top = 95
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 2
            Width = 80
          end
          object cxTimeEditEnde: TcxTimeEdit
            Left = 185
            Top = 129
            Style.HotTrack = False
            Style.TransparentBorder = False
            TabOrder = 4
            Width = 80
          end
          object dxLayoutControlEditorGroup_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            LayoutLookAndFeel = Papierkorb.dxLayoutCxLookAndFeelMain
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Beginn '
            Control = cxDateEditBeginn
            ControlOptions.OriginalHeight = 27
            ControlOptions.OriginalWidth = 86
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Ende'
            Control = cxDateEditEnde
            ControlOptions.OriginalHeight = 27
            ControlOptions.OriginalWidth = 87
            ControlOptions.ShowBorder = False
            Enabled = False
            Index = 0
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutGroup1
            CaptionOptions.Text = 'Erinnerung'
            Control = cxComboBoxErinnnerung
            ControlOptions.OriginalHeight = 27
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutGroup1
            CaptionOptions.Text = 'Zustand'
            Control = cxImageComboBoxZustand
            ControlOptions.OriginalHeight = 27
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutGroup1: TdxLayoutGroup
            Parent = dxLayoutAutoCreatedGroup3
            CaptionOptions.Text = 'Zeiteinstellungen'
            ItemIndex = 2
            Index = 0
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Visible = False
            Control = cxButtonAuswahl
            ControlOptions.OriginalHeight = 25
            ControlOptions.OriginalWidth = 75
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem9: TdxLayoutItem
            Parent = dxLayoutGroup2
            CaptionOptions.Text = 'cxCheckBox1'
            CaptionOptions.Visible = False
            Control = cxCheckBoxAlleTeilnehmer
            ControlOptions.OriginalHeight = 30
            ControlOptions.OriginalWidth = 99
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutGroup2: TdxLayoutGroup
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Teilnehmer'
            Index = 0
          end
          object dxLayoutItem10: TdxLayoutItem
            Parent = dxLayoutGroup4
            Control = cxMemoBemerkung
            ControlOptions.OriginalHeight = 209
            ControlOptions.OriginalWidth = 394
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutAutoCreatedGroup3
            AlignHorz = ahLeft
            Index = 1
          end
          object dxLayoutItem11: TdxLayoutItem
            Parent = dxLayoutGroup3
            CaptionOptions.Text = 'Ort'
            Control = cxTextEditOrt
            ControlOptions.OriginalHeight = 27
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem12: TdxLayoutItem
            Parent = dxLayoutGroup3
            CaptionOptions.Text = 'Typ'
            Control = cxImageComboBoxTyp
            ControlOptions.OriginalHeight = 27
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem13: TdxLayoutItem
            Parent = dxLayoutGroup3
            CaptionOptions.Text = 'Thema'
            Control = cxTextEditThema
            ControlOptions.OriginalHeight = 27
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutGroup3: TdxLayoutGroup
            Parent = dxLayoutAutoCreatedGroup2
            CaptionOptions.Text = 'Beschreibung'
            Index = 1
          end
          object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControlEditorGroup_Root
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object dxLayoutGroup4: TdxLayoutGroup
            Parent = dxLayoutControlEditorGroup_Root
            CaptionOptions.Text = 'Bemerkung'
            Index = 1
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutGroup1
            CaptionOptions.Visible = False
            Control = cxCheckBoxGanzerTag
            ControlOptions.OriginalHeight = 30
            ControlOptions.OriginalWidth = 89
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutGroup1
            AlignHorz = ahLeft
            CaptionOptions.Visible = False
            Control = cxCheckBoxTerminAbgesch
            ControlOptions.OriginalHeight = 30
            ControlOptions.OriginalWidth = 179
            ControlOptions.ShowBorder = False
            Index = 5
          end
          object dxLayoutItem14: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup4
            AlignVert = avBottom
            Control = cxMemoTeilnehmer
            ControlOptions.OriginalHeight = 48
            ControlOptions.OriginalWidth = 185
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup2
            AlignVert = avTop
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup1
            AlignHorz = ahRight
            Control = cxTimeEditBegin
            ControlOptions.OriginalHeight = 27
            ControlOptions.OriginalWidth = 80
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup1
            LayoutDirection = ldHorizontal
            Index = 1
          end
          object dxLayoutItem15: TdxLayoutItem
            Parent = dxLayoutAutoCreatedGroup5
            AlignHorz = ahRight
            Control = cxTimeEditEnde
            ControlOptions.OriginalHeight = 27
            ControlOptions.OriginalWidth = 80
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup1
            LayoutDirection = ldHorizontal
            Index = 2
          end
        end
      end
      object cxTabSheetKonflikte: TcxTabSheet
        Caption = 'Konflikte'
        ImageIndex = 65
        object cxGridKonflikt: TcxGrid
          Left = 0
          Top = 0
          Width = 596
          Height = 592
          Align = alClient
          TabOrder = 0
          LookAndFeel.SkinName = 'WXI'
          object cxGridKonfliktDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxGridKonfliktLevel1: TcxGridLevel
            GridView = cxGridKonfliktDBTableView1
          end
        end
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
    LookAndFeel.SkinName = 'WXI'
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 448
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
      FloatLeft = 581
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButSpeichern'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButSpeichern: TdxBarLargeButton
      Caption = 'Speichern & Schlie'#223'en'
      Category = 0
      Hint = 'Speichern  Schlie'#223'en'
      Visible = ivAlways
      OnClick = dxBarLargeButSpeichernClick
      AutoGrayScale = False
      LargeImageIndex = 31
    end
  end
end
