object CadFuncionario: TCadFuncionario
  Left = 585
  Top = 274
  Caption = 'Cadastro De Funcion'#225'rios'
  ClientHeight = 508
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 822
    Height = 508
    ActivePage = Cadastro
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object Cadastro: TTabSheet
      Caption = 'Cadastro'
      object Label9: TLabel
        Left = 249
        Top = 152
        Width = 32
        Height = 13
        Caption = 'S'#225'lario'
      end
      object grid: TDBGrid
        Left = 0
        Top = 321
        Width = 814
        Height = 159
        TabStop = False
        Align = alClient
        DataSource = DsFuncionario
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = gridCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            ReadOnly = True
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Title.Caption = 'Bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero'
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'complemento'
            Title.Caption = 'Complemento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cidade'
            Title.Caption = 'Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Title.Caption = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rg'
            Title.Caption = 'RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fone'
            Title.Caption = 'Telefone'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'celular'
            Title.Caption = 'Celular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataNascimento'
            Title.Caption = 'Data de Nascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'E-mail'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'salario'
            Title.Caption = 'Sal'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'uf'
            Title.Caption = 'UF'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pais'
            Title.Caption = 'Pa'#237's'
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 814
        Height = 257
        Align = alTop
        Caption = 'Dados dos Funcion'#225'rios'
        Color = clWhite
        ParentBackground = False
        ParentColor = False
        TabOrder = 14
        object Label1: TLabel
          Left = 24
          Top = 16
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 24
          Top = 54
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label3: TLabel
          Left = 23
          Top = 127
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label4: TLabel
          Left = 310
          Top = 127
          Width = 28
          Height = 13
          Caption = 'Bairro'
        end
        object Label5: TLabel
          Left = 546
          Top = 127
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object Label6: TLabel
          Left = 23
          Top = 163
          Width = 65
          Height = 13
          Caption = 'Complemento'
        end
        object Label7: TLabel
          Left = 169
          Top = 90
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label15: TLabel
          Left = 23
          Top = 90
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label16: TLabel
          Left = 310
          Top = 54
          Width = 14
          Height = 13
          Caption = 'RG'
        end
        object Label17: TLabel
          Left = 23
          Top = 200
          Width = 24
          Height = 13
          Caption = 'Fone'
        end
        object Label18: TLabel
          Left = 169
          Top = 200
          Width = 33
          Height = 13
          Caption = 'Celular'
        end
        object Label19: TLabel
          Left = 445
          Top = 54
          Width = 96
          Height = 13
          Caption = 'Data de Nascimento'
        end
        object Label20: TLabel
          Left = 310
          Top = 163
          Width = 28
          Height = 13
          Caption = 'E-mail'
        end
        object Label21: TLabel
          Left = 310
          Top = 200
          Width = 32
          Height = 13
          Caption = 'S'#225'lario'
        end
        object Label8: TLabel
          Left = 417
          Top = 91
          Width = 19
          Height = 13
          Caption = 'Pa'#237's'
        end
        object Label10: TLabel
          Left = 546
          Top = 91
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object edfone: TEdit
          Left = 23
          Top = 213
          Width = 139
          Height = 21
          TabOrder = 1
        end
        object edCel: TEdit
          Left = 165
          Top = 213
          Width = 139
          Height = 21
          TabOrder = 0
        end
      end
      object edBairro: TEdit
        Left = 310
        Top = 141
        Width = 230
        Height = 21
        TabOrder = 10
      end
      object edcep: TEdit
        Left = 23
        Top = 105
        Width = 139
        Height = 21
        TabOrder = 5
        OnExit = edcepExit
      end
      object EdCidade: TEdit
        Left = 169
        Top = 105
        Width = 242
        Height = 21
        TabOrder = 6
      end
      object edCod: TEdit
        Left = 24
        Top = 30
        Width = 178
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object edComp: TEdit
        Left = 23
        Top = 177
        Width = 281
        Height = 21
        TabOrder = 12
      end
      object edEmail: TEdit
        Left = 310
        Top = 177
        Width = 300
        Height = 21
        TabOrder = 13
      end
      object edEnd: TEdit
        Left = 24
        Top = 140
        Width = 281
        Height = 21
        TabOrder = 9
      end
      object edNome: TEdit
        Left = 24
        Top = 67
        Width = 280
        Height = 21
        TabOrder = 2
      end
      object ednum: TEdit
        Left = 546
        Top = 141
        Width = 64
        Height = 21
        NumbersOnly = True
        TabOrder = 11
      end
      object edPais: TEdit
        Left = 417
        Top = 105
        Width = 123
        Height = 21
        TabOrder = 7
      end
      object edRg: TEdit
        Left = 310
        Top = 67
        Width = 129
        Height = 21
        TabOrder = 3
      end
      object edsalario: TEdit
        Left = 310
        Top = 214
        Width = 123
        Height = 21
        TabOrder = 15
      end
      object edUf: TEdit
        Left = 546
        Top = 103
        Width = 64
        Height = 21
        MaxLength = 2
        TabOrder = 8
      end
      object mkedtnasc: TMaskEdit
        Left = 445
        Top = 67
        Width = 162
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 4
        Text = '  /  /    '
      end
      object Panel1: TPanel
        Left = 0
        Top = 257
        Width = 814
        Height = 64
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 16
        object btnNovo: TButton
          Left = 109
          Top = 12
          Width = 95
          Height = 35
          Caption = 'Novo'
          TabOrder = 0
          OnClick = btnNovoClick
        end
        object Button2: TButton
          Left = 412
          Top = 12
          Width = 95
          Height = 35
          Caption = 'Salvar'
          TabOrder = 1
          OnClick = Button2Click
        end
        object btnEditar: TButton
          Left = 210
          Top = 12
          Width = 95
          Height = 35
          Caption = 'Editar'
          TabOrder = 2
          OnClick = btnEditarClick
        end
        object btnExcluir: TButton
          Left = 311
          Top = 12
          Width = 95
          Height = 35
          Caption = 'Excluir'
          TabOrder = 3
          OnClick = btnExcluirClick
        end
        object Button6: TButton
          Left = 513
          Top = 12
          Width = 95
          Height = 35
          Caption = 'Cancelar'
          TabOrder = 4
          OnClick = Button6Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object DBGridConsulta: TDBGrid
        Left = 0
        Top = 105
        Width = 814
        Height = 375
        Align = alClient
        DataSource = DsFiltro
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGridConsultaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            ReadOnly = True
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Title.Caption = 'Bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero'
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'complemento'
            Title.Caption = 'Complemento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cidade'
            Title.Caption = 'Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Title.Caption = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rg'
            Title.Caption = 'RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fone'
            Title.Caption = 'Telefone'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'celular'
            Title.Caption = 'Celular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataNascimento'
            Title.Caption = 'Data de Nascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'E-mail'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'salario'
            Title.Caption = 'Sal'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'uf'
            Title.Caption = 'UF'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pais'
            Title.Caption = 'Pa'#237's'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 814
        Height = 105
        Align = alTop
        TabOrder = 1
        object Label11: TLabel
          Left = 32
          Top = 8
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object Button7: TButton
          Left = 32
          Top = 53
          Width = 95
          Height = 35
          Caption = 'Consultar'
          TabOrder = 0
          OnClick = Button3Click
        end
        object edCodigo: TEdit
          Left = 32
          Top = 27
          Width = 178
          Height = 21
          TabOrder = 1
        end
      end
    end
  end
  object ConexaoPrincipal: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI11.1;Persist Security Info=False;User ID=sa;Init' +
      'ial Catalog=EmpresaTeste;Data Source=PCLEANDROFAUSTI\SQLEXPRESS;' +
      'Initial File Name="";Server SPN="";'
    Provider = 'SQLNCLI11.1'
    Left = 640
  end
  object QyCidades: TADOQuery
    Connection = ConexaoPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 640
    Top = 152
    object QyCidadesuf: TWideStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object QyCidadescidade: TWideStringField
      FieldName = 'cidade'
      FixedChar = True
    end
    object QyCidadespais: TWideStringField
      FieldName = 'pais'
      FixedChar = True
    end
  end
  object DSCidades: TDataSource
    DataSet = QyCidades
    Left = 640
    Top = 200
  end
  object QyFuncionario: TADOQuery
    Connection = ConexaoPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from funcionarios')
    Left = 640
    Top = 48
    object QyFuncionariocodigo: TAutoIncField
      AutoGenerateValue = arAutoInc
      FieldName = 'codigo'
    end
    object QyFuncionarionome: TWideStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 30
    end
    object QyFuncionarioendereco: TWideStringField
      FieldName = 'endereco'
      FixedChar = True
      Size = 50
    end
    object QyFuncionariobairro: TWideStringField
      FieldName = 'bairro'
      FixedChar = True
      Size = 30
    end
    object QyFuncionarionumero: TIntegerField
      FieldName = 'numero'
    end
    object QyFuncionariocomplemento: TWideStringField
      FieldName = 'complemento'
      FixedChar = True
      Size = 50
    end
    object QyFuncionariocidade: TWideStringField
      FieldName = 'cidade'
      FixedChar = True
      Size = 30
    end
    object QyFuncionariocep: TWideStringField
      FieldName = 'cep'
      FixedChar = True
    end
    object QyFuncionariorg: TWideStringField
      FieldName = 'rg'
      FixedChar = True
    end
    object QyFuncionariofone: TWideStringField
      FieldName = 'fone'
      FixedChar = True
    end
    object QyFuncionariocelular: TWideStringField
      FieldName = 'celular'
      FixedChar = True
    end
    object QyFuncionariodataNascimento: TDateField
      FieldName = 'dataNascimento'
    end
    object QyFuncionarioemail: TWideStringField
      FieldName = 'email'
      FixedChar = True
      Size = 30
    end
    object QyFuncionariosalario: TBCDField
      FieldName = 'salario'
      currency = True
      Precision = 18
      Size = 0
    end
    object QyFuncionariouf: TWideStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object QyFuncionariopais: TWideStringField
      FieldName = 'pais'
      FixedChar = True
      Size = 15
    end
  end
  object DsFuncionario: TDataSource
    DataSet = QyFuncionario
    Left = 640
    Top = 104
  end
  object Qyfiltro: TADOQuery
    Connection = ConexaoPrincipal
    CursorType = ctStatic
    DataSource = DsFuncionario
    Parameters = <>
    SQL.Strings = (
      'select * from Funcionarios')
    Left = 740
    Top = 32
    object Qyfiltrocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object Qyfiltronome: TWideStringField
      FieldName = 'nome'
      FixedChar = True
      Size = 30
    end
    object Qyfiltroendereco: TWideStringField
      FieldName = 'endereco'
      FixedChar = True
      Size = 50
    end
    object Qyfiltrobairro: TWideStringField
      FieldName = 'bairro'
      FixedChar = True
      Size = 30
    end
    object Qyfiltronumero: TIntegerField
      FieldName = 'numero'
    end
    object Qyfiltrocomplemento: TWideStringField
      FieldName = 'complemento'
      FixedChar = True
      Size = 50
    end
    object Qyfiltrocidade: TWideStringField
      FieldName = 'cidade'
      FixedChar = True
      Size = 30
    end
    object Qyfiltrocep: TWideStringField
      FieldName = 'cep'
      FixedChar = True
    end
    object Qyfiltrorg: TWideStringField
      FieldName = 'rg'
      FixedChar = True
    end
    object Qyfiltrofone: TWideStringField
      FieldName = 'fone'
      FixedChar = True
    end
    object Qyfiltrocelular: TWideStringField
      FieldName = 'celular'
      FixedChar = True
    end
    object QyfiltrodataNascimento: TDateField
      FieldName = 'dataNascimento'
    end
    object Qyfiltroemail: TWideStringField
      FieldName = 'email'
      FixedChar = True
      Size = 30
    end
    object Qyfiltrosalario: TBCDField
      FieldName = 'salario'
      Precision = 18
      Size = 0
    end
    object Qyfiltrouf: TWideStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object Qyfiltropais: TWideStringField
      FieldName = 'pais'
      FixedChar = True
      Size = 15
    end
  end
  object DsFiltro: TDataSource
    DataSet = Qyfiltro
    Left = 572
    Top = 48
  end
end
