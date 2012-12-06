<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
<link rel="stylesheet" href="css/estilo.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Correntistas</title>
<f:view>
<h:form>
<h1>Lista de Correntistas</h1>
<h:dataTable value="#{controladorCorrentista.correntistas}" var="correntista" border="1">
<h:column>
<f:facet name="header">
<h:outputText value="Código" />
</f:facet>
<h:outputText value="#{correntista.id}"></h:outputText>
</h:column>
<h:column>
<f:facet name="header">
<h:outputText value="Nome" />
</f:facet>
<h:outputText value="#{correntista.nome}"></h:outputText>
</h:column>


<h:column>
<f:facet name="header">
<h:outputText value="Endereço" />
</f:facet>
<h:outputText value="#{correntista.endereco}"></h:outputText>
</h:column>

<h:column>
<f:facet name="header">
<h:outputText value="Telefone" />
</f:facet>
<h:outputText value="#{correntista.telefone}"></h:outputText>
</h:column>

<h:column>
<f:facet name="header">
<h:outputText value="Nascimento" />
</f:facet>
<h:outputText value="#{correntista.dataDeNascimento}"></h:outputText>
</h:column>
<h:column>
<h:commandButton image="imagens/edit.png" action="#{controladorCorrentista.mostraDados}"
alt="Editar Correntista" />&nbsp;&nbsp;
<h:commandButton image="imagens/delete.png" action="#{controladorCorrentista.excluir}"
alt="Excluir Correntista" onclick="if (!confirm('Deseja excluir o item?')) return false;" />
</h:column>
</h:dataTable>
<h:commandButton image="imagens/window_new.png" action="novo" alt="Novo Correntista" />
</h:form>
</f:view>
</html>

