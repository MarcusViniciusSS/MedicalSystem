﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="frmCadastroMedico.aspx.cs" Inherits="MedicalSystems.frmCadastroMedico" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="dev-page-content" style="height: 1503px;">                    
    <!-- page content container -->
    <div class="container">
                        
        <!-- page title -->
        <div class="page-title">
            <h1></h1>
            <p>Individual form controls automatically receive some global styling</p>
                            
            <ul class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li><a href="#">Cadastro Médicos</a></li>
                <li>Médicos</li>
            </ul>
        </div>                        
        <!-- ./page title -->                        
                        
        <!-- Horizontal Form -->
        <div class="wrapper wrapper-white">
            <div class="page-subtitle">
                <h3>Cadastro</h3>
                <p>Área para efetuar o registro do médico no sistema</p>
            </div>
                            
            <form class="form-horizontal" runat="server">
                <input   value="" Visible="False"  runat="server" id="confir" />
                <%
                    if (!String.IsNullOrEmpty(confir.Value))
                    {
                        Response.Write(@"<div class='alert alert-success fade in' id='respostaMsg'><i class='fa fa-info-circle'></i> Cadastro Efetuado com sucesso!</div>'");
                    }
                %>;
                <div class="form-group">
                    <label class="col-md-2 control-label">Nome</label>
                    <div class="col-md-8">
                        <input type="text" runat="server"  name="md_nome" id="nome" class="form-control" required="required"   />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label">CPF</label>
                    <div class="col-md-8">
                        <input type="text" runat="server"  name="md_cpf" id="cpf" class="form-control" required="required"   />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label">CRM</label>
                    <div class="col-md-8">
                        <input type="text" runat="server"  name="md_crm" id="crm" class="form-control" required="required"   />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label">Endereço</label>
                    <div class="col-md-8">
                         <input type="text" runat="server"  name="md_endereco" id="endereco"  class="form-control" required="required"   />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label">Cidade</label>
                    <div class="col-md-8">
                        <input type="text" runat="server"  name="cidade_descricao" id="cidade" class="form-control" required="required"   />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label">Turnos</label>
                    <div class="col-md-8">
                         <input type="number" runat="server"  name="md_turno" class="form-control" id="turno" required="required"   />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-8">
                        <div class="checkbox">
                            <input type="checkbox" id="check_1" checked="">
                            <label for="check_1">Check me up</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label">Estados</label>
                    <div class="col-md-8">
                        <asp:DropDownList ID="ListaDeEstados" runat="server" AppendDataBoundItems="true" CssClass="form-control " >
                            <asp:ListItem Text="Selecione uma opção" Value="-1"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-8">
                        <asp:Button runat="server" OnClick="Cadastrar" CssClass="btn btn-info" Text="Cadastrar"/>
                    </div>
                    <div class="col-md-2 col-md-8">
                        <asp:Button runat="server" OnClick="Cancelar" CssClass="btn btn-danger" Text="Cancelar"/>
                    </div>
                </div>
            </form>
        </div>
        </div>
</div>
<%--    <section id="main-content">
          <section class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i>Área Médica</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.aspx">Pagina Inicial</a></li>
						<li><i class="icon_document_alt"></i>Cadastro</li>
						<li><i class="fa fa-file-text-o"></i>Medicos</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Cadastro Médico
                          </header>
                          <div class="panel-body">
                              <form class="form-horizontal col-lg-10"  runat="server">
                
                                  <div class="form-group">
                                             <label class="col-sm-2 control-label">Nome</label>
                                                <div class="col-sm-10">
                                                    <input type="text" runat="server"  name="md_nome" id="nome" class="form-control" required="required"   />
                                                </div>
                                         </div>
                                          <div class="form-group">
                                             <label class="col-sm-2 control-label">Cpf</label>
                                                <div class="col-sm-10">
                                                    <input type="text" runat="server"  name="md_cpf" id="cpf" class="form-control" required="required"   />
                                                </div>
                                         </div>
                                         <div class="form-group">
                                             <label class="col-sm-2 control-label">CRM</label>
                                                <div class="col-sm-10">
                                                    <input type="text" runat="server"  name="md_crm" id="crm" class="form-control" required="required"   />
                                                </div>
                                         </div>
                                         <div class="form-group">
                                             <label class="col-lg-2 control-label">Endereço   </label>
                                                <div class="col-sm-10">
                                                    <input type="text" runat="server"  name="md_endereco" id="endereco"  class="form-control" required="required"   />
                                                </div>
                                         </div>    
                                          <div class="form-group">
                                             <label class="col-sm-2 control-label">Cidade</label>
                                                <div class="col-sm-10">
                                                    <input type="text" runat="server"  name="cidade_descricao" id="cidade" class="form-control" required="required"   />
                                                </div>
                                         </div>
                                          <div class="form-group">
                                             <label class="col-md-2 Control-label">Nº  Por Turno:</label>
                                                <div class="col-sm-10">
                                                    <input type="number" runat="server"  name="md_turno" class="form-control" id="turno" required="required"   />
                                                </div>
                                         </div>
                                          <div class="form-group">
                                               <label class="col-sm-2 control-label">Estado</label>
                                              <div class="col-lg-4">
                                                  <asp:DropDownList ID="ListaDeEstados" runat="server" AppendDataBoundItems="true" CssClass="form-control " >
                                                      <asp:ListItem Text="Selecione uma opção" Value="-1"></asp:ListItem>
                                                  </asp:DropDownList>
                                              </div>

                              </form>
                          </div>
                      </section>--%>
    
</asp:Content>


