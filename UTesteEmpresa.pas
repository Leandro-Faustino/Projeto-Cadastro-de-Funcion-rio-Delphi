unit UTesteEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TCadFuncionario = class(TForm)
    ConexaoPrincipal: TADOConnection;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    grid: TDBGrid;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    QyCidades: TADOQuery;
    DSCidades: TDataSource;
    QyCidadesuf: TWideStringField;
    QyCidadescidade: TWideStringField;
    QyCidadespais: TWideStringField;
    QyFuncionario: TADOQuery;
    DsFuncionario: TDataSource;
    edCod: TEdit;
    edNome: TEdit;
    EdCidade: TEdit;
    edEnd: TEdit;
    edBairro: TEdit;
    edPais: TEdit;
    edUf: TEdit;
    mkedtnasc: TMaskEdit;
    ednum: TEdit;
    edComp: TEdit;
    edEmail: TEdit;
    edsalario: TEdit;
    QyFuncionarionome: TWideStringField;
    QyFuncionarioendereco: TWideStringField;
    QyFuncionariobairro: TWideStringField;
    QyFuncionarionumero: TIntegerField;
    QyFuncionariocomplemento: TWideStringField;
    QyFuncionariocidade: TWideStringField;
    QyFuncionariocep: TWideStringField;
    QyFuncionariorg: TWideStringField;
    QyFuncionariofone: TWideStringField;
    QyFuncionariocelular: TWideStringField;
    QyFuncionariodataNascimento: TDateField;
    QyFuncionarioemail: TWideStringField;
    QyFuncionariosalario: TBCDField;
    QyFuncionariouf: TWideStringField;
    QyFuncionariopais: TWideStringField;
    btnNovo: TButton;
    edcep: TEdit;
    edRg: TEdit;
    edfone: TEdit;
    edCel: TEdit;
    Button2: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    Button6: TButton;
    PageControl1: TPageControl;
    Cadastro: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridConsulta: TDBGrid;
    Panel2: TPanel;
    Button7: TButton;
    edCodigo: TEdit;
    Label11: TLabel;
    Qyfiltro: TADOQuery;
    DsFiltro: TDataSource;
    Qyfiltrocodigo: TIntegerField;
    Qyfiltronome: TWideStringField;
    Qyfiltroendereco: TWideStringField;
    Qyfiltrobairro: TWideStringField;
    Qyfiltronumero: TIntegerField;
    Qyfiltrocomplemento: TWideStringField;
    Qyfiltrocidade: TWideStringField;
    Qyfiltrocep: TWideStringField;
    Qyfiltrorg: TWideStringField;
    Qyfiltrofone: TWideStringField;
    Qyfiltrocelular: TWideStringField;
    QyfiltrodataNascimento: TDateField;
    Qyfiltroemail: TWideStringField;
    Qyfiltrosalario: TBCDField;
    Qyfiltrouf: TWideStringField;
    Qyfiltropais: TWideStringField;
    QyFuncionariocodigo: TAutoIncField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edcepExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure gridCellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGridConsultaDblClick(Sender: TObject);
  private
    { Private declarations }

  public
  procedure LimparCampos;
    { Public declarations }
  end;

var
  CadFuncionario: TCadFuncionario;

implementation

{$R *.dfm}


procedure TCadFuncionario.btnEditarClick(Sender: TObject);
var
   params : Tparameter;
