package org.financeiro.apresentacao;

import java.util.*;
import javax.ejb.*;
import javax.faces.model.*;
import org.financeiro.entidades.*;
import org.financeiro.negocio.*;

public class ControladorConta {
	@EJB(mappedName = "FachadaCorrentista/local")
	private IFachadaCorrentista fachadaCorrentista;
	@EJB(mappedName = "FachadaConta/local")
	private IFachadaConta fachadaConta;
	private Conta conta;

	public List<SelectItem> getCorrentistas() {
		List<SelectItem> lista = new ArrayList<SelectItem>();
		for (Correntista c : fachadaCorrentista.consultaTodos()) {
			SelectItem item = new SelectItem(c.getId(), c.getNome());
			lista.add(item);
		}
		return lista;
	}

	public Conta getConta() {
		if (conta == null) {
			conta = new Conta();
			conta.setCorrentista(new Correntista());
		}
		return conta;
	}

	public void setConta(Conta conta) {
		this.conta = conta;
	}

	public String gravar() {
		fachadaConta.gravar(getConta());
		return "";
	}

	public List<SelectItem> getTiposDeConta() {
		List<SelectItem> lista = new ArrayList<SelectItem>();
		for (TipoDeConta t : TipoDeConta.values()) {
			lista.add(new SelectItem(t.name(), t.getDescricao()));
		}
		return lista;
	}

}
