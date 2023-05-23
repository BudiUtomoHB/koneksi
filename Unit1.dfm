object Form1: TForm1
  Left = 317
  Top = 146
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 56
    Width = 75
    Height = 13
    Caption = 'Nama Kustomer'
  end
  object Label2: TLabel
    Left = 32
    Top = 120
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label3: TLabel
    Left = 32
    Top = 160
    Width = 22
    Height = 13
    Caption = 'Kota'
  end
  object Label4: TLabel
    Left = 32
    Top = 200
    Width = 44
    Height = 13
    Caption = 'Kode Pos'
  end
  object Label5: TLabel
    Left = 32
    Top = 88
    Width = 38
    Height = 13
    Caption = 'Telepon'
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 296
    Width = 209
    Height = 193
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 144
    Top = 56
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 88
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 144
    Top = 120
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 144
    Top = 152
    Width = 185
    Height = 21
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 144
    Top = 192
    Width = 185
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 32
    Top = 232
    Width = 57
    Height = 33
    Caption = 'Baru'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 104
    Top = 232
    Width = 73
    Height = 33
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 192
    Top = 232
    Width = 57
    Height = 33
    Caption = 'Edit'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 256
    Top = 232
    Width = 57
    Height = 33
    Caption = 'Hapus'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 328
    Top = 232
    Width = 57
    Height = 33
    Caption = 'Batal'
    TabOrder = 10
    OnClick = Button5Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'Localhost'
    Port = 3306
    Database = 'db_visual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'D:\KULIAH\SEMESTER 4\VISUAL\Delphi Season 4\DATABASE\libmysql.dl' +
      'l'
    Left = 112
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from kustomer')
    Params = <>
    Left = 56
    Top = 8
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 184
    Top = 8
  end
end
