package it.uniroma3.siw.museo.model;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Curatore {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long matricola;
	@Column(nullable=false)
	private String nome;
	@Column(nullable=false)
	private String cognome;
	@Column(nullable=false)
	private String luogoNascita;
	@Column(nullable=true)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate dataNascita;
	@Column(nullable=false)
	private String email;
	@OneToMany(mappedBy="curatore")
	private List<Collezione> collezione;

	public Curatore() {
		
	}
	
	public Curatore(String nome, String cognome, String luogoNascita, LocalDate dataNascita, String email/*,
			Collezione col*/) {
		super();
		this.nome = nome;
		this.cognome = cognome;
		this.luogoNascita = luogoNascita;
		this.dataNascita = dataNascita;
		this.email = email;
		//setElemLista(col);
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
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the matricola
	 */
	public Long getMatricola() {
		return matricola;
	}

	/**
	 * @param matricola the matricola to set
	 */
	public void setMatricola(Long id) {
		this.matricola = id;
	}

	public List<Collezione> getCollezione() {
		return collezione;
	}
	
	public void setElemLista(Collezione collezione) {
		this.collezione.add(collezione);
	}

	public void setCollezione(List<Collezione> collezione) {
		this.collezione = collezione;
	}
	
	
}
