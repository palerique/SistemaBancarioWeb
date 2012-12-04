package org.financeiro.apresentacao;

import java.util.List;

import javax.ejb.EJB;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

import org.financeiro.entidades.Correntista;
import org.financeiro.negocio.IFachadaCorrentista;

public class ControladorCorrentista {
	@EJB(mappedName = "FachadaCorrentista/local")
	private IFachadaCorrentista fachadaCorrentista;
	private Correntista correntista;
	private DataModel modelo;

	public List<Correntista> consultaTodos() {
		return fachadaCorrentista.consultaTodos();
	}

	public DataModel getCorrentistas() {
		modelo = new ListDataModel(consultaTodos());
		return modelo;
	}

	public Correntista getCorrentista() {
		if (correntista == null) {
			correntista = new Correntista();
		}
		return correntista;
	}

	public void setCorrentista(Correntista correntista) {
		this.correntista = correntista;
	}

	public String gravar() {
		fachadaCorrentista.inserir(getCorrentista());
		// Apos a gravacao, abre a tela de consulta
		return "consulta";
	}
	
	  public String mostraDados() {
		    Object objetoSelecionado = modelo.getRowData();
		    setCorrentista((Correntista) objetoSelecionado);
		    return "editar";
		  }

		  public String excluir() {
		    Correntista correntistaSelecionado = (Correntista) modelo.getRowData();
		    fachadaCorrentista.excluir(correntistaSelecionado);
		    return "consulta";
		  }

}
