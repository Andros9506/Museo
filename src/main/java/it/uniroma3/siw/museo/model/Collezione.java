package it.uniroma3.siw.museo.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Collezione {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	@Column(nullable=false)
	private String nome;
	@Column(columnDefinition="TEXT")
	private String descrizione;
	
	@ManyToOne
	private Curatore curatore;
	
	@OneToMany(mappedBy="collezione")
	private List<Opera> opera;
	
	public Collezione() {
		
	}
	
	public Collezione( String nome, String descrizione, long curatoreId) {
		super();
		this.nome = nome;
		this.setDescrizione(descrizione);
		this.curatore.setMatricola(id);
	}
	/**
	 * @return the nome
	 */
	public String getNome() {
		return nome;
	}
	/**
	 * @param nome the nome to set
	 */
	public void setNome(String nome) {
		this.nome = nome;
	}
	/**
	 * @return the curatore
	 */
	public Curatore getCuratore() {
		return curatore;
	}
	/**
	 * @param curatore the curatore to set
	 */
	public void setCuratore(Curatore curatore) {
		this.curatore = curatore;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public List<Opera> getOpera() {
		return opera;
	}
	public void setOpera(List<Opera> opera) {
		this.opera = opera;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	
	
}
