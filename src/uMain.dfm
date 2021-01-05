object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main Application'
  ClientHeight = 311
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 0
    Top = 0
    Width = 643
    Height = 286
    Align = alClient
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbnvgr1: TDBNavigator
    Left = 0
    Top = 286
    Width = 643
    Height = 25
    DataSource = ds1
    Align = alBottom
    TabOrder = 1
  end
  object fdqry1: TFDQuery
    Connection = dmAPI.conDatabase
    SQL.Strings = (
      'SELECT * FROM UJI')
    Left = 96
    Top = 32
  end
  object ds1: TDataSource
    DataSet = fdqry1
    Left = 160
    Top = 32
  end
end
