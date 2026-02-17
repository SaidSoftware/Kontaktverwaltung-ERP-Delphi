unit KVDatamodule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, MSAccess;

type
  TMyDataModule = class(TDataModule)
    MyQuery: TMSQuery;
    MyConnections: TMSConnection;
    MyDataSources: TMSDataSource;
    TMSQueryForGrid: TMSQuery;

  private
    { Private-Deklarationen }
  public

     property MyConnect:TMSConnection read MyConnections write MyConnections;
     property MyQueries: TMSQuery read MyQuery write  MyQuery;
     property MyQueryForGrid: TMSQuery read TMSQueryForGrid write TMSQueryForGrid;
     property MyDataSource:TMSDataSource read MyDataSources write  MyDataSources;
    { Public-Deklarationen }

  end;

var
  MyDataModule: TMyDataModule;  // Global
  IsEditMode: Boolean;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

