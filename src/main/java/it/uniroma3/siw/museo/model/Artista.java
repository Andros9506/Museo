package it.uniroma3.siw.museo.model;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
@Entity
public class Artista {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String nome;
	private String cognome;
	
	private String luogoNascita;
	
	@Column(columnDefinition="TEXT", nullable = true)
	private String biografia;
	
	@Column(nullable=true)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate dataNascita;
	@Column(nullable=true)
	private String nazione;
	
	//Luogo e data della morte non sono presenti se l'artista è ancora in vita
	private String luogoMorte;
	
	@Column(nullable=true)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private LocalDate dataMorte;
	
	@OneToMany(mappedBy = "artista")
	private List<Opera> opera;
	
	
	public Artista() {
		
	}
	
	public Artista(String nome, String cognome, String luogoNascita, String biografia, LocalDate dataNascita, String nazione,
			String luogoMorte, LocalDate dataMorte) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.luogoNascita = luogoNascita;
		this.biografia=biografia;
		this.dataNascita = dataNascita;
		this.nazione = nazione;
		this.luogoMorte = luogoMorte;
		this.dataMorte = dataMorte;
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
	 * @return the cognome
	 */
	public String getCognome() {
		return cognome;
	}
	/**
	 * @param cognome the cognome to set
	 */
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	/**
	 * @return the luogoNascita
	 */
	public String getLuogoNascita() {
		return luogoNascita;
	}
	/**
	 * @param luogoNascita the luogoNascita to set
	 */
	public void setLuogoNascita(String luogoNascita) {
		this.luogoNascita = luogoNascita;
	}
	/**
	 * @return the dataNascita
	 */
	public LocalDate getDataNascita() {
		return dataNascita;
	}
	/**
	 * @param dataNascita the dataNascita to set
	 */
	public void setDataNascita(LocalDate dataNascita) {
		this.dataNascita = dataNascita;
	}
	/**
	 * @return the nazionalità
	 */
	public String getNazione() {
		return nazione;
	}
	/**
	 * @param nazionalità the nazionalità to set
	 */
	public void setNazione(String nazione) {
		this.nazione = nazione;
	}
	/**
	 * @return the luogoMorte
	 */
	public String getLuogoMorte() {
		return luogoMorte;
	}
	/**
	 * @param luogoMorte the luogoMorte to set
	 */
	public void setLuogoMorte(String luogoMorte) {
		this.luogoMorte = luogoMorte;
	}
	/**
	 * @return the dataMorte
	 */
	public LocalDate getDataMorte() {
		return dataMorte;
	}
	/**
	 * @param dataMorte the dataMorte to set
	 */
	public void setDataMorte(LocalDate dataMorte) {
		this.dataMorte = dataMorte;
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

	public String getBiografia() {
		return biografia;
	}

	public void setBiografia(String biografia) {
		this.biografia = biografia;
	}
	
	
}
