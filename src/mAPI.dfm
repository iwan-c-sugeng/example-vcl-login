object dmAPI: TdmAPI
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 184
  Width = 205
  object conDatabase: TFDConnection
    Params.Strings = (
      'Pooled=False'
      'Database=KOFA.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 61
    Top = 48
  end
end
