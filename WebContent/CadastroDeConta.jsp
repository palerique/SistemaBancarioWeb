<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<html>
<link rel="stylesheet" href="css/estilo.css" type="text/css">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Conta</title>
</head>
<body>
	<f:view>
		<h:form>
			<h2>Dados da Conta</h2>
			<h:inputHidden value="#{controladorConta.conta.id}" />
			<h:panelGrid columns="2">
				<h:outputText value="Correntista" />
				<h:selectOneMenu value="#{controladorConta.conta.correntista.id}"
					id="cboCorrentista">
					<f:selectItems value="#{controladorConta.correntistas}" />
				</h:selectOneMenu>
				<h:outputText value="Numero" />
				<h:inputText value="#{controladorConta.conta.numero}" size="10" />
				<h:outputText value="Digito" />
				<h:inputText value="#{controladorConta.conta.digitoVerificador}"
					size="4" />
				<h:outputText value="Tipo" />
				<h:selectOneMenu value="#{controladorConta.conta.tipoDeConta}"
					id="cboTipoDeConta" converter="ConversorEnumTipoDeConta">
					<f:selectItems value="#{controladorConta.tiposDeConta}" />
				</h:selectOneMenu>
			</h:panelGrid>
			<h:panelGroup styleClass="horizontal-align:center">
				<h:commandButton action="#{controladorConta.gravar}" value="Gravar" />
			</h:panelGroup>
			<h:message for="cboTipoDeConta" style="color:red" />
			<h:message for="cboCorrentista" style="color:red" />
		</h:form>
	</f:view>

</body>

</html>
