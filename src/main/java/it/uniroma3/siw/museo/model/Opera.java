package it.uniroma3.siw.museo.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class Opera {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String nome;
	private String dataRealizzazione;
	@Column(columnDefinition="TEXT")
	private String descrizione;
	private String immagine;
	@ManyToOne
	private Artista artista;
	@ManyToOne
	private Collezione collezione;
	
	public Opera() {
		
	}
	
	public Opera(String nome, String dataRealizzazione, String descrizione, String immagine, Long artistaId,
			Long collezioneId) {
		super();
		this.nome = nome;
		this.dataRealizzazione = dataRealizzazione;
		this.descrizione = descrizione;
		this.immagine = immagine;
		this.artista.setId(artistaId);
		this.collezione.setId(collezioneId);;
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
	 * @return the dataRealizzazione
	 */
	public String getDataRealizzazione() {
		return dataRealizzazione;
	}
	/**
	 * @param dataRealizzazione the dataRealizzazione to set
	 */
	public void setDataRealizzazione(String dataRealizzazione) {
		this.dataRealizzazione = dataRealizzazione;
	}
	/**
	 * @return the descrizione
	 */
	public String getDescrizione() {
		return descrizione;
	}
	/**
	 * @param descrizione the descrizione to set
	 */
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNomeImmagine() {
		return immagine;
	}
	public void setNomeImmagine(String nomeImmagine) {
		this.immagine = nomeImmagine;
	}
	public Artista getArtista() {
		return artista;
	}
	public void setArtista(Artista artista) {
		this.artista = artista;
	}
	public Collezione getCollezione() {
		return collezione;
	}
	public void setCollezione(Collezione collezione) {
		this.collezione = collezione;
	}
	public String getImmagine() {
		return immagine;
	}
	public void setImmagine(String immagine) {
		this.immagine = immagine;
	}
	
	
}
