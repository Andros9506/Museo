package it.uniroma3.siw.museo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import it.uniroma3.siw.museo.model.Collezione;

public interface CollezioneRepository extends CrudRepository<Collezione, Long> {

	public List<Collezione> findByNome(String nome);
	
	@Query(value="select * from collezione where nome=?1 and descrizione=?2 and curatore_matricola=3", nativeQuery=true)
	public List<Collezione> esiste(String nome, String descrizione,Long idCuratore);
	
	@Query(value="select * from collezione where curatore_matricola=?1", nativeQuery=true)
    public List<Collezione> findByIdCuratore(Long id);	
}
