object Fmenu: TFmenu
  Left = 323
  Top = 232
  Width = 1089
  Height = 618
  Align = alClient
  Caption = 'Codefense'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 656
    Top = 64
    Width = 106
    Height = 19
    Caption = '  '#28216#25103#24471#20998
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #38582#20070
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBquestion: TLabel
    Left = 192
    Top = 216
    Width = 7
    Height = 14
    Align = alCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #26999#20307
    Font.Style = []
    ParentFont = False
  end
  object RzShapeButton1: TRzShapeButton
    Left = 560
    Top = 488
    Width = 89
    Height = 33
    Caption = #19979#19968#39064
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #26999#20307
    Font.Style = []
    ParentFont = False
    OnClick = RzShapeButton1Click
  end
  object RzBmpButton1: TRzBmpButton
    Left = 184
    Top = 16
    Width = 169
    Height = 81
    Bitmaps.TransparentColor = clOlive
    Color = clBtnFace
    Caption = #36873#25321#38590#24230
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = #38582#20070
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = RzBmpButton1Click
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 16
    Width = 99
    Height = 23
    Caption = #38590#24230#31561#32423':'
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = #38582#20070
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 56
    Width = 65
    Height = 17
    Caption = 'BitBtn1'
    Enabled = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object ProgressBar1: TProgressBar
    Left = 224
    Top = 128
    Width = 305
    Height = 25
    Min = 0
    Max = 100
    Position = 100
    Smooth = True
    TabOrder = 3
  end
  object Edit1: TEdit
    Left = 648
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 192
    Top = 288
    Width = 569
    Height = 185
    Align = alCustom
    DataField = #38382#39064
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = #26999#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 120
    Top = 104
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Caesar\Des' +
      'ktop\'#31185#21019#39033#30446'\data.mdb;Persist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from easy')
    Left = 32
    Top = 104
    object ADOQuery1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQuery1DSDesigner: TWideStringField
      FieldName = #38382#39064
      Size = 255
    end
    object ADOQuery1A: TWideStringField
      FieldName = 'A'
      Size = 255
    end
    object ADOQuery1B: TWideStringField
      FieldName = 'B'
      Size = 255
    end
    object ADOQuery1C: TWideStringField
      FieldName = 'C'
      Size = 255
    end
    object ADOQuery1D: TWideStringField
      FieldName = 'D'
      Size = 255
    end
    object ADOQuery1DSDesigner2: TWideStringField
      FieldName = #27491#30830#31572#26696
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 96
    Top = 104
  end
  object ADOTable1: TADOTable
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Caesar\Des' +
      'ktop\'#31185#21019#39033#30446'\data.mdb;Persist Security Info=False'
    TableName = 'easy'
    Left = 64
    Top = 104
  end
end