begin
   with QyFuncionario do
   begin
     close;
     sql.clear;
     sql.add(' update Funcionarios set nome = :pNome,rg = :prg,datanascimento = :pdatanascimento,');
     sql.Add(' cep = :pcep, cidade = :pcidade,uf = :puf,pais = :pPais, endereco = :pEndereco,bairro = :pbairro,');
     sql.Add(' numero = :pNumero, complemento = :pComplemento, email = :pemail,');
     sql.Add(' fone = :Pfone, celular = :pcelular, salario = :psalario');
     sql.Add(' where codigo = :pcodigo');
     params := QyFuncionario.Parameters.ParamByName('pcodigo');
     params.DataType := ftInteger;
     params.Value := edcod.text;

     params := QyFuncionario.Parameters.ParamByName('pnome');
     params.DataType := ftstring;
     params.Value := ednome.text;

     params := QyFuncionario.Parameters.ParamByName('prg');
     params.DataType := ftstring;
     params.Value := edrg.text;

     params := QyFuncionario.Parameters.ParamByName('pdatanascimento');
     params.DataType := ftdate;
     params.Value := mkedtnasc.text;

     params := QyFuncionario.Parameters.ParamByName('pcep');
     params.DataType := ftstring;
     params.Value := edcep.text;

     params := QyFuncionario.Parameters.ParamByName('pcidade');
     params.DataType := ftstring;
     params.Value := edcidade.text;

     params := QyFuncionario.Parameters.ParamByName('puf');
     params.DataType := ftstring;
     params.Value := eduf.text;

     params := QyFuncionario.Parameters.ParamByName('ppais');
     params.DataType := ftstring;
     params.Value := edpais.text;

     params := QyFuncionario.Parameters.ParamByName('pendereco');
     params.DataType := ftstring;
     params.Value := edend.text;

     params := QyFuncionario.Parameters.ParamByName('pbairro');
     params.DataType := ftstring;
     params.Value := edbairro.text;

     params := QyFuncionario.Parameters.ParamByName('pnumero');
     params.DataType := ftinteger;
     params.Value := ednum.text;

     params := QyFuncionario.Parameters.ParamByName('pcomplemento');
     params.DataType := ftstring;
     params.Value := edcomp.text;

     params := QyFuncionario.Parameters.ParamByName('pfone');
     params.DataType := ftstring;
     params.Value := edfone.text;

     params := QyFuncionario.Parameters.ParamByName('pcelular');
     params.DataType := ftstring;
     params.Value := edcel.text;

     params := QyFuncionario.Parameters.ParamByName('psalario');
     params.DataType := ftCurrency;
     params.Value := edsalario.text;

     params := QyFuncionario.Parameters.ParamByName('pemail');
     params.DataType := ftstring;
     params.Value := edemail.text;
     execSql;

   end;
   qyfuncionario.close;
   qyfuncionario.sql.clear;
   qyfuncionario.sql.add('select * from funcionarios');
   qyfuncionario.open;
   
end;

procedure TCadFuncionario.btnExcluirClick(Sender: TObject);
var
   params : Tparameter;
begin
   if MessageDlg('Deseja Excluir Este Registro?',mtConfirmation,[mbyes, mbno],0) = mryes then
   begin
     with QyFuncionario do
     begin
       close;
       sql.clear;
       sql.add(' delete from Funcionarios where codigo = :pcodigo');
       params := QyFuncionario.Parameters.ParamByName('pcodigo');
       params.DataType := ftInteger;
       params.Value := edcod.text;
       execSQL;
       qyfuncionario.close;
       qyfuncionario.sql.clear;
       qyfuncionario.sql.add('select * from funcionarios');
       qyfuncionario.open;
       LimparCampos;
       ShowMessage(' Registro Exclu?do com sucesso!');
     end;
   end
   else
   ShowMessage(' O Registro n?o foi Deletado!');
end;

procedure TCadFuncionario.btnNovoClick(Sender: TObject);
begin
   LimparCampos;
   QyFuncionario.Append;
   btnEditar.Enabled:= false;
   btnExcluir.Enabled:= false;
   ednome.SetFocus;
end;

procedure TCadFuncionario.Button2Click(Sender: TObject);
var
   param : TParameter;
begin
   if qyFuncionario.state in [dsinsert,dsedit] then
   begin
     qyfuncionario.FieldByName('nome').value := edNome.text;
     qyfuncionario.FieldByName('rg').value := edRg.text;
     qyfuncionario.FieldByName('datanascimento').value := mkedtNasc.text;
     qyfuncionario.FieldByName('cep').value := edcep.text;
     qyfuncionario.FieldByName('cidade').value := edcidade.text;
     qyfuncionario.FieldByName('uf').value := eduf.text;
     qyfuncionario.FieldByName('pais').value := edpais.text;
     qyfuncionario.FieldByName('endereco').value := edend.text;
     qyfuncionario.FieldByName('bairro').value := edbairro.text;
     qyfuncionario.FieldByName('numero').value := ednum.text;
     qyfuncionario.FieldByName('complemento').value := edcomp.text;
     qyfuncionario.FieldByName('email').value := edemail.text;
     qyfuncionario.FieldByName('fone').value := edfone.text;
     qyfuncionario.FieldByName('celular').value := edcel.text;
     qyfuncionario.FieldByName('salario').value := edsalario.text;
     qyfuncionario.post;
     btnEditar.Enabled:= true;
     btnExcluir.Enabled:= true;
     btnNovo.Enabled := true;
   end;
   qycidades.close;
   qycidades.sql.clear;
   qycidades.sql.add('select * from cidades where codigo = ' + quotedstr(edcep.text));
   qycidades.open;
   if qyCidades.IsEmpty then
   begin
     qycidades.close;
     qycidades.sql.clear;
     qycidades.sql.add('insert into cidades (codigo,cidade,uf,pais)');
     qycidades.Sql.Add(' values(:pcodigo,:pcidade,:puf,:ppais )');
     param := qycidades.parameters.parambyname('pcodigo');
     param.DataType := ftInteger;
     param.value := strtoint(edcep.text);
     param := qycidades.parameters.parambyname('pcidade');
     param.DataType := ftString;
     param.value := edcidade.text;
     param := qycidades.parameters.parambyname('puf');
     param.DataType := ftString;
     param.value := eduf.text;
     param := qycidades.parameters.parambyname('ppais');
     param.DataType := ftString;
     param.value := edpais.text;
     qycidades.execsql;
   end;

