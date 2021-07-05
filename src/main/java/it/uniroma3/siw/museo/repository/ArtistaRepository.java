package it.uniroma3.siw.museo.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import it.uniroma3.siw.museo.model.Artista;

public interface ArtistaRepository extends CrudRepository<Artista, Long>{

	public List<Artista> findByNome(String nome);
	
	
	@Query(value="select * from artista where nome=1? and cognome=2? and luogo_nascita=3? and biografia=4? and data_nascita=5? and nazione=6? and luogo_morte=7? and data_morte=8?", nativeQuery=true)
	public List<Artista> esiste(String nome, String cognome, String luogoNascita, String biografia, LocalDate dataNascita, String nazione, String luogoMorte, LocalDate dataMorte);
	
}
