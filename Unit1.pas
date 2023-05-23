unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm1 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
DBEdit1.clear;
DBEdit2.clear;
DBEdit3.clear;
DBEdit4.clear;
DBEdit5.clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Zquery1.SQL.clear;
Zquery1.SQL.Add('insert into kustomer values(null,"+DBEdit1.Text+","+DBEdit2.Text+","+DBEdit3.Text+","+DBEdit4.Text+","+DBEdit5.Text+")');
Zquery1.ExecSQL;

Zquery1.SQL.Clear;
Zquery1.SQL.Add('Select * from kustomer');
zquery1.Open;


end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Zquery1.SQL.clear;
Zquery1.SQL.Add('update kustomer set nmkustomer="Budi, S.KOM" where idkustomer=1');

Zquery1.SQL.Clear;
Zquery1.SQL.Add('Select * from kustomer');
zquery1.Open;












end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Zquery1.SQL.clear;
Zquery1.SQL.Add('delete from kustomer where idkustomer=3');

Zquery1.SQL.Clear;
Zquery1.SQL.Add('Select * from kustomer');
zquery1.Open;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
DBEdit1.clear;
DBEdit2.clear;
DBEdit3.clear;
DBEdit4.clear;
DBEdit5.clear;
end;

end.