end;

procedure TCadFuncionario.Button3Click(Sender: TObject);
var
params: TParameter;
begin
   qyfiltro.close;
   qyfiltro.sql.clear;
   qyfiltro.sql.add(' select * from Funcionarios ');
   qyfiltro.sql.add(' where codigo = :pcodigo');
   params := qyfiltro.parameters.parambyname('pcodigo');
   params.DataType := ftInteger;
   if edcodigo.text <> '' then
   begin
     params.value := edcodigo.text;
     qyfiltro.open;
     edcodigo.clear;
   end
   else
   begin
     qyfiltro.close;
     qyfiltro.sql.clear;
     qyfiltro.sql.add(' select * from Funcionarios ');
     qyfiltro.open;
     edcodigo.setfocus;
   end;
end;

procedure TCadFuncionario.Button6Click(Sender: TObject);
begin
   if qyfuncionario.state in [dsinsert] then
   begin
     btneditar.Enabled := true;
     btnExcluir.Enabled := true;
   end;
   qyfuncionario.Cancel;
   LimparCampos;

end;

procedure TCadFuncionario.DBGridConsultaDblClick(Sender: TObject);
begin
   PageControl1.ActivePageIndex :=0;
   edcod.text := DBGridConsulta.Fields[0].value;
   edNome.text := DBGridConsulta.Fields[1].value;
   edRg.text := DBGridConsulta.Fields[8].value;
   mkedtNasc.text := DBGridConsulta.Fields[11].value;
   edcep.text := DBGridConsulta.Fields[7].value;
   edcidade.text := DBGridConsulta.Fields[6].value;
   eduf.text := DBGridConsulta.Fields[14].value;
   edpais.text := DBGridConsulta.Fields[15].value;
   edend.text := DBGridConsulta.Fields[2].value;
   edbairro.text := DBGridConsulta.Fields[3].value;
   ednum.text := DBGridConsulta.Fields[4].value;
   edcomp.text := DBGridConsulta.Fields[5].value;
   edemail.text := DBGridConsulta.Fields[12].value;
   edfone.text := DBGridConsulta.Fields[9].value;
   edcel.text := DBGridConsulta.Fields[10].value;
   edsalario.text := DBGridConsulta.Fields[13].value;
end;

procedure TCadFuncionario.gridCellClick(Column: TColumn);
begin
   edcod.text := grid.Fields[0].value;
   edNome.text := grid.Fields[1].value;
   edRg.text := grid.Fields[8].value;
   mkedtNasc.text := grid.Fields[11].value;
   edcep.text := grid.Fields[7].value;
   edcidade.text := grid.Fields[6].value;
   eduf.text := grid.Fields[14].value;
   edpais.text := grid.Fields[15].value;
   edend.text := grid.Fields[2].value;
   edbairro.text := grid.Fields[3].value;
   ednum.text := grid.Fields[4].value;
   edcomp.text := grid.Fields[5].value;
   edemail.text := grid.Fields[12].value;
   edfone.text := grid.Fields[9].value;
   edcel.text := grid.Fields[10].value;
   edsalario.text := grid.Fields[13].value;
end;

procedure TCadFuncionario.LimparCampos;
begin
   edcod.clear;
   edNome.clear;
   edRg.clear;
   mkedtNasc.clear;
   edcep.clear;
   edcidade.clear;
   eduf.clear;
   edpais.clear;
   edend.clear;
   edbairro.clear;
   ednum.clear;
   edcomp.clear;
   edemail.clear;
   edfone.clear;
   edcel.clear;
   edsalario.clear;
   ednome.SetFocus;
end;

procedure TCadFuncionario.PageControl1Change(Sender: TObject);
begin
   Qyfiltro.close;

end;

procedure TCadFuncionario.edcepExit(Sender: TObject);
begin
   qycidades.close;
   qycidades.sql.clear;
   qycidades.sql.add('select cidade,uf,pais from Cidades where codigo =' + quotedstr(edcep.text));
   qycidades.open;
   if qycidades.IsEmpty then
   begin
      edcidade.setfocus
   end
   else
   begin
      EdCidade.text := qycidades.FieldByName('cidade').value;
      Eduf.text := qycidades.FieldByName('uf').value;
      Edpais.text := qycidades.FieldByName('pais').value;
      edend.setfocus;
   end;
end;

procedure TCadFuncionario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qyFuncionario.close;
   qyfiltro.close;
   qycidades.close;
end;

procedure TCadFuncionario.FormCreate(Sender: TObject);
begin
   qyFuncionario.Open;
   qyfiltro.open;
   qycidades.close;
end;

end.
