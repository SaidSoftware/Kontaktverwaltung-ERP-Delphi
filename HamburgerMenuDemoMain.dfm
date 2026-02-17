object frmHamburgerMenuDemo: TfrmHamburgerMenuDemo
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'HamburgerMenu Demo'
  ClientHeight = 646
  ClientWidth = 1050
  Color = clBlack
  TransparentColor = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ShowHint = True
  OnCreate = FormCreate
  TextHeight = 13
  object dxNavBar1: TdxNavBar
    Left = 0
    Top = 0
    Width = 257
    Height = 646
    Align = alLeft
    Color = 16053234
    ActiveGroupIndex = 0
    TabOrder = 0
    TabStop = True
    Cursors.DragCursor = crDefault
    Cursors.DragCopyCursor = crDefault
    Cursors.HotTrackedLinkCursor = crDefault
    View = 21
    ViewStyle.SkinName = 'DevExpressDarkStyle'
    ViewStyle.SkinNameAssigned = True
    OptionsBehavior.Common.AllowChildGroups = True
    OptionsBehavior.Common.AllowExpandAnimation = True
    OptionsBehavior.Common.AllowSelectLinks = True
    OptionsBehavior.Common.DragDropFlags = []
    OptionsBehavior.Common.EachGroupHasSelectedLink = True
    OptionsImage.SmallImages = ilMedium
    OnCustomDraw.LinkSelection = dxNavBar1OnCustomDrawLinkSelection
    OnGetOverlaySize = dxNavBar1GetOverlaySize
    OnLinkClick = dxNavBar1LinkClick
    ExplicitLeft = 4
    ExplicitHeight = 675
    object nbgContact: TdxNavBarGroup
      Caption = 'Contact'
      SelectedLinkIndex = -1
      SmallImageIndex = 1
      TopVisibleLinkIndex = 0
      OnSelectedLinkChanged = nbgContactSelectedLinkChanged
      Links = <
        item
          Item = nbiNewContact
          Position = 0
        end>
      ParentGroupIndex = -1
      Position = 0
    end
    object nbgScheduler: TdxNavBarGroup
      Caption = 'Scheduler'
      SelectedLinkIndex = -1
      SmallImageIndex = 2
      TopVisibleLinkIndex = 0
      OnSelectedLinkChanged = nbgSchedulerSelectedLinkChanged
      Links = <
        item
          Item = nbiSchedulerNewEvent
          Position = 0
        end>
      ParentGroupIndex = -1
      Position = 1
    end
    object nbgMail: TdxNavBarGroup
      Caption = 'Mail'
      SelectedLinkIndex = -1
      SmallImageIndex = 6
      TopVisibleLinkIndex = 0
      OnSelectedLinkChanged = nbgMailSelectedLinkChanged
      Links = <
        item
          Item = nbiMailNew
          Position = 0
        end>
      ParentGroupIndex = -1
      Position = 2
    end
    object nbgSettings: TdxNavBarGroup
      Align = vaBottom
      Caption = 'Settings'
      SelectedLinkIndex = -1
      ShowCaption = False
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = dxNavBarItem4
          Position = 0
        end>
      ParentGroupIndex = -1
      Position = 3
    end
    object Contacts: TdxNavBarGroup
      Caption = 'Contacts'
      SelectedLinkIndex = -1
      SmallImageIndex = 3
      TopVisibleLinkIndex = 0
      OptionsExpansion.Expanded = False
      OptionsExpansion.ShowExpandButton = False
      OnClick = ContactsClick
      Links = <
        item
          Item = dxNavBar1Item1
          Position = 0
        end
        item
          Item = dxNavBar1Item2
          Position = 1
        end
        item
          Item = dxNavBar1Item3
          Position = 2
        end>
      ParentGroupIndex = 0
      Position = 1
    end
    object nbgFilterContacts: TdxNavBarGroup
      Caption = 'Filter Contact list'
      SelectedLinkIndex = -1
      SmallImageIndex = 0
      TopVisibleLinkIndex = 0
      OptionsExpansion.ShowExpandButton = False
      Links = <
        item
          Item = nbiFilterContactsAll
          Position = 0
        end
        item
          Item = nbiFilterContactsSales
          Position = 1
        end
        item
          Item = nbiFilterContactsSupport
          Position = 4
        end
        item
          Item = nbiFilterContactsShipping
          Position = 3
        end
        item
          Item = nbiFilterContactsEngineering
          Position = 2
        end
        item
          Item = nbiFilterContactsHumanResources
          Position = 5
        end
        item
          Item = nbiFilterContactsManagement
          Position = 6
        end
        item
          Item = nbiFilterContactsIT
          Position = 7
        end>
      ParentGroupIndex = 0
      Position = 2
    end
    object nbgDevExpressAccount: TdxNavBarGroup
      Caption = 'DevExpress'
      SelectedLinkIndex = -1
      SmallImageIndex = 4
      TopVisibleLinkIndex = 0
      OptionsExpansion.ShowExpandButton = False
      Links = <
        item
          Item = nbiSchedulerCalendar
          Position = 1
        end
        item
          Item = nbiSchedulerBithDate
          Position = 0
        end>
      ParentGroupIndex = 1
      Position = 1
    end
    object nbgMicrosoftAccount: TdxNavBarGroup
      Caption = 'Microsoft account'
      SelectedLinkIndex = -1
      SmallImageIndex = 7
      TopVisibleLinkIndex = 0
      OptionsExpansion.ShowExpandButton = False
      Links = <
        item
          Item = nbiSchedulerMSCalendar
          Position = 0
        end>
      ParentGroupIndex = 1
      Position = 2
    end
    object nbgAccount: TdxNavBarGroup
      Caption = 'Account'
      SelectedLinkIndex = -1
      SmallImageIndex = 1
      TopVisibleLinkIndex = 0
      OptionsExpansion.ShowExpandButton = False
      Links = <
        item
          Item = nbiMailAccount1
          Position = 0
        end
        item
          Item = nbiMailAccount2
          Position = 1
        end
        item
          Item = nbiMailAccount3
          Position = 2
        end>
      ParentGroupIndex = 2
      Position = 1
    end
    object nbgFilterMailList: TdxNavBarGroup
      Caption = 'Filter Mail list'
      SelectedLinkIndex = -1
      SmallImageIndex = 5
      TopVisibleLinkIndex = 0
      OptionsExpansion.ShowExpandButton = False
      Links = <
        item
          Item = nbiFileterMailAll
          Position = 0
        end
        item
          Item = nbiFileterMailRead
          Position = 1
        end
        item
          Item = nbiFileterMailToday
          Position = 2
        end
        item
          Item = nbiFileterMailYesterday
          Position = 3
        end
        item
          Item = nbiFileterMailImportance
          Position = 4
        end>
      ParentGroupIndex = 2
      Position = 2
    end
    object nbInplaceManageAccounts: TdxNavBarItem
      Caption = 'Manage accounts'
    end
    object nbInplacePersonalization: TdxNavBarItem
      Caption = 'Personalization'
    end
    object nbInplaceAutomaticReplies: TdxNavBarItem
      Caption = 'Automatic replies'
    end
    object nbInplaceFocusedInbox: TdxNavBarItem
      Caption = 'Focused inbox'
    end
    object nbInplaceMessageList: TdxNavBarItem
      Caption = 'Message list'
    end
    object nbInplaceReadingPane: TdxNavBarItem
      Caption = 'Reading pane'
    end
    object nbInplaceSingature: TdxNavBarItem
      Caption = 'Singature'
    end
    object nbInplaceNotifications: TdxNavBarItem
      Caption = 'Notifications'
    end
    object nbInplaceAbout: TdxNavBarItem
      Caption = 'About'
    end
    object nbiNewContact: TdxNavBarItem
      Caption = 'New Contact'
      SmallImageIndex = 8
      OnClick = nbiNewContactClick
    end
    object nbiFilterContactsAll: TdxNavBarItem
      Caption = 'All'
    end
    object nbiFilterContactsSales: TdxNavBarItem
      Caption = 'Sales'
    end
    object nbiFilterContactsSupport: TdxNavBarItem
      Caption = 'Support'
    end
    object nbiFilterContactsShipping: TdxNavBarItem
      Caption = 'Shipping'
    end
    object nbiFilterContactsEngineering: TdxNavBarItem
      Caption = 'Engineering'
    end
    object nbiFilterContactsHumanResources: TdxNavBarItem
      Caption = 'Human Resources'
    end
    object nbiFilterContactsManagement: TdxNavBarItem
      Caption = 'Management'
    end
    object nbiFilterContactsIT: TdxNavBarItem
      Caption = 'IT'
    end
    object nbiSchedulerNewEvent: TdxNavBarItem
      Caption = 'New Event'
      SmallImageIndex = 8
    end
    object nbiSchedulerCalendar: TdxNavBarItem
      Caption = 'Calendar'
    end
    object nbiSchedulerBithDate: TdxNavBarItem
      Caption = 'Birth Date'
    end
    object nbiSchedulerMSCalendar: TdxNavBarItem
      Caption = 'Calendar'
    end
    object nbiMailNew: TdxNavBarItem
      Caption = 'New Mail'
      SmallImageIndex = 8
    end
    object nbiMailAccount1: TdxNavBarItem
      Caption = 'john@devav.com'
    end
    object nbiMailAccount2: TdxNavBarItem
      Caption = 'connect@devav.com'
    end
    object nbiMailAccount3: TdxNavBarItem
      Caption = 'support@devav.com'
    end
    object nbiFileterMailAll: TdxNavBarItem
      Caption = 'All'
    end
    object nbiFileterMailRead: TdxNavBarItem
      Caption = 'Read'
    end
    object nbiFileterMailToday: TdxNavBarItem
      Caption = 'Today'
    end
    object nbiFileterMailYesterday: TdxNavBarItem
      Caption = 'Yesterday'
    end
    object nbiFileterMailImportance: TdxNavBarItem
      Caption = 'Importance'
    end
    object dxNavBarItem1: TdxNavBarItem
      Caption = 'Skype'
    end
    object dxNavBarItem2: TdxNavBarItem
      Caption = 'Microsoft'
    end
    object dxNavBarItem3: TdxNavBarItem
      Caption = 'DevExpress'
    end
    object dxNavBarItem4: TdxNavBarItem
      Caption = 'Settings'
      SmallImageIndex = 10
    end
    object dxNavBar1Item1: TdxNavBarItem
      Caption = 'Skype'
    end
    object dxNavBar1Item2: TdxNavBarItem
      Caption = 'Microsoft'
    end
    object dxNavBar1Item3: TdxNavBarItem
      Caption = 'DevExpress'
    end
  end
  object dxLayoutControl4: TdxLayoutControl
    Left = 841
    Top = 0
    Width = 209
    Height = 646
    Align = alRight
    TabOrder = 1
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    ExplicitLeft = 871
    ExplicitHeight = 675
    object dxLayoutControl4Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lrgNavigationPaneModeCompact: TdxLayoutRadioButtonItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Compact'
      GroupIndex = 3
      OnClick = lrgNavigationPaneModeCompactClick
      Index = 0
    end
    object lrgNavigationPaneModeFull: TdxLayoutRadioButtonItem
      Tag = 1
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Full'
      GroupIndex = 3
      OnClick = lrgNavigationPaneModeCompactClick
      Index = 1
    end
    object lrgNavigationPaneModeNone: TdxLayoutRadioButtonItem
      Tag = 2
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'None'
      GroupIndex = 3
      OnClick = lrgNavigationPaneModeCompactClick
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Navigation Pane Mode'
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignVert = avClient
      CaptionOptions.Text = 'Images'
      Index = 4
    end
    object lrgImagesSizeSmall: TdxLayoutRadioButtonItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Small'
      GroupIndex = 4
      OnClick = lrgImagesSizeSmallClick
      Index = 0
    end
    object lrgImagesSizeMedium: TdxLayoutRadioButtonItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Medium'
      GroupIndex = 4
      OnClick = lrgImagesSizeSmallClick
      Index = 1
    end
    object lrgImagesSizeLarge: TdxLayoutRadioButtonItem
      Tag = 1
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Large'
      GroupIndex = 4
      OnClick = lrgImagesSizeSmallClick
      Index = 2
    end
    object lrgImagesSizeNone: TdxLayoutRadioButtonItem
      Tag = 2
      Parent = dxLayoutGroup1
      Visible = False
      CaptionOptions.Text = 'None'
      GroupIndex = 4
      OnClick = lrgImagesSizeSmallClick
      Index = 3
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Display Mode'
      Index = 1
    end
    object lrgDisplayModeInline: TdxLayoutRadioButtonItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Inline'
      GroupIndex = 1
      OnClick = lrgDisplayModeInlineClick
      Index = 0
    end
    object lrgDisplayModeOverlay: TdxLayoutRadioButtonItem
      Tag = 1
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Overlay'
      GroupIndex = 1
      OnClick = lrgDisplayModeInlineClick
      Index = 1
    end
    object lrgDisplayModeMinimal: TdxLayoutRadioButtonItem
      Tag = 2
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Minimal'
      GroupIndex = 1
      OnClick = lrgDisplayModeInlineClick
      Index = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Selected Group Popup Mode'
      Index = 2
    end
    object lrgSelectedPopupModeDocked: TdxLayoutRadioButtonItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Docked'
      GroupIndex = 2
      OnClick = lrgSelectedPopupModeDockedClick
      Index = 0
    end
    object lrgSelectedPopupModeUndocked: TdxLayoutRadioButtonItem
      Tag = 1
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Undocked'
      GroupIndex = 2
      OnClick = lrgSelectedPopupModeDockedClick
      Index = 1
    end
    object lcbAllowAnimation: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Allow Animation'
      OnClick = lcbAllowAnimationClick
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutControl4Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 257
    Top = 0
    Width = 584
    Height = 646
    Align = alClient
    TabOrder = 2
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    ExplicitWidth = 614
    ExplicitHeight = 675
    object cxGrid1: TcxGrid
      Left = 10
      Top = 10
      Width = 564
      Height = 626
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = MSDataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1PersonID: TcxGridDBColumn
          DataBinding.FieldName = 'PersonID'
        end
        object cxGrid1DBTableView1Enabled: TcxGridDBColumn
          DataBinding.FieldName = 'Enabled'
        end
        object cxGrid1DBTableView1Anrede: TcxGridDBColumn
          DataBinding.FieldName = 'Anrede'
        end
        object cxGrid1DBTableView1AnredeIconIndex: TcxGridDBColumn
          DataBinding.FieldName = 'AnredeIconIndex'
        end
        object cxGrid1DBTableView1Titel: TcxGridDBColumn
          DataBinding.FieldName = 'Titel'
        end
        object cxGrid1DBTableView1TitelIconIndex: TcxGridDBColumn
          DataBinding.FieldName = 'TitelIconIndex'
        end
        object cxGrid1DBTableView1Name: TcxGridDBColumn
          DataBinding.FieldName = 'Name'
        end
        object cxGrid1DBTableView1Vorname: TcxGridDBColumn
          DataBinding.FieldName = 'Vorname'
        end
        object cxGrid1DBTableView1Geburtsdatum: TcxGridDBColumn
          DataBinding.FieldName = 'Geburtsdatum'
        end
        object cxGrid1DBTableView1Telefontyp: TcxGridDBColumn
          DataBinding.FieldName = 'Telefontyp'
        end
        object cxGrid1DBTableView1TelefontypIconIndex: TcxGridDBColumn
          DataBinding.FieldName = 'TelefontypIconIndex'
        end
        object cxGrid1DBTableView1Telefon: TcxGridDBColumn
          DataBinding.FieldName = 'Telefon'
        end
        object cxGrid1DBTableView1Telefontyp2: TcxGridDBColumn
          DataBinding.FieldName = 'Telefontyp2'
        end
        object cxGrid1DBTableView1Telefontyp2IconIndex: TcxGridDBColumn
          DataBinding.FieldName = 'Telefontyp2IconIndex'
        end
        object cxGrid1DBTableView1Telefon2: TcxGridDBColumn
          DataBinding.FieldName = 'Telefon 2'
        end
        object cxGrid1DBTableView1Telefontyp3: TcxGridDBColumn
          DataBinding.FieldName = 'Telefontyp3'
        end
        object cxGrid1DBTableView1Telefontyp3IconIndex: TcxGridDBColumn
          DataBinding.FieldName = 'Telefontyp3IconIndex'
        end
        object cxGrid1DBTableView1Telefon3: TcxGridDBColumn
          DataBinding.FieldName = 'Telefon 3'
        end
        object cxGrid1DBTableView1Emailtyp: TcxGridDBColumn
          DataBinding.FieldName = 'Emailtyp'
        end
        object cxGrid1DBTableView1EmailtypIconIndex: TcxGridDBColumn
          DataBinding.FieldName = 'EmailtypIconIndex'
        end
        object cxGrid1DBTableView1Email: TcxGridDBColumn
          DataBinding.FieldName = 'Email'
        end
        object cxGrid1DBTableView1Emailtyp2: TcxGridDBColumn
          DataBinding.FieldName = 'Emailtyp2'
        end
        object cxGrid1DBTableView1Emailtyp2IconIndex: TcxGridDBColumn
          DataBinding.FieldName = 'Emailtyp2IconIndex'
        end
        object cxGrid1DBTableView1Email2: TcxGridDBColumn
          DataBinding.FieldName = 'Email 2'
        end
        object cxGrid1DBTableView1Emailtyp3: TcxGridDBColumn
          DataBinding.FieldName = 'Emailtyp3'
        end
        object cxGrid1DBTableView1Emailtyp3IconIndex: TcxGridDBColumn
          DataBinding.FieldName = 'Emailtyp3IconIndex'
        end
        object cxGrid1DBTableView1Email3: TcxGridDBColumn
          DataBinding.FieldName = 'Email 3'
        end
        object cxGrid1DBTableView1PLZ: TcxGridDBColumn
          DataBinding.FieldName = 'PLZ'
        end
        object cxGrid1DBTableView1Ort: TcxGridDBColumn
          DataBinding.FieldName = 'Ort'
        end
        object cxGrid1DBTableView1Strasse: TcxGridDBColumn
          DataBinding.FieldName = 'Strasse'
        end
        object cxGrid1DBTableView1Hausnummer: TcxGridDBColumn
          DataBinding.FieldName = 'Hausnummer'
        end
        object cxGrid1DBTableView1Notizen: TcxGridDBColumn
          DataBinding.FieldName = 'Notizen'
        end
        object cxGrid1DBTableView1Bild: TcxGridDBColumn
          DataBinding.FieldName = 'Bild'
        end
        object cxGrid1DBTableView1IsArchived: TcxGridDBColumn
          DataBinding.FieldName = 'IsArchived'
        end
        object cxGrid1DBTableView1Datei: TcxGridDBColumn
          DataBinding.FieldName = 'Datei'
        end
      end
      object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = MSDataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Bands = <
          item
          end>
        object cxGrid1DBBandedTableView1PersonID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PersonID'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Enabled: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Enabled'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Anrede: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Anrede'
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1AnredeIconIndex: TcxGridDBBandedColumn
          DataBinding.FieldName = 'AnredeIconIndex'
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Titel: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Titel'
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1TitelIconIndex: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TitelIconIndex'
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Name: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Name'
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Vorname: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Vorname'
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Geburtsdatum: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Geburtsdatum'
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Telefontyp: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Telefontyp'
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1TelefontypIconIndex: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TelefontypIconIndex'
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Telefon: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Telefon'
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Telefontyp2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Telefontyp2'
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Telefontyp2IconIndex: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Telefontyp2IconIndex'
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Telefon2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Telefon 2'
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Telefontyp3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Telefontyp3'
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Telefontyp3IconIndex: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Telefontyp3IconIndex'
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Telefon3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Telefon 3'
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Emailtyp: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Emailtyp'
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1EmailtypIconIndex: TcxGridDBBandedColumn
          DataBinding.FieldName = 'EmailtypIconIndex'
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Email: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Email'
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Emailtyp2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Emailtyp2'
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Emailtyp2IconIndex: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Emailtyp2IconIndex'
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Email2: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Email 2'
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Emailtyp3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Emailtyp3'
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Emailtyp3IconIndex: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Emailtyp3IconIndex'
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Email3: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Email 3'
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1PLZ: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PLZ'
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Ort: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Ort'
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Strasse: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Strasse'
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Hausnummer: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Hausnummer'
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Notizen: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Notizen'
          Position.BandIndex = 0
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Bild: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Bild'
          Position.BandIndex = 0
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1IsArchived: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IsArchived'
          Position.BandIndex = 0
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object cxGrid1DBBandedTableView1Datei: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Datei'
          Position.BandIndex = 0
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBBandedTableView1
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid1
      ControlOptions.OriginalHeight = 599
      ControlOptions.OriginalWidth = 33
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 1024
    Top = 192
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      ItemOptions.ControlBorderStyle = lbsSingle
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressDarkStyle'
      PixelsPerInch = 96
    end
  end
  object ilMedium: TcxImageList
    SourceDPI = 96
    Height = 24
    Width = 24
    FormatVersion = 1
    Left = 944
    Top = 14
    Bitmap = {
      494C01010B004800040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000020804003321120265331C
      037D331C037D2212026608040034000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000C301A0379A95D0DE2D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFAB5F0DE4321C037C0000000D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C07003EA75C0DE1D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFAB5E0DE40E0701420000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000180D0256CE7110FAD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFCF7210FB1B0E
      025B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000C06
      003DCD7010F9D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFCF72
      10FB0E0701420000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000626262EE00000013000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000B6A6A6AF70000
      00000000000000000000000000000000000000000000000000000000000BA65B
      0DE0D77610FFD77610FFD77610FFD77610FFD77610FF00000000000000000000
      0000000000000000000000000000D77610FFD77610FFD77610FFD77610FFD776
      10FFAB5E0DE40000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA1515156E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011111166373737B20000
      00000000000000000000000000000000000000000000000000002E190377D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800D0701400000
      0000000000000D070140361E0480D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF321C037C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020202235B5B5BE51515156E0000001300000000000000000000
      000000000000000000000000000000000012131313695C5C5CE6020202280000
      0000000000000000000000000000000000000000000000000001A45A0DDFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      000000000000351D037FD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFAB5E0DE400000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020223323232AA636363EE717171FF717171FF7171
      71FF717171FF717171FF717171FF646464F0343434AD02020227000000000000
      000000000000000000000000000000000000000000000703002ED77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      000000000000351D037FD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF08040034000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001E100260D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      000000000000351D037FD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF21120266000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020228363636B26A6A
      6AF76B6B6BF8393939B50303032C000000000000000000000000000000000000
      000000000000000000000000000000000000000000002E1A0378D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      000000000000351D037FD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF341D047E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202275C5C5CE6121212660000
      000B0000000A101010615C5C5CE60303032C0000000000000000000000000000
      000000000000000000000000000000000000000000002E1A0378D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF361E04800000
      000000000000351D037FD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF341D047E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000343434AD13131369000000000000
      0000000000000000000010101061393939B50000000000000000000000000000
      000000000000000000000000000000000000000000001D10025FD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF351D037F0D0701400000
      000000000000351D037FD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF21120265000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000646464F000000012000000000000
      000000000000000000000000000A6B6B6BF80000000000000000000000000000
      000000000000000000000000000000000000000000000603002DD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF00000000000000000000
      000000000000351D037FD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF08040033000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000626262EE00000013000000000000
      000000000000000000000000000B6A6A6AF70000000000000000000000000000
      0000000000000000000000000000000000000000000000000001A2580CDDD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFA95D0DE200000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000323232AA1515156E000000000000
      0000000000000000000011111166373737B20000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B180374D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD37410FD512C
      069D4F2B069BD27410FCD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF311B037A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202235B5B5BE51515156E0000
      001300000012131313695C5C5CE6020202280000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000009A258
      0CDDD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF552E06A00000
      0000000000004F2B069AD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFA75C0DE10000000C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020223323232AA6363
      63EE646464F0343434AD02020227000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B06
      003ACB7010F8D77610FFD77610FFD77610FFD77610FFD77610FF583007A30000
      000000000000512C069DD77610FFD77610FFD77610FFD77610FFD77610FFCE71
      10FA0C07003E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000150C0151CB7010F8D77610FFD77610FFD77610FFD77610FFD57510FE5830
      07A3562F06A1D37410FDD77610FFD77610FFD77610FFD77610FFCD7010F9180D
      0256000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B06003AA2580CDDD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFA65B0DE00C06003D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000092B180373A2580CDDD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFA45A0DDF2E1903760000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000010603002D1D10025F2E1A
      03772F1A03781E1002600703002E000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004040
      40C1717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF4A4A4ACF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006565
      65F1717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000014070707401414146B272727964141
      41C2616161EC0000000000000000000000000000000000000000000000001919
      197A717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000004848
      48CC717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF4E4E4ED40000000000000000000000000000000000000000000000004848
      48CC717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF4E4E4ED40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000101010121000000001111
      1166242424913E3E3EBD5E5E5EE8717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      00053E3E3EBD717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000101
      011908080845161616712A2A2A9C464646C8666666F3717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      000000000012505050D7717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000000000000101011D555555DD717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      000000000000000000000101011B4D4D4DD2717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000002
      04230000000000000000000000000000000E363636B2717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001967
      C4E50104072E00000000000000000000000000000001161616726A6A6AF77171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF0000000000000000000000000000000000000000000000000000000B2D2D
      2DA12F2F2FA50000000D00000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1C73DBF2030C185100000000000000000000000000000000020202273D3D
      3DBC717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF00000000000000000000000000000000000000000303032C484848CB0F0F
      0F5E0E0E0E5A484848CC0303032F000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F80F2FE0B2C54960000000C0000000000000000000000000000
      00000909094A474747CA717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF0000000000000000000000000000000010101062464646C9020202290000
      00000000000002020227454545C8111111660000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1864BDE1030E1B5600000001000000000000
      0000000000000000000007070741313131A86A6A6AF7717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF00000000000000000000000B2D2D2DA12A2A2A9D0000000A000000000000
      0000000000000000000000000009292929992F2F2FA50000000D000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF13519ACB030C174F0000
      0002000000000000000000000000000000000000000E0D0D0D592D2D2DA15757
      57DF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000303032C484848CB0F0F0F5E0000000000000000000000000000
      0000000000000000000000000000000000000E0E0E5A484848CC0303032F0000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1860
      B6DC071D377A0001031F00000000000000000000000000000000000000000000
      0000000000160000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000050505367171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF484848CC0000000000000000000000000000000000000000000000007171
      71FF10101062464646C902020229000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020227454545C81111
      1166717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F80F2FE14539DCD082243850209124700000111000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF0000000000000000000000000000000000000000000000003A3A3AB82B2B
      2B9E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF2A2A2A9D0000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000092929
      2999717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F80F2FE1863BDE01043
      80B9082343860000000000000000000000000000000000000000000000004343
      43C4717171FF717171FF717171FF717171FF717171FF717171FF5A5A5AE40101
      0119000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004343
      43C4717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF484848CC0000000000000000000000000000000000000000000000000000
      00110606063D1313136926262694404040C0606060EC717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010118000000000F0F
      0F5D20202089383838B4575757DF717171FE717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001043
      80B91F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF12488AC00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D05050537101010622222228E3C3C
      3CBA5A5A5AE40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000484848CC717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4E4E
      4ED4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004848
      48CC717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF4E4E4ED40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000717171FF717171FF00000000717171FF717171FF000000007171
      71FF717171FF00000000717171FF717171FF0000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000626262EE00000013000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000B6A6A6AF70000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000717171FF717171FF00000000717171FF717171FF000000007171
      71FF717171FF00000000717171FF717171FF0000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000006262
      62EE000000130000000000000000000000000000000000000000000000000000
      0010696969F60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF00000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA1515156E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011111166373737B20000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000003232
      32AA1515156E0000000000000000000000000000000000000000000000001515
      1570717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF00000000606060EC0101011D0000
      00000000000000000000000000000000000000000015676767F4000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000020202235B5B5BE51515156E0000001300000000000000000000
      000000000000000000000000000000000012131313695C5C5CE6020202280000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000717171FF717171FF00000000717171FF717171FF000000007171
      71FF717171FF00000000717171FF717171FF00000000717171FF717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000000202
      02235B5B5BE51515156E00000013000000000000000000000013151515706B6B
      6BF90303032B0000000000000000000000000000000000000000000000000000
      000B6A6A6AF70000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000024242491393939B50101
      011C0000000000000000000000000101011A353535AF29292999000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020223323232AA636363EE717171FF717171FF7171
      71FF717171FF717171FF717171FF646464F0343434AD02020227000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000717171FF717171FF00000000717171FF717171FF000000007171
      71FF717171FF00000000717171FF717171FF00000000717171FF717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000002020223323232AA636363EE717171FF717171FF626262EE303030A73F3F
      3FBE1414146B0000000000000000000000000000000000000000000000001111
      1166373737B20000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000007242424916161
      61EC717171FF717171FF717171FF626262ED2727279600000009000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02235B5B5BE51616167200000014000000000000000000000012131313695C5C
      5CE6020202280000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020228363636B26A6A
      6AF76B6B6BF8393939B50303032C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000000000000000000000000000717171FF717171FF000000007171
      71FF717171FF00000000717171FF717171FF00000000717171FF717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000929292999676767F4696969F52B2B2B9E0000000B0000
      000001010122323232A9626262EE717171FF717171FF646464F0343434AD0202
      0227000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000202
      0225454545C86F6F6FFD484848CB020202290000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202275C5C5CE6121212660000
      000B0000000A101010615C5C5CE60303032C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000000000000000000000000000717171FF717171FF000000007171
      71FF717171FF00000000717171FF717171FF00000000717171FF717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000000000
      00000000000027272796353535AF0000001400000012323232A92B2B2B9E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000004242
      42C3191919790000000516161672484848CB0000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000343434AD13131369000000000000
      0000000000000000000010101061393939B50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000626262EE0101011A000000000000000000000013696969F50000
      0000000000000000000929292999676767F4696969F52B2B2B9E0000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000006868
      68F60000000D00000000000000056F6F6FFD0000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000646464F000000012000000000000
      000000000000000000000000000A6B6B6BF80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      000000000000606060EC0101011D000000000000000000000015676767F40000
      00000000000027272796353535AF0000001400000012323232A92B2B2B9E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000004040
      40C01C1C1C800000000D19191979454545C80000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000626262EE00000013000000000000
      000000000000000000000000000B6A6A6AF70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      00000000000024242491393939B50101011C0101011A353535AF292929990000
      000000000000626262EE0101011A000000000000000000000013696969F50000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000101
      0121404040C0696969F5424242C3020202250000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000323232AA1515156E000000000000
      0000000000000000000011111166373737B20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000724242491616161EC626262ED27272796000000090000
      000000000000606060EC0101011D000000000000000000000015676767F40000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202235B5B5BE51515156E0000
      001300000012131313695C5C5CE6020202280000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000024242491393939B50101011C0101011A353535AF292929990000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020223323232AA6363
      63EE646464F0343434AD02020227000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004343
      43C4717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF484848CC0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000724242491616161EC626262ED27272796000000090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      000000000000000000000000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000434343C4717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4848
      48CC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      000000000000000000000000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 918448
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D31392C33483543342E342C332C342C332E342C342C3476313663302C30
          2E362C302E342C312C312C316831683168313263302E362C302C312D302E342C
          312D3156344332302C332E342C31392E362C332C31392C337A204D352C323056
          34683276313648357A2020204D31392C3230483856346831315632307A222066
          696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C
          7061746820643D224D31332E352C374331322E312C372C31312C382E312C3131
          2C392E3573312E312C322E352C322E352C322E355331362C31302E392C31362C
          392E355331342E392C372C31332E352C377A204D31332E352C31312020632D30
          2E382C302D312E352D302E372D312E352D312E355331322E372C382C31332E35
          2C385331352C382E372C31352C392E355331342E332C31312C31332E352C3131
          7A222066696C6C3D22233732373237322220636C6173733D22426C61636B222F
          3E0D0A3C7061746820643D224D31352C3133682D33632D312E372C302D332C31
          2E332D332C3376316839762D314331382C31342E332C31362E372C31332C3135
          2C31337A204D31302C313663302D312E312C302E392D322C322D32683363312E
          312C302C322C302E392C322C324831307A222066696C6C3D2223373237323732
          2220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D31322C3543392E382C352C382C362E382C382C3973312E382C342C342C
          3473342D312E382C342D345331342E322C352C31322C357A204D31322C313263
          2D312E372C302D332D312E332D332D3373312E332D332C332D3373332C312E33
          2C332C3320205331332E372C31322C31322C31327A222066696C6C3D22233732
          373237322220636C6173733D22426C61636B222F3E0D0A3C7061746820643D22
          4D352C31387631683134762D3163302D322E322D312E382D342D342D34483943
          362E382C31342C352C31352E382C352C31387A204D31382C313848366C302C30
          63302D312E372C312E332D332C332D3368364331362E372C31352C31382C3136
          2E332C31382C313820204C31382C31387A222066696C6C3D2223373237323732
          2220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D32302C35682D335633682D3176324838563348377632483443332E342C
          352C332C352E342C332C3676313463302C302E362C302E342C312C312C316831
          3663302E362C302C312D302E342C312D3156364332312C352E342C32302E362C
          352C32302C357A2020204D32302C323048345631306831365632307A204D3230
          2C39483456366833683168313256397A222066696C6C3D222337323732373222
          20636C6173733D22426C61636B222F3E0D0A3C7265637420783D22352220793D
          223134222077696474683D223222206865696768743D2232222072783D223022
          2072793D2230222066696C6C3D22233732373237322220636C6173733D22426C
          61636B222F3E0D0A3C7265637420783D22382220793D22313122207769647468
          3D223222206865696768743D2232222072783D2230222072793D223022206669
          6C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C72
          65637420783D22382220793D223134222077696474683D223222206865696768
          743D2232222072783D2230222072793D2230222066696C6C3D22233732373237
          322220636C6173733D22426C61636B222F3E0D0A3C7265637420783D22313122
          20793D223131222077696474683D223222206865696768743D2232222072783D
          2230222072793D2230222066696C6C3D22233732373237322220636C6173733D
          22426C61636B222F3E0D0A3C7265637420783D2231372220793D223131222077
          696474683D223222206865696768743D2232222072783D2230222072793D2230
          222066696C6C3D22233732373237322220636C6173733D22426C61636B222F3E
          0D0A3C7265637420783D2231342220793D223131222077696474683D22322220
          6865696768743D2232222072783D2230222072793D2230222066696C6C3D2223
          3732373237322220636C6173733D22426C61636B222F3E0D0A3C726563742078
          3D2231312220793D223134222077696474683D223222206865696768743D2232
          222072783D2230222072793D2230222066696C6C3D2223373237323732222063
          6C6173733D22426C61636B222F3E0D0A3C7265637420783D2231372220793D22
          3134222077696474683D223222206865696768743D2232222072783D22302220
          72793D2230222066696C6C3D22233732373237322220636C6173733D22426C61
          636B222F3E0D0A3C7265637420783D2231342220793D22313422207769647468
          3D223222206865696768743D2232222072783D2230222072793D223022206669
          6C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C72
          65637420783D22352220793D223137222077696474683D223222206865696768
          743D2232222072783D2230222072793D2230222066696C6C3D22233732373237
          322220636C6173733D22426C61636B222F3E0D0A3C7265637420783D22382220
          793D223137222077696474683D223222206865696768743D2232222072783D22
          30222072793D2230222066696C6C3D22233732373237322220636C6173733D22
          426C61636B222F3E0D0A3C7265637420783D2231312220793D22313722207769
          6474683D223222206865696768743D2232222072783D2230222072793D223022
          2066696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D
          0A3C7265637420783D2231342220793D223137222077696474683D2232222068
          65696768743D2232222072783D2230222072793D2230222066696C6C3D222337
          32373237322220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D382C37632D312E372C302D332C312E332D332C3373312E332C332C332C
          3373332D312E332C332D3353392E372C372C382C377A204D382C3132632D312E
          312C302D322D302E392D322D3273302E392D322C322D3273322C302E392C322C
          32202053392E312C31322C382C31327A222066696C6C3D222337323732373222
          20636C6173733D22426C61636B222F3E0D0A3C7061746820643D224D32312C31
          3663302D322E322D312E382D342D342D34682D32632D312E372C302D332E322C
          312E312D332E382C322E374331302E362C31342E332C392E382C31342C392C31
          344837632D322E322C302D342C312E382D342C347631683130762D3120206330
          2D302E332D302E312D302E372D302E312D314832315631367A204D31322C3138
          483463302D312E372C312E332D332C332D33683263302E382C302C312E352C30
          2E332C322C302E3863302E342C302E332C302E362C302E372C302E382C312E32
          4331312E392C31372E332C31322C31372E362C31322C31387A2020204D31322E
          342C3136632D302E312D302E322D302E322D302E342D302E342D302E3663302E
          332D312E332C312E352D322E342C332D322E34683263312E372C302C332C312E
          332C332C334831322E347A222066696C6C3D22233732373237322220636C6173
          733D22426C61636B222F3E0D0A3C7061746820643D224D31362C35632D312E37
          2C302D332C312E332D332C3373312E332C332C332C3373332D312E332C332D33
          5331372E372C352C31362C357A204D31362C3130632D312E312C302D322D302E
          392D322D3273302E392D322C322D3273322C302E392C322C3220205331372E31
          2C31302C31362C31307A222066696C6C3D22233732373237322220636C617373
          3D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D342E332C31372E34632D302E352C302E352D302E382C312E312D312E31
          2C312E3643332E312C31392E312C332C31392E342C332C31392E365632306330
          2C302E352C302E352C312C312C3168313663302E362C302C312D302E352C312D
          3156372E3820204331322E342C392E332C372C31342C342E332C31372E347A22
          2066696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D
          0A3C7061746820643D224D32302C33483443332E352C332C332C332E352C332C
          3476392E3563332E322D332E332C382E382D362E392C31372E332D372E396330
          2E322C302C302E372D302E312C302E372D302E3856344332312C332E352C3230
          2E352C332C32302C337A222066696C6C3D22234634383132302220636C617373
          3D22737430222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B20203C70617468
          20643D224D32302C37682D382E316C2D302E382D312E344331302E392C352E32
          2C31302E362C352C31302E322C354835483443332E342C352C332C352E342C33
          2C3676313263302C302E362C302E342C312C312C3168313663302E362C302C31
          2D302E342C312D31563820204332312C372E342C32302E362C372C32302C377A
          204D32302C31384834762D376831365631387A204D32302C3130483456366831
          68356C302E372C312E334C31312C3868395631307A222066696C6C3D22233732
          373237322220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B20203C70617468
          20643D224D32302C35483443332E342C352C332C352E342C332C367631326330
          2C302E362C302E342C312C312C3168313663302E362C302C312D302E342C312D
          3156364332312C352E342C32302E362C352C32302C357A204D32302C31384834
          56376C382C366C382D3656313820207A204D31322C31324C342C366831364C31
          322C31327A222066696C6C3D22233732373237322220636C6173733D22426C61
          636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706F6C79676F
          6E20706F696E74733D2232312C31312032312C332031312C342E372031312C31
          3120222066696C6C3D22233732373237322220636C6173733D22426C61636B22
          2F3E0D0A3C706F6C79676F6E20706F696E74733D22332C313220332C31372031
          302C31382E322031302C313220222066696C6C3D22233732373237322220636C
          6173733D22426C61636B222F3E0D0A3C706F6C79676F6E20706F696E74733D22
          31312C31382E332032312C32302032312C31322031312C313220222066696C6C
          3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C706F6C
          79676F6E20706F696E74733D2231302C342E3820332C3620332C31312031302C
          313120222066696C6C3D22233732373237322220636C6173733D22426C61636B
          222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B20203C706F6C79
          676F6E20706F696E74733D2231392C31312031332C31312031332C352031322C
          352031322C313120362C313120362C31322031322C31322031322C3138203133
          2C31382031332C31322031392C313220222066696C6C3D222337323732373222
          20636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D31322C3543392E382C352C382C362E382C382C3973312E382C342C342C
          3473342D312E382C342D345331342E322C352C31322C357A204D31322C313263
          2D312E372C302D332D312E332D332D3373312E332D332C332D3373332C312E33
          2C332C3320205331332E372C31322C31322C31327A222066696C6C3D22233732
          373237322220636C6173733D22426C61636B222F3E0D0A3C7061746820643D22
          4D352C31387631683134762D3163302D322E322D312E382D342D342D34483943
          362E382C31342C352C31352E382C352C31387A204D31382C313848366C302C30
          63302D312E372C312E332D332C332D3368364331362E372C31352C31382C3136
          2E332C31382C313820204C31382C31387A222066696C6C3D2223373237323732
          2220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A696E6C696E653B66696C6C3A233033394332333B
          7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C69
          6E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E
          7374347B646973706C61793A696E6C696E653B66696C6C3A233732373237323B
          7D3C2F7374796C653E0D0A3C672069643D2241626F7574223E0D0A09093C7061
          746820636C6173733D22426C75652220643D224D31362C3243382E332C322C32
          2C382E332C322C313673362E332C31342C31342C31347331342D362E332C3134
          2D31345332332E372C322C31362C327A204D31362C3663312E312C302C322C30
          2E392C322C32732D302E392C322D322C32732D322D302E392D322D3220202623
          393B2623393B5331342E392C362C31362C367A204D32302C3234682D38762D32
          6832762D38682D32762D326832683476313068325632347A222F3E0D0A093C2F
          673E0D0A3C2F7376673E0D0A}
      end>
  end
  object ilSmall: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 968
    Top = 70
    Bitmap = {
      494C01010C004C00040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020100193C21048796520BD5CF7210FACF7210FA97530BD63D2204890201
      001B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005050537424242C318181878000000000000000016161673434343C50505
      053A00000000000000000000000000000000000000000000000000000000190E
      0258C16A0FF2D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC36B
      0FF31B0E025B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001616
      1671323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA161616710000000000000000000000000000000000000000000000000303
      032E404040C0000000142222228C353535AE343434AD2929299B000000123636
      36B0050505360000000000000000000000000000000000000000190D0257D474
      10FDD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD57510FE1B0E025B00000000000000000000000000000000000000000000
      000000000000000000000000000000000000323232AA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000002626
      2695010101190000000000000000000000000000000000000000000000000000
      00132929299B0000000000000000000000000000000000000000000000000000
      0010404040C00000000000000000000000000000000000000000000000003333
      33AB000000150000000000000000000000000000000001010018C06A0FF1D776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFC36B0FF30201001B000000000000000000000000000000000000
      000000000000000000000000000000000000323232AA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      032F303030A70101011900000000000000000000000000000000000000172E2E
      2EA4040404330000000000000000000000000000000000000000000000000101
      011D323232A90000000000000000040404310404043200000000000000002727
      279602020229000000000000000000000000000000003A200485D77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FF3D220489000000000000000000000000000000000000
      000000000000000000000000000000000000323232AA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303032F26262695323232AA323232AA323232AA323232AA272727970404
      0432000000000000000000000000000000000000000000000000363636B03D3D
      3DBB0303032A0000000020202089202020891F1F1F862222228D000000000101
      011E3D3D3DBC434343C400000000000000000000000092500BD2D77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FF97530BD6000000000000000000000000000000000000
      000000000000000000000000000000000000323232AA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000040404332929299B2A2A2A9C05050536000000000000
      0000000000000000000000000000000000000000000000000000333333AB0000
      00000000000000000000353535AF0000000000000000353535AF000000000000
      000000000000323232AB000000000000000000000000C86E0FF6D77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFCF7210FA000000000000000000000000000000000000
      0000323232AA323232AA323232AA323232AA595959E3323232AA323232AA3232
      32AA161616710000000000000000000000000000000000000000000000000000
      000000000000040404322E2E2EA400000013000000122D2D2DA1050505360000
      00000000000000000000000000000000000000000000000000004D4D4DD20A0A
      0A4F0000000400000000393939B50101011A010101183A3A3AB7000000000000
      00060B0B0B534E4E4ED4000000000000000000000000C86E0FF6D77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFCF7210FA000000000000000000000000000000000000
      000000000000000000000000000000000000323232AA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000027272797000000170000000000000000000000122A2A2A9C0000
      00000000000000000000000000000000000000000000000000000303032C2222
      228D1111116500000000020202242C2C2C9F2C2C2CA002020226000000001414
      146C1F1F1F860303032B00000000000000000000000090500BD1D77610FFD776
      10FFD77610FFD77610FF000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FF96520BD5000000000000000000000000000000000000
      000000000000000000000000000000000000323232AA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000026262695010101190000000000000000000000132929299B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0002484848CB0000000000000000000000000000000000000000000000004646
      46C90000000400000000000000000000000000000000381F0483D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF3C210487000000000000000000000000000000000000
      000000000000000000000000000000000000323232AA00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303032F303030A701010119000000172E2E2EA4040404330000
      0000000000000000000000000000000000000000000000000000000000000404
      0433303030A700000000020202280A0A0A4E0A0A0A4D0303032A000000002D2D
      2DA0050505380000000000000000000000000000000001000017BE690FF0D776
      10FFD77610FFD77610FFD77610FF0A05003708040034D77610FFD77610FFD776
      10FFD77610FFC16A0FF202010019000000000000000000000000000000000000
      0000000000000000000000000000000000001616167100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303032F262626952727279704040432000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A2828289828282899464646C91010106010101060454545C82929299A2E2E
      2EA30000000D0000000000000000000000000000000000000000170C0154D374
      10FDD77610FFD77610FFD77610FF0B06003C0A050037D77610FFD77610FFD776
      10FFD47410FD190E025800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003030330000000130000000000000000000000110606063E0000
      000000000000000000000000000000000000000000000000000000000000170C
      0154BE690FF0D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC06A
      0FF1190D02570000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001000017381F048390500BD1C86E0FF6C86E0FF692500BD23A2004850101
      0018000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000595959E37171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF5E5E5EE900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001607070742000000000000000000000000000000003F3F3FBE7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000252525933232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA323232AA2727279700000000000000000000000000000000252525933232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA323232AA2727279700000000000000000000000000000000000000000000
      000000000000000000010000000F0303032D12121268252525933F3F3FBF5F5F
      5FEA717171FF717171FF000000000000000000000000000000000101011F5E5E
      5EE9717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA00000000000000000000000000000000323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA000000000000000000000000000000001414146D2828
      2899434343C5646464F0323232AA323232AA717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000404
      0434646464F0717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA00000000000000000000000000000000323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA00000000000000000000000000000000717171FF7171
      71FF717171FF717171FF323232AA323232AA717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000040404315C5C5CE5717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA00000000000000000000000000000000323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA00000000000000000000000000000000717171FF7171
      71FF717171FF717171FF323232AA323232AA717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000092446890000
      000100000000010101193D3D3DBC717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA00000000000000000000000000000000323232AA0000
      00000000000000000000000000000A0A0A4D0A0A0A4F00000000000000000000
      000000000000323232AA00000000000000000000000000000000717171FF7171
      71FF717171FF717171FF323232AA323232AA717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000000000001F81F4FF0E3A
      6EAB0000000F0000000000000001111111635C5C5CE7717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000444444C60C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C55444444C600000000000000000000000000000000323232AA0000
      000000000000000000051C1C1C800F0F0F5D0E0E0E5B1D1D1D82000000060000
      000000000000323232AA000000000000000000000000000000000C0C0C550C0C
      0C550C0C0C550C0C0C5505050539050505390C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C55000000000000000000000000000000001F81F4FF1F81
      F4FF1864C0E2030D185200000000000000000000000A1414146D4F4F4FD57171
      71FF717171FF717171FF00000000000000000000000000000000444444C60C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C55444444C600000000000000000000000000000000323232AA0000
      00000101011E2929299B0303032A0000000000000000020202282929299B0101
      012000000000323232AA00000000000000000000000000000000717171FF7171
      71FF717171FF717171FF323232AA323232AA717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000000000001F81F4FF1F81
      F4FF1F81F4FF1F81F4FF134E95C7030D18520000000400000000000000000303
      032E18181876363636B000000000000000000000000000000000323232AA0000
      00000000000000000000000000000606063E0C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C55434343C500000000000000000000000000000000323232AA0A0A
      0A4D2121218C0000000A00000000000000000000000000000000000000092121
      218A0A0A0A4F323232AA00000000000000000000000000000000717171FF7171
      71FF717171FF717171FF323232AA323232AA717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000000000001F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1A69C8E70B2C5496030C164E0000
      0114000000000000000000000000000000000000000000000000323232AA0000
      0000000000000000000001010119474747CA0C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550707074000000000000000000000000000000000595959E30F0F
      0F5D000000000000000000000000000000000000000000000000000000000000
      00000E0E0E5B595959E300000000000000000000000000000000717171FF7171
      71FF717171FF717171FF323232AA323232AA717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000000000001F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1966C3E410427FB800000000000000000000000000000000242424903232
      32AA323232AA323232AA323232A9050505390000000000000000000000000000
      0000000000000000000000000000000000000000000000000000242424903232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA323232AA2525259300000000000000000000000000000000000000130606
      063E1313136A272727961B1B1B7C2929299B717171FE717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000000000001862BCE01F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1865C1E300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000E05050539111111642323
      238F3C3C3CBB5C5C5CE600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707404343
      43C5444444C6444444C6323232AA323232AA323232AA323232AA323232AA3232
      32AA434343C50707074300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000484848CC3232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA323232AA4B4B4BD000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C550C0C
      0C550C0C0C550C0C0C5500000000000000000000000000000000000000000000
      00000C0C0C550C0C0C5500000000000000000000000000000000000000001616
      1671323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA161616710000000000000000000000000000000000000000323232AA1616
      1671161616711616167116161671161616711616167116161671161616710000
      000000000000323232AA00000000000000000000000000000000323232AA3232
      32AA323232AA323232AA323232AA323232AA1616167100000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C5500000000000000000000000000000000000000002626
      2695010101190000000000000000000000000000000000000000000000000000
      00132929299B0000000000000000000000000000000000000000323232AA1616
      1671161616711616167116161671161616711616167116161671161616710000
      000000000000323232AA00000000000000000000000000000000353535AE0000
      000000000000000000000000000001010118414141C20C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C55000000000000000000000000000000000C0C0C550C0C
      0C550C0C0C550C0C0C55474747CA0C0C0C550C0C0C550C0C0C550C0C0C554747
      47CA0C0C0C550C0C0C5500000000000000000000000000000000000000000303
      032F303030A70101011900000000000000000000000000000000000000172E2E
      2EA4040404330000000000000000000000000000000000000000323232AA1616
      1671161616711616167116161671161616711616167116161671161616711616
      167116161671323232AA000000000000000000000000000000001A1A1A7B1414
      146B000000080000000001010118363636B1121212680C0C0C550C0C0C550C0C
      0C550C0C0C55454545C7000000000000000000000000000000000C0C0C550C0C
      0C550C0C0C550C0C0C55242424901B1B1B7D0C0C0C550C0C0C551A1A1A7A2626
      26940C0C0C550C0C0C5500000000000000000000000000000000000000000000
      00000303032F26262695323232AA323232AA323232AA323232AA272727970404
      0432000000000000000000000000000000000000000000000000323232AA1616
      1671161616711616167116161671161616711616167116161671161616711616
      167116161671323232AA00000000000000000000000000000000000000010E0E
      0E5A2E2E2EA3323232AA262626951D1D1D821414146B00000000000000000000
      0000010101202F2F2FA6000000000000000000000000000000000C0C0C550C0C
      0C550C0C0C550C0C0C55000000010606063C0C0C0C550C0C0C550606063E0000
      00010C0C0C550C0C0C5500000000000000000000000000000000000000000000
      00000000000000000000040404332929299B2A2A2A9C05050536000000000000
      0000000000000000000000000000000000000000000000000000323232AA0000
      0000000000001616167116161671161616711616167116161671161616711616
      167116161671323232AA00000000000000000000000000000000000000000000
      0004191919782F2F2FA50909094B000000001A1A1A7A353535AF323232AA3232
      32AB2E2E2EA400000017000000000000000000000000000000000C0C0C550C0C
      0C550C0C0C550C0C0C5500000000050505363C3C3CBB3C3C3CBB0505053A0000
      00000C0C0C550C0C0C5500000000000000000000000000000000000000000000
      000000000000040404322E2E2EA400000013000000122D2D2DA1050505360000
      0000000000000000000000000000000000000000000000000000323232AA0000
      0000000000001616167116161671161616711616167116161671161616711616
      167116161671323232AA00000000000000000000000000000000000000001717
      17750F0F0F5F000000092F2F2FA502020229000000000000000F0B0B0B500202
      02290000000000000000000000000000000000000000000000000C0C0C550C0C
      0C550C0C0C550C0C0C55000000002C2C2C9F000000130000000E2E2E2EA40000
      00000C0C0C550C0C0C5500000000000000000000000000000000000000000000
      00000000000027272797000000170000000000000000000000122A2A2A9C0000
      0000000000000000000000000000000000000000000000000000595959E33232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA323232AA595959E300000000000000000000000000000000000000002D2D
      2DA00000000F000000000F0F0F5F0B0B0B500000000E3D3D3DBB0F0F0F5F2F2F
      2FA50909094B00000000000000000000000000000000000000000C0C0C550C0C
      0C550C0C0C550C0C0C550000000011111164242424912222228D131313690000
      00000C0C0C550C0C0C5500000000000000000000000000000000000000000000
      00000000000026262695010101190000000000000000000000132929299B0000
      0000000000000000000000000000000000000000000000000000323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA00000000000000000000000000000000000000000707
      0744323232AA111111633D3D3DBB0000000F0909094B11111163000000000000
      00092F2F2FA500000000000000000000000000000000000000000C0C0C550C0C
      0C550C0C0C550C0C0C5500000000000000000505053705050538000000000000
      00000C0C0C550C0C0C5500000000000000000000000000000000000000000000
      0000000000000303032F303030A701010119000000172E2E2EA4040404330000
      0000000000000000000000000000000000000000000000000000323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA00000000000000000000000000000000000000000000
      0000020202230909094B0000000E0000000002020223323232AA0000000F0F0F
      0F5F1919197800000000000000000000000000000000000000000C0C0C550C0C
      0C550C0C0C550C0C0C5500000000000000000000000000000000000000000000
      00000C0C0C550C0C0C5500000000000000000000000000000000000000000000
      000000000000000000000303032F262626952727279704040432000000000000
      0000000000000000000000000000000000000000000000000000242424903232
      32AA444444C6444444C6323232AA323232AA323232AA323232AA444444C64444
      44C6323232AA2525259300000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000070707442C2C2CA01717
      17750000000400000000000000000000000000000000000000000606063E4242
      42C3444444C6444444C6323232AA323232AA323232AA323232AA323232AA3232
      32AA424242C30707074100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0C0C550C0C0C55000000000000000000000000000000000C0C0C550C0C
      0C55000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 4588488
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D31392C33483543342E342C332C342C332E342C342C3476313663302C30
          2E362C302E342C312C312C316831683168313263302E362C302C312D302E342C
          312D3156344332302C332E342C31392E362C332C31392C337A204D352C323056
          34683276313648357A2020204D31392C3230483856346831315632307A222066
          696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C
          7061746820643D224D31332E352C374331322E312C372C31312C382E312C3131
          2C392E3573312E312C322E352C322E352C322E355331362C31302E392C31362C
          392E355331342E392C372C31332E352C377A204D31332E352C31312020632D30
          2E382C302D312E352D302E372D312E352D312E355331322E372C382C31332E35
          2C385331352C382E372C31352C392E355331342E332C31312C31332E352C3131
          7A222066696C6C3D22233732373237322220636C6173733D22426C61636B222F
          3E0D0A3C7061746820643D224D31352C3133682D33632D312E372C302D332C31
          2E332D332C3376316839762D314331382C31342E332C31362E372C31332C3135
          2C31337A204D31302C313663302D312E312C302E392D322C322D32683363312E
          312C302C322C302E392C322C324831307A222066696C6C3D2223373237323732
          2220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D31322C3543392E382C352C382C362E382C382C3973312E382C342C342C
          3473342D312E382C342D345331342E322C352C31322C357A204D31322C313263
          2D312E372C302D332D312E332D332D3373312E332D332C332D3373332C312E33
          2C332C3320205331332E372C31322C31322C31327A222066696C6C3D22233732
          373237322220636C6173733D22426C61636B222F3E0D0A3C7061746820643D22
          4D352C31387631683134762D3163302D322E322D312E382D342D342D34483943
          362E382C31342C352C31352E382C352C31387A204D31382C313848366C302C30
          63302D312E372C312E332D332C332D3368364331362E372C31352C31382C3136
          2E332C31382C313820204C31382C31387A222066696C6C3D2223373237323732
          2220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D32302C35682D335633682D3176324838563348377632483443332E342C
          352C332C352E342C332C3676313463302C302E362C302E342C312C312C316831
          3663302E362C302C312D302E342C312D3156364332312C352E342C32302E362C
          352C32302C357A2020204D32302C323048345631306831365632307A204D3230
          2C39483456366833683168313256397A222066696C6C3D222337323732373222
          20636C6173733D22426C61636B222F3E0D0A3C7265637420783D22352220793D
          223134222077696474683D223222206865696768743D2232222072783D223022
          2072793D2230222066696C6C3D22233732373237322220636C6173733D22426C
          61636B222F3E0D0A3C7265637420783D22382220793D22313122207769647468
          3D223222206865696768743D2232222072783D2230222072793D223022206669
          6C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C72
          65637420783D22382220793D223134222077696474683D223222206865696768
          743D2232222072783D2230222072793D2230222066696C6C3D22233732373237
          322220636C6173733D22426C61636B222F3E0D0A3C7265637420783D22313122
          20793D223131222077696474683D223222206865696768743D2232222072783D
          2230222072793D2230222066696C6C3D22233732373237322220636C6173733D
          22426C61636B222F3E0D0A3C7265637420783D2231372220793D223131222077
          696474683D223222206865696768743D2232222072783D2230222072793D2230
          222066696C6C3D22233732373237322220636C6173733D22426C61636B222F3E
          0D0A3C7265637420783D2231342220793D223131222077696474683D22322220
          6865696768743D2232222072783D2230222072793D2230222066696C6C3D2223
          3732373237322220636C6173733D22426C61636B222F3E0D0A3C726563742078
          3D2231312220793D223134222077696474683D223222206865696768743D2232
          222072783D2230222072793D2230222066696C6C3D2223373237323732222063
          6C6173733D22426C61636B222F3E0D0A3C7265637420783D2231372220793D22
          3134222077696474683D223222206865696768743D2232222072783D22302220
          72793D2230222066696C6C3D22233732373237322220636C6173733D22426C61
          636B222F3E0D0A3C7265637420783D2231342220793D22313422207769647468
          3D223222206865696768743D2232222072783D2230222072793D223022206669
          6C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C72
          65637420783D22352220793D223137222077696474683D223222206865696768
          743D2232222072783D2230222072793D2230222066696C6C3D22233732373237
          322220636C6173733D22426C61636B222F3E0D0A3C7265637420783D22382220
          793D223137222077696474683D223222206865696768743D2232222072783D22
          30222072793D2230222066696C6C3D22233732373237322220636C6173733D22
          426C61636B222F3E0D0A3C7265637420783D2231312220793D22313722207769
          6474683D223222206865696768743D2232222072783D2230222072793D223022
          2066696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D
          0A3C7265637420783D2231342220793D223137222077696474683D2232222068
          65696768743D2232222072783D2230222072793D2230222066696C6C3D222337
          32373237322220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D382C37632D312E372C302D332C312E332D332C3373312E332C332C332C
          3373332D312E332C332D3353392E372C372C382C377A204D382C3132632D312E
          312C302D322D302E392D322D3273302E392D322C322D3273322C302E392C322C
          32202053392E312C31322C382C31327A222066696C6C3D222337323732373222
          20636C6173733D22426C61636B222F3E0D0A3C7061746820643D224D32312C31
          3663302D322E322D312E382D342D342D34682D32632D312E372C302D332E322C
          312E312D332E382C322E374331302E362C31342E332C392E382C31342C392C31
          344837632D322E322C302D342C312E382D342C347631683130762D3120206330
          2D302E332D302E312D302E372D302E312D314832315631367A204D31322C3138
          483463302D312E372C312E332D332C332D33683263302E382C302C312E352C30
          2E332C322C302E3863302E342C302E332C302E362C302E372C302E382C312E32
          4331312E392C31372E332C31322C31372E362C31322C31387A2020204D31322E
          342C3136632D302E312D302E322D302E322D302E342D302E342D302E3663302E
          332D312E332C312E352D322E342C332D322E34683263312E372C302C332C312E
          332C332C334831322E347A222066696C6C3D22233732373237322220636C6173
          733D22426C61636B222F3E0D0A3C7061746820643D224D31362C35632D312E37
          2C302D332C312E332D332C3373312E332C332C332C3373332D312E332C332D33
          5331372E372C352C31362C357A204D31362C3130632D312E312C302D322D302E
          392D322D3273302E392D322C322D3273322C302E392C322C3220205331372E31
          2C31302C31362C31307A222066696C6C3D22233732373237322220636C617373
          3D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D342E332C31372E34632D302E352C302E352D302E382C312E312D312E31
          2C312E3643332E312C31392E312C332C31392E342C332C31392E365632306330
          2C302E352C302E352C312C312C3168313663302E362C302C312D302E352C312D
          3156372E3820204331322E342C392E332C372C31342C342E332C31372E347A22
          2066696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D
          0A3C7061746820643D224D32302C33483443332E352C332C332C332E352C332C
          3476392E3563332E322D332E332C382E382D362E392C31372E332D372E396330
          2E322C302C302E372D302E312C302E372D302E3856344332312C332E352C3230
          2E352C332C32302C337A222066696C6C3D22234634383132302220636C617373
          3D22737430222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B20203C70617468
          20643D224D32302C37682D382E316C2D302E382D312E344331302E392C352E32
          2C31302E362C352C31302E322C354835483443332E342C352C332C352E342C33
          2C3676313263302C302E362C302E342C312C312C3168313663302E362C302C31
          2D302E342C312D31563820204332312C372E342C32302E362C372C32302C377A
          204D32302C31384834762D376831365631387A204D32302C3130483456366831
          68356C302E372C312E334C31312C3868395631307A222066696C6C3D22233732
          373237322220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B20203C70617468
          20643D224D32302C35483443332E342C352C332C352E342C332C367631326330
          2C302E362C302E342C312C312C3168313663302E362C302C312D302E342C312D
          3156364332312C352E342C32302E362C352C32302C357A204D32302C31384834
          56376C382C366C382D3656313820207A204D31322C31324C342C366831364C31
          322C31327A222066696C6C3D22233732373237322220636C6173733D22426C61
          636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706F6C79676F
          6E20706F696E74733D2232312C31312032312C332031312C342E372031312C31
          3120222066696C6C3D22233732373237322220636C6173733D22426C61636B22
          2F3E0D0A3C706F6C79676F6E20706F696E74733D22332C313220332C31372031
          302C31382E322031302C313220222066696C6C3D22233732373237322220636C
          6173733D22426C61636B222F3E0D0A3C706F6C79676F6E20706F696E74733D22
          31312C31382E332032312C32302032312C31322031312C313220222066696C6C
          3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C706F6C
          79676F6E20706F696E74733D2231302C342E3820332C3620332C31312031302C
          313120222066696C6C3D22233732373237322220636C6173733D22426C61636B
          222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B20203C706F6C79
          676F6E20706F696E74733D2231392C31312031332C31312031332C352031322C
          352031322C313120362C313120362C31322031322C31322031322C3138203133
          2C31382031332C31322031392C313220222066696C6C3D222337323732373222
          20636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D31322C3543392E382C352C382C362E382C382C3973312E382C342C342C
          3473342D312E382C342D345331342E322C352C31322C357A204D31322C313263
          2D312E372C302D332D312E332D332D3373312E332D332C332D3373332C312E33
          2C332C3320205331332E372C31322C31322C31327A222066696C6C3D22233732
          373237322220636C6173733D22426C61636B222F3E0D0A3C7061746820643D22
          4D352C31387631683134762D3163302D322E322D312E382D342D342D34483943
          362E382C31342C352C31352E382C352C31387A204D31382C313848366C302C30
          63302D312E372C312E332D332C332D3368364331362E372C31352C31382C3136
          2E332C31382C313820204C31382C31387A222066696C6C3D2223373237323732
          2220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D32302E332C31302E326C2D312E382D302E34632D302E322D302E352D30
          2E352D312D302E372D312E346C302E362D312E3863302E312D302E342D302E31
          2D302E392D302E342D312E316C2D322E312D312E342020632D302E342D302E32
          2D302E382D302E322D312E322C302E316C2D312E342C312E33632D302E342D30
          2E312D302E392D302E312D312E332D302E31732D302E392C302D312E332C302E
          314C392E332C342E3243392C332E392C382E352C332E392C382E322C342E324C
          362C352E35202043352E372C352E382C352E352C362E322C352E362C362E366C
          302E362C312E3843362C382E382C352E372C392E332C352E352C392E376C2D31
          2E382C302E3543332E332C31302E332C332C31302E372C332C31312E3176322E
          3663302C302E342C302E332C302E382C302E372C302E394C352E352C31352020
          63302E322C302E352C302E352C312C302E372C312E346C2D302E362C312E3863
          2D302E312C302E342C302E312C302E392C302E342C312E316C322E312C312E34
          63302E342C302E322C302E382C302E322C312E322D302E316C312E342D312E33
          63302E342C302E312C302E392C302E312C312E332C302E31202073302E392C30
          2C312E332D302E316C312E342C312E3363302E332C302E332C302E382C302E33
          2C312E322C302E316C322E312D312E3463302E342D302E322C302E352D302E37
          2C302E342D312E316C2D302E362D312E3863302E332D302E342C302E352D302E
          392C302E372D312E336C312E382D302E34202063302E342D302E312C302E372D
          302E352C302E372D302E39762D322E374332312C31302E372C32302E372C3130
          2E332C32302E332C31302E327A204D32302C31332E346C2D312E312C302E346C
          2D312E312C302E34632D302E312C302E342D302E332C302E372D302E342C3120
          2063302C302E312D302E312C302E312D302E312C302E32632D302E322C302E33
          2D302E342C302E362D302E362C302E396C302E332C312E316C302E332C312E32
          6C2D312E372C312E316C2D302E392D302E386C2D302E392D302E37632D302E36
          2C302E312D312C302E322D312E342C302E322020632D302E312C302D302E322C
          302D302E342C30732D302E322C302D302E342C30632D302E342C302D302E392D
          302E312D312E332D302E326C2D302E392C302E376C2D302E392C302E386C2D31
          2E372D312E316C302E332D312E326C302E332D312E3143372E322C31362C372C
          31352E372C362E382C31352E34202063302D302E312D302E312D302E312D302E
          312D302E32632D302E322D302E332D302E332D302E372D302E342D316C2D312E
          312D302E344C342C31332E34762D324C352E312C31316C312E312D302E346330
          2E312D302E342C302E332D302E372C302E342D3163302D302E312C302E312D30
          2E312C302E312D302E32202043372C392E312C372E322C382E382C372E342C38
          2E354C372E312C372E344C362E382C362E326C312E372D312E316C302E392C30
          2E386C302E392C302E3763302E352D302E312C302E392D302E322C312E332D30
          2E3263302E322C302C302E332C302C302E342C3073302E322C302C302E342C30
          202063302E342C302C302E392C302E312C312E332C302E326C302E392D302E37
          6C302E392D302E386C312E372C312E316C2D302E332C312E326C2D302E332C31
          2E3163302E322C302E332C302E342C302E362C302E362C302E3963302C302E31
          2C302E312C302E312C302E312C302E32202063302E322C302E332C302E332C30
          2E372C302E342C316C312E312C302E346C312E322C302E345631332E347A2220
          66696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A
          3C7061746820643D224D31322C392E34632D312E372C302D332C312E332D332C
          3373312E332C332C332C3373332D312E332C332D335331332E372C392E342C31
          322C392E347A204D31322C31342E34632D312E312C302D322D302E392D322D32
          73302E392D322C322D32202073322C302E392C322C325331332E312C31342E34
          2C31322C31342E347A222066696C6C3D22233732373237322220636C6173733D
          22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A696E6C696E653B66696C6C3A233033394332333B
          7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C69
          6E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E
          7374347B646973706C61793A696E6C696E653B66696C6C3A233732373237323B
          7D3C2F7374796C653E0D0A3C672069643D2241626F7574223E0D0A09093C7061
          746820636C6173733D22426C75652220643D224D31362C3243382E332C322C32
          2C382E332C322C313673362E332C31342C31342C31347331342D362E332C3134
          2D31345332332E372C322C31362C327A204D31362C3663312E312C302C322C30
          2E392C322C32732D302E392C322D322C32732D322D302E392D322D3220202623
          393B2623393B5331342E392C362C31362C367A204D32302C3234682D38762D32
          6832762D38682D32762D326832683476313068325632347A222F3E0D0A093C2F
          673E0D0A3C2F7376673E0D0A}
      end>
  end
  object ilLarge: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    Left = 1008
    Top = 70
    Bitmap = {
      494C01010B005000040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020D07
      01414224048E83480AC7B8650EECD57510FED57610FEBA660EED85490AC94425
      05900F0801440000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003201102639F570CDBD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFA35A0DDE23130267000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000005020027864A0ACAD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF8D4D0BCF0603002B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010090147C06A0FF1D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFC46C0FF4130A014C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101011C0C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550101011C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010090146CB7010F8D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFCF7210FA130A014D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004020026C0690FF1D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC46C0FF40603
      002B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008080845717171FF0000001100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000007717171FF0A0A0A50000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000284480AC8D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF8D4D
      0BCF000000040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000166F6F6FFC0B0B0B5100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000008080847717171FE0101011F000000000000
      0000000000000000000000000000000000000000000000000000000000001D10
      025FD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF231302670000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000303030A7505050D700000010000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000C4B4B4BCF363636B200000000000000000000
      0000000000000000000000000000000000000000000000000000000000019A55
      0BD8D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFA35A0DDE0000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000017545454DC505050D70B0B0B510000
      0011000000000000000000000000000000000000000000000000000000000000
      0000000000100A0A0A4D4D4D4DD2595959E20101011C00000000000000000000
      00000000000000000000000000000000000000000000000000000B06003CD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF0F08014400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000017303030A76F6F6FFC7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF6F6F6FFD343434AD0101011B0000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D220488D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF4425059000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000160808
      08450C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C55080808460101011900000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B4309C1D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF85490AC900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101011F0B0B0B500B0B0B5101010122000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD5F0DE5D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFBA660EED00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000101011C373737B2717171FE717171FF717171FF717171FE3A3A3AB80101
      0120000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C96E0FF7D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD57610FE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      011B595959E24B4B4BD008080847000000070000000607070742474747CA5C5C
      5CE7010101200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C76E0FF6D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD57610FE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C55717171FF2222228E0C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550101011C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003434
      34AD4D4D4DD20000000C00000000000000000000000000000000000000094747
      47CA3A3A3AB80000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AC5F0DE4D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFB8650EEC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101196F6F
      6FFD0A0A0A4D0000000000000000000000000000000000000000000000000707
      0742717171FE0101012200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000794209BFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF83480AC700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808467171
      71FF000000100000000000000000000000000000000000000000000000000000
      0006717171FF0B0B0B5000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003B200486D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF4225058E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808457171
      71FF000000110000000000000000000000000000000000000000000000000000
      0007717171FF0A0A0A5000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A060039D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF0D07014100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000166F6F
      6FFC0B0B0B510000000000000000000000000000000000000000000000000808
      0847717171FE0101011F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000019552
      0BD5D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF9F570CDB0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003030
      30A7505050D700000010000000000000000000000000000000000000000C4B4B
      4BCF363636B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A0E
      025AD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF653808AF01000014010000125E3407A9D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF201102630000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0017545454DC505050D70B0B0B5100000011000000100A0A0A4D4D4D4DD25959
      59E20101011C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00027E4509C3D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0201001A000000000000000001000013D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF874A
      0BCA000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000017303030A76F6F6FFC717171FF717171FF6F6F6FFD343434AD0101
      011B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003020022BB670EEED77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0201001D000000000000000001000015D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC06A0FF10502
      0027000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C550101011C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016080808450808084601010119000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D070141C76E0FF6D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF6C3C08B50201001C0201001A653808AFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFCB7010F8100901470000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D070141BB670EEED77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFC0690FF110090146000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030200227E4509C3D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF84480AC80402002600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000021A0E025A95520BD5D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF9A550BD81D10025F000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010A06
      00393B200486794209C0AC5F0DE4C76E0FF6C86E0FF6AD5F0DE57B4309C13D22
      04880B06003C0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000026262695717171FE717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF3131
      31A9000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006B6B6BF9717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000017070707411515156E2828
      2898000000000000000000000000000000000000000000000000000000000000
      0000444444C6717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000101011D0C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550101
      0121000000000000000000000000000000000000000000000000000000000000
      00000101011D0C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550101
      0121000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000120606
      063D13131368262626943F3F3FBF5F5F5FEA717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000050505366F6F6FFD717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000545454DC717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF5C5C
      5CE7000000000000000000000000000000000000000000000000000000000000
      0000545454DC717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF5C5C
      5CE7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00020202022400000016020202262323238F3C3C3CBA5C5C5CE6717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000001A1A1A7C717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101011D09090949171717742C2C2CA0484848CC6969
      69F5717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F2F2FA6717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000434343C4646464F0717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000073D3D3DBC717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000C424242C3717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000A3A3A3AB7717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004282828997171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000092446890000000000000000000000000000000000000000000000001111
      11666A6A6AF7717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000140000001700000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001F81F4FF0B2E599A00000004000000000000000000000000000000000000
      00000303032D4B4B4BCF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      000000000000000000000606063C595959E35C5C5CE607070740000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001F81F4FF1F81F4FF104482BA000001130000000000000000000000000000
      000000000000000000051A1A1A7B696969F5717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      00000000000118181877636363EF0E0E0E5D0D0D0D58636363EF1B1B1B7D0000
      00020000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001F81F4FF1F81F4FF1F81F4FF1864BEE101070D3D00000000000000000000
      00000000000000000000000000000101011E2D2D2DA26F6F6FFC717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF444444C6323232AA323232AA323232AA323232AA323232AA3232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA444444C67171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0014393939B64D4D4DD3020202290000000000000000020202254B4B4BCF3C3C
      3CBA0000001700000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA323232AA0505053905050539323232AA323232AA323232AA323232AA3232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA000000000000000000000000000000000000000000000000000000000000
      00001F81F4FF1F81F4FF1F81F4FF1F81F4FF1F7FF0FD09274B8E0000000B0000
      00000000000000000000000000000000000000000000020202282D2D2DA26D6D
      6DFA717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF444444C6323232AA323232AA323232AA323232AA323232AA3232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA444444C67171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C55000000000000000000000000000000000606063C5959
      59E32A2A2A9D0000000A00000000000000000000000000000000000000082828
      28975C5C5CE607070740000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1864BFE2030F
      1E5A000000020000000000000000000000000000000000000000000000000101
      01191A1A1A7B535353DA717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000118181877636363EF0E0E
      0E5D000000000000000000000000000000000000000000000000000000000000
      00000D0D0D58636363EF1B1B1B7D0000000200000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF14539FCE030C185000000002000000000000000000000000000000000000
      00000000000000000000040404331E1E1E83484848CB6F6F6FFC717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C550000000000000014393939B64D4D4DD3020202290000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020202254B4B4BCF3C3C3CBA00000017000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF165BADD705172C6D0000011000000000000000000000
      0000000000000000000000000000000000000000000000000010080808471A1A
      1A7A000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      000000000000000000000A0A0A4E323232AA323232AA323232AA323232AA3232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA444444C66B6B
      6BF9000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C550606063C595959E32A2A2A9D0000000A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000008282828975C5C5CE6070707400C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1D78E2F60D396CAA030E1A540000
      000C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      000000000000000000034F4F4FD6616161EC323232AA323232AA323232AA3232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA2F2F2FA60D0D
      0D58000000000000000000000000000000000000000000000000000000000000
      0000717171FF3C3C3CBA636363EF0E0E0E5D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D0D0D58636363EF3E3E3EBD7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1E7A
      E7F8114686BD071E397C02080F410000000E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      00000000000011111163717171FF111111660000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF4D4D4DD302020229000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020202254B4B4BCF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F7FF2FE1860B7DD103F79B40A294E90030D
      1A54000000000000000000000000000000000000000000000000000000000000
      0000515151D8717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF4A4A4ACE000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000515151D8717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF5959
      59E3000000000000000000000000000000000000000000000000000000000000
      0000000000100505053B12121267252525933F3F3FBE5F5F5FEA717171FF7171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F7D
      EEFC000000000000000000000000000000000000000000000000000000000000
      0000000000170B0B0B510C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550B0B0B5100000012000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000170B0B0B510C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550B0B0B510101
      011A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000170707
      07421515156E0303032F0606063E515151D86F6F6FFC717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00001E7CEBFA1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F80
      F2FE000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000008040404300E0E0E5C1F1F
      1F87373737B3555555DD707070FE717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000926488B1E7CECFB1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1E7CECFB0A2B
      5294000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000C04040435101010612121218C3A3A3AB85959
      59E3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D586B6B6BF9717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF6D6D6DFA111111630000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000303030A7717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF3737
      37B3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000303030A7444444C60C0C0C550C0C0C55444444C6444444C60C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C55444444C6323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F6F6FFC2222228E0C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C552222228E7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101011C0C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550101011C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C550101011C0C0C0C550C0C0C550101011C0101011C0C0C
      0C550C0C0C550101011C0101011C0C0C0C550C0C0C550101011C0101011C0C0C
      0C550C0C0C550101011C000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550101011C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C55717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF717171FF0C0C0C55000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF0C0C0C55000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008080845717171FF0000001100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000007717171FF0A0A0A50000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF717171FF0C0C0C55000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000636363EF1212126600000000000000000000000000000000000000000000
      00000000000000000000000000000000000B717171FF0A0A0A4D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA323232AA323232AA323232AA323232AA00000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000166F6F6FFC0B0B0B5100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000008080847717171FE0101011F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C550101011C0C0C0C550C0C0C550101011C0101011C0C0C
      0C550C0C0C550101011C0101011C0C0C0C550C0C0C550101011C0101011C0C0C
      0C550C0C0C550101011C000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      00003E3E3EBD2F2F2FA600000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C55717171FF3F3F3FBE323232AA3232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA323232AA3232
      32AA000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      00006D6D6DFB474747CA323232AA323232AA323232AA323232AA323232AA3232
      32AA323232AA323232AA444444C6717171FF00000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000303030A7505050D700000010000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000C4B4B4BCF363636B200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C550101011C0C0C0C550C0C0C550101011C0101011C0C0C
      0C550C0C0C550101011C0101011C0C0C0C550C0C0C550101011C0101011C0C0C
      0C550C0C0C550101011C0101011C0C0C0C550C0C0C550101011C0C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000B0B0B526F6F6FFC07070740000000000000000000000000000000000000
      0000000000000000000000000012515151D84B4B4BD1323232AA323232AA3232
      32AA323232AA323232AA323232AA323232AA323232AA323232AA444444C67171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000575757E11E1E1E8400000000000000000000000000000000000000000000
      0000000000000000000019191979606060EB00000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000017545454DC505050D70B0B0B510000
      0011000000000000000000000000000000000000000000000000000000000000
      0000000000100A0A0A4D4D4D4DD2595959E20101011C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000002B2B2B9E696969F5191919780101011E00000004000000000000
      0000000000110B0B0B51535353DB717171FF0202022600000000000000000000
      0000000000000000000000000000000000000000000000000000131313686464
      64F0000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      00001F1F1F87656565F104040435000000000000000000000000000000000000
      0000000000000303032E616161EC2525259200000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000017303030A76F6F6FFC7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF6F6F6FFD343434AD0101011B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000217171775626262EE717171FF717171FF717171FF7171
      71FF717171FF6D6D6DFB2E2E2EA3656565F11616167200000000000000000000
      0000000000000000000000000000000000000000000000000000414141C23232
      32AB000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      00000000000A3F3F3FBF6F6F6FFC414141C2323232AA323232AA323232AA3232
      32AA404040C06D6D6DFB444444C60000000E00000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000160808
      08450C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C55080808460101011900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C550101011C0C0C0C550C0C0C550101011C0101011C0C0C
      0C550C0C0C550101011C0101011C0C0C0C550C0C0C550101011C0101011C0C0C
      0C550C0C0C550101011C0101011C0C0C0C550C0C0C550101011C0C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000080505053B0B0B0B510C0C0C550C0C
      0C5508080845000000140000000018181876696969F608080845000000000000
      000000000000000000000000000000000000000000001C1C1C806D6D6DFA0303
      0330000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      000000000000000000030D0D0D5828282899323232AA323232AA323232AA3232
      32AA2929299A0F0F0F5D000000040000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101011F0B0B0B500B0B0B5101010122000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C55000000000000000000000000000000000101011C0C0C
      0C550C0C0C550101011C0101011C0C0C0C550C0C0C550101011C0101011C0C0C
      0C550C0C0C550101011C0101011C0C0C0C550C0C0C550101011C0C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303032C0C0C0C540707
      0744000000070000000000000000000000012A2A2A9C6F6F6FFD323232AA1212
      12680C0C0C550C0C0C550D0D0D5916161671454545C76B6B6BF90E0E0E5C0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000101011C373737B2717171FE717171FF717171FF717171FE3A3A3AB80101
      0120000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C55000000000000000000000000000000000C0C0C557171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000010393939B6717171FF717171FF7171
      71FF5B5B5BE5070707410000000000000000000000000B0B0B513E3E3EBD6363
      63EF717171FF717171FF6D6D6DFB5C5C5CE72E2E2EA40303032C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000000000000000000000000000000000132F2F2FA5696969F56A6A6AF73232
      32AA0000001700000000000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      011B595959E24B4B4BD008080847000000070000000607070742474747CA5C5C
      5CE7010101200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C55000000000000000000000000000000000C0C0C557171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF717171FF0C0C0C550C0C0C55717171FF717171FF0C0C0C550C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000363636B15C5C5CE709090949000000030101
      0121373737B2676767F30101011E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000000000000000000000000001424242C45C5C5CE71313136A121212675959
      59E2484848CC00000003000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003434
      34AD4D4D4DD20000000C00000000000000000000000000000000000000094747
      47CA3A3A3AB80000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C55000000000000000000000000000000000101011C0C0C
      0C550C0C0C550101011C0101011C0C0C0C550C0C0C550101011C0101011C0C0C
      0C550C0C0C550101011C0101011C0C0C0C550C0C0C550101011C0C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020225717171FF0A0A0A4E00000000000000000000
      0000000000085B5B5BE51E1E1E84000000000000000000000000000000000606
      063D27272796323232A91E1E1E840101011E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000000000000000000004040433717171FF0606063C00000000000000000404
      0432717171FF0606063D000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101196F6F
      6FFD0A0A0A4D0000000000000000000000000000000000000000000000000707
      0742717171FE0101012200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF2222228E0C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C552222228E7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000909094A717171FF0000000D00000000000000000000
      000000000000333333AC323232A90000000000000000000000001C1C1C7F7171
      71FE4A4A4ACE333333AC5B5B5BE5676767F30707074100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000000000000000000009090949717171FF0000000F00000000000000000000
      0005717171FF0B0B0B53000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808467171
      71FF000000100000000000000000000000000000000000000000000000000000
      0006717171FF0B0B0B5000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000005050537717171FF0303032F00000000000000000000
      0000000000004A4A4ACE27272796000000000000000005050538717171FE1515
      1570000000000000000000000008373737B25B5B5BE500000007000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      000000000000000000000101011A6D6D6DFB1A1A1A7B00000000000000001515
      15706F6F6FFD01010122000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000080808457171
      71FF000000110000000000000000000000000000000000000000000000000000
      0007717171FF0A0A0A5000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000003525252D9414141C20000000F000000000000
      000015151570717171FE0606063D00000000000000002222228E4F4F4FD50000
      000000000000000000000000000001010121717171FF07070744000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      00000000000000000000000000001A1A1A7B717171FF464646C9454545C77171
      71FE1F1F1F8600000000000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000166F6F
      6FFC0B0B0B510000000000000000000000000000000000000000000000000808
      0847717171FE0101011F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040432606060EB626262EE3A3A3AB84F4F
      4FD5717171FE1C1C1C7F0000000000000000000000002B2B2B9E3A3A3AB70000
      000000000000000000000000000000000003717171FF0C0C0C54000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000808084527272796272727970909
      094B0000000000000000000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003030
      30A7505050D700000010000000000000000000000000000000000000000C4B4B
      4BCF363636B20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000015181818772B2B2B9E2323
      238E050505380000000000000000000000000000000018181877626262EE0000
      000F00000000000000000000000009090949717171FF0303032C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0017545454DC505050D70B0B0B5100000011000000100A0A0A4D4D4D4DD25959
      59E20101011C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0C0C0C5500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C557171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000015606060EB4141
      41C20303032F0000000D0A0A0A4E5C5C5CE7393939B600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000017303030A76F6F6FFC717171FF717171FF6F6F6FFD343434AD0101
      011B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000515151D8717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF5959
      59E3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404325252
      52D9717171FF717171FF717171FF363636B10000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA0000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000016080808450808084601010119000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000170B0B0B510C0C0C550C0C0C550C0C0C55444444C6444444C60C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C55444444C6444444C60C0C0C550C0C0C550C0C0C550B0B0B510101
      011A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0003050505370909094902020225000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002F2F2FA6444444C60C0C0C550C0C0C55444444C6444444C60C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C
      0C550C0C0C550C0C0C550C0C0C550C0C0C550C0C0C55444444C6323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B52666666F2717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF676767F30E0E0E5B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000323232AA323232AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA323232AA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 4588528
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D31392C33483543342E342C332C342C332E342C342C3476313663302C30
          2E362C302E342C312C312C316831683168313263302E362C302C312D302E342C
          312D3156344332302C332E342C31392E362C332C31392C337A204D352C323056
          34683276313648357A2020204D31392C3230483856346831315632307A222066
          696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C
          7061746820643D224D31332E352C374331322E312C372C31312C382E312C3131
          2C392E3573312E312C322E352C322E352C322E355331362C31302E392C31362C
          392E355331342E392C372C31332E352C377A204D31332E352C31312020632D30
          2E382C302D312E352D302E372D312E352D312E355331322E372C382C31332E35
          2C385331352C382E372C31352C392E355331342E332C31312C31332E352C3131
          7A222066696C6C3D22233732373237322220636C6173733D22426C61636B222F
          3E0D0A3C7061746820643D224D31352C3133682D33632D312E372C302D332C31
          2E332D332C3376316839762D314331382C31342E332C31362E372C31332C3135
          2C31337A204D31302C313663302D312E312C302E392D322C322D32683363312E
          312C302C322C302E392C322C324831307A222066696C6C3D2223373237323732
          2220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D31322C3543392E382C352C382C362E382C382C3973312E382C342C342C
          3473342D312E382C342D345331342E322C352C31322C357A204D31322C313263
          2D312E372C302D332D312E332D332D3373312E332D332C332D3373332C312E33
          2C332C3320205331332E372C31322C31322C31327A222066696C6C3D22233732
          373237322220636C6173733D22426C61636B222F3E0D0A3C7061746820643D22
          4D352C31387631683134762D3163302D322E322D312E382D342D342D34483943
          362E382C31342C352C31352E382C352C31387A204D31382C313848366C302C30
          63302D312E372C312E332D332C332D3368364331362E372C31352C31382C3136
          2E332C31382C313820204C31382C31387A222066696C6C3D2223373237323732
          2220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D32302C35682D335633682D3176324838563348377632483443332E342C
          352C332C352E342C332C3676313463302C302E362C302E342C312C312C316831
          3663302E362C302C312D302E342C312D3156364332312C352E342C32302E362C
          352C32302C357A2020204D32302C323048345631306831365632307A204D3230
          2C39483456366833683168313256397A222066696C6C3D222337323732373222
          20636C6173733D22426C61636B222F3E0D0A3C7265637420783D22352220793D
          223134222077696474683D223222206865696768743D2232222072783D223022
          2072793D2230222066696C6C3D22233732373237322220636C6173733D22426C
          61636B222F3E0D0A3C7265637420783D22382220793D22313122207769647468
          3D223222206865696768743D2232222072783D2230222072793D223022206669
          6C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C72
          65637420783D22382220793D223134222077696474683D223222206865696768
          743D2232222072783D2230222072793D2230222066696C6C3D22233732373237
          322220636C6173733D22426C61636B222F3E0D0A3C7265637420783D22313122
          20793D223131222077696474683D223222206865696768743D2232222072783D
          2230222072793D2230222066696C6C3D22233732373237322220636C6173733D
          22426C61636B222F3E0D0A3C7265637420783D2231372220793D223131222077
          696474683D223222206865696768743D2232222072783D2230222072793D2230
          222066696C6C3D22233732373237322220636C6173733D22426C61636B222F3E
          0D0A3C7265637420783D2231342220793D223131222077696474683D22322220
          6865696768743D2232222072783D2230222072793D2230222066696C6C3D2223
          3732373237322220636C6173733D22426C61636B222F3E0D0A3C726563742078
          3D2231312220793D223134222077696474683D223222206865696768743D2232
          222072783D2230222072793D2230222066696C6C3D2223373237323732222063
          6C6173733D22426C61636B222F3E0D0A3C7265637420783D2231372220793D22
          3134222077696474683D223222206865696768743D2232222072783D22302220
          72793D2230222066696C6C3D22233732373237322220636C6173733D22426C61
          636B222F3E0D0A3C7265637420783D2231342220793D22313422207769647468
          3D223222206865696768743D2232222072783D2230222072793D223022206669
          6C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C72
          65637420783D22352220793D223137222077696474683D223222206865696768
          743D2232222072783D2230222072793D2230222066696C6C3D22233732373237
          322220636C6173733D22426C61636B222F3E0D0A3C7265637420783D22382220
          793D223137222077696474683D223222206865696768743D2232222072783D22
          30222072793D2230222066696C6C3D22233732373237322220636C6173733D22
          426C61636B222F3E0D0A3C7265637420783D2231312220793D22313722207769
          6474683D223222206865696768743D2232222072783D2230222072793D223022
          2066696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D
          0A3C7265637420783D2231342220793D223137222077696474683D2232222068
          65696768743D2232222072783D2230222072793D2230222066696C6C3D222337
          32373237322220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D382C37632D312E372C302D332C312E332D332C3373312E332C332C332C
          3373332D312E332C332D3353392E372C372C382C377A204D382C3132632D312E
          312C302D322D302E392D322D3273302E392D322C322D3273322C302E392C322C
          32202053392E312C31322C382C31327A222066696C6C3D222337323732373222
          20636C6173733D22426C61636B222F3E0D0A3C7061746820643D224D32312C31
          3663302D322E322D312E382D342D342D34682D32632D312E372C302D332E322C
          312E312D332E382C322E374331302E362C31342E332C392E382C31342C392C31
          344837632D322E322C302D342C312E382D342C347631683130762D3120206330
          2D302E332D302E312D302E372D302E312D314832315631367A204D31322C3138
          483463302D312E372C312E332D332C332D33683263302E382C302C312E352C30
          2E332C322C302E3863302E342C302E332C302E362C302E372C302E382C312E32
          4331312E392C31372E332C31322C31372E362C31322C31387A2020204D31322E
          342C3136632D302E312D302E322D302E322D302E342D302E342D302E3663302E
          332D312E332C312E352D322E342C332D322E34683263312E372C302C332C312E
          332C332C334831322E347A222066696C6C3D22233732373237322220636C6173
          733D22426C61636B222F3E0D0A3C7061746820643D224D31362C35632D312E37
          2C302D332C312E332D332C3373312E332C332C332C3373332D312E332C332D33
          5331372E372C352C31362C357A204D31362C3130632D312E312C302D322D302E
          392D322D3273302E392D322C322D3273322C302E392C322C3220205331372E31
          2C31302C31362C31307A222066696C6C3D22233732373237322220636C617373
          3D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D342E332C31372E34632D302E352C302E352D302E382C312E312D312E31
          2C312E3643332E312C31392E312C332C31392E342C332C31392E365632306330
          2C302E352C302E352C312C312C3168313663302E362C302C312D302E352C312D
          3156372E3820204331322E342C392E332C372C31342C342E332C31372E347A22
          2066696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D
          0A3C7061746820643D224D32302C33483443332E352C332C332C332E352C332C
          3476392E3563332E322D332E332C382E382D362E392C31372E332D372E396330
          2E322C302C302E372D302E312C302E372D302E3856344332312C332E352C3230
          2E352C332C32302C337A222066696C6C3D22234634383132302220636C617373
          3D22737430222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B20203C70617468
          20643D224D32302C37682D382E316C2D302E382D312E344331302E392C352E32
          2C31302E362C352C31302E322C354835483443332E342C352C332C352E342C33
          2C3676313263302C302E362C302E342C312C312C3168313663302E362C302C31
          2D302E342C312D31563820204332312C372E342C32302E362C372C32302C377A
          204D32302C31384834762D376831365631387A204D32302C3130483456366831
          68356C302E372C312E334C31312C3868395631307A222066696C6C3D22233732
          373237322220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B20203C70617468
          20643D224D32302C35483443332E342C352C332C352E342C332C367631326330
          2C302E362C302E342C312C312C3168313663302E362C302C312D302E342C312D
          3156364332312C352E342C32302E362C352C32302C357A204D32302C31384834
          56376C382C366C382D3656313820207A204D31322C31324C342C366831364C31
          322C31327A222066696C6C3D22233732373237322220636C6173733D22426C61
          636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706F6C79676F
          6E20706F696E74733D2232312C31312032312C332031312C342E372031312C31
          3120222066696C6C3D22233732373237322220636C6173733D22426C61636B22
          2F3E0D0A3C706F6C79676F6E20706F696E74733D22332C313220332C31372031
          302C31382E322031302C313220222066696C6C3D22233732373237322220636C
          6173733D22426C61636B222F3E0D0A3C706F6C79676F6E20706F696E74733D22
          31312C31382E332032312C32302032312C31322031312C313220222066696C6C
          3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C706F6C
          79676F6E20706F696E74733D2231302C342E3820332C3620332C31312031302C
          313120222066696C6C3D22233732373237322220636C6173733D22426C61636B
          222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B20203C706F6C79
          676F6E20706F696E74733D2231392C31312031332C31312031332C352031322C
          352031322C313120362C313120362C31322031322C31322031322C3138203133
          2C31382031332C31322031392C313220222066696C6C3D222337323732373222
          20636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D31322C3543392E382C352C382C362E382C382C3973312E382C342C342C
          3473342D312E382C342D345331342E322C352C31322C357A204D31322C313263
          2D312E372C302D332D312E332D332D3373312E332D332C332D3373332C312E33
          2C332C3320205331332E372C31322C31322C31327A222066696C6C3D22233732
          373237322220636C6173733D22426C61636B222F3E0D0A3C7061746820643D22
          4D352C31387631683134762D3163302D322E322D312E382D342D342D34483943
          362E382C31342C352C31352E382C352C31387A204D31382C313848366C302C30
          63302D312E372C312E332D332C332D3368364331362E372C31352C31382C3136
          2E332C31382C313820204C31382C31387A222066696C6C3D2223373237323732
          2220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A696E6C696E653B66696C6C3A233033394332333B
          7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C69
          6E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E
          7374347B646973706C61793A696E6C696E653B66696C6C3A233732373237323B
          7D3C2F7374796C653E0D0A3C672069643D2241626F7574223E0D0A09093C7061
          746820636C6173733D22426C75652220643D224D31362C3243382E332C322C32
          2C382E332C322C313673362E332C31342C31342C31347331342D362E332C3134
          2D31345332332E372C322C31362C327A204D31362C3663312E312C302C322C30
          2E392C322C32732D302E392C322D322C32732D322D302E392D322D3220202623
          393B2623393B5331342E392C362C31362C367A204D32302C3234682D38762D32
          6832762D38682D32762D326832683476313068325632347A222F3E0D0A093C2F
          673E0D0A3C2F7376673E0D0A}
      end>
  end
  object MSQuery1: TMSQuery
    Connection = MSConnection1
    SQL.Strings = (
      'SELECT * FROM KONTAKTVIEW;')
    Active = True
    Left = 977
    Top = 192
  end
  object MSDataSource1: TMSDataSource
    DataSet = MSQuery1
    Left = 1017
    Top = 256
  end
  object MSConnection1: TMSConnection
    Database = 'Kontaktdaten'
    Username = 'sa'
    Server = 'PC-SASA'
    Connected = True
    Left = 953
    Top = 408
    EncryptedPassword = '9EFF9CFF8DFF96FF9DFF9EFFCFFFC7FFDEFF'
  end
end
