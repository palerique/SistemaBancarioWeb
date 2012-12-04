<%@page import="org.financeiro.entidades.Correntista"%>
<%@page import="org.financeiro.negocio.IFachadaCorrentista"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Teste FachadaCorrentista</title>
</head>
<body>
<%
  Context contexto = new InitialContext();
  IFachadaCorrentista fachada = (IFachadaCorrentista) contexto.lookup("FachadaCorrentista/local");
  String id = request.getParameter("id");  
  Correntista correntista = fachada.consultaPeloId(new Long(id));
  if (correntista != null) {
    out.println(correntista.getNome());
  } else {
    out.println("Correntista nao encontrado");
  }
%>
</body>
</html>
