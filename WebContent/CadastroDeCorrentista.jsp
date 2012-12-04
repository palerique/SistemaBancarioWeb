<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
<link rel="stylesheet" href="http://marcoreis.net/css/estilo.css" type="text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Correntista</title>
</head>
<f:view>
	<h:form>
		<h1>Dados do Correntista</h1>
		<h:inputHidden value="#{controladorCorrentista.correntista.id}" />
		<h:panelGrid columns="2">
			<h:outputText value="Nome" />
			<h:inputText value="#{controladorCorrentista.correntista.nome}"
				size="40" />
			<h:outputText value="Endereço" />
			<h:inputText value="#{controladorCorrentista.correntista.endereco}"
				size="60" />
			<h:outputText value="Telefone" />
			<h:inputText value="#{controladorCorrentista.correntista.telefone}"
				size="40" />
			<h:outputText value="Nascimento" />
			<h:inputText id="txtDataNascimento"
				value="#{controladorCorrentista.correntista.dataDeNascimento}"
				size="40">
				<f:convertDateTime pattern="dd/MM/yyyy" />
			</h:inputText>
		</h:panelGrid>
		<h:panelGroup styleClass="horizontal-align:center">
			<h:commandButton action="#{controladorCorrentista.gravar}"
				value="Gravar" />
			<h:commandButton type="reset" value="Reset" />
		</h:panelGroup>
		<h:message for="txtDataNascimento" style="color:red" />

	</h:form>
</f:view>
</html>
