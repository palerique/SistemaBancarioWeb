package org.financeiro.apresentacao;
import java.util.*;
import javax.ejb.*;
import javax.faces.model.*;
import org.financeiro.entidades.*;
import org.financeiro.negocio.*;

public class ControladorCorrentista {
  @EJB(mappedName = "FachadaCorrentista/local")
  private IFachadaCorrentista fachadaCorrentista;
  private Correntista correntista;
  private DataModel modelo;

}

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
    //Apos a gravacao, abre a tela de consulta
    return "consulta";
  }

