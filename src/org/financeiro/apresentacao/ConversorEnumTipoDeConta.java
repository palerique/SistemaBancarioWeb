package org.financeiro.apresentacao;

import javax.faces.component.*;
import javax.faces.context.*;
import javax.faces.convert.*;

import org.financeiro.entidades.*;

public class ConversorEnumTipoDeConta implements Converter {
	public Object getAsObject(FacesContext context, UIComponent component,
			String newValue) throws ConverterException {
		// No componente h:selectOneMenu e carregado o ordinal e descricao da
		// enum
		return TipoDeConta.valueOf(newValue);
	}

	public String getAsString(FacesContext context, UIComponent component,
			Object objValue) throws ConverterException {
		TipoDeConta tipo = TipoDeConta.valueOf(objValue.toString());
		return tipo.name();
	}
}