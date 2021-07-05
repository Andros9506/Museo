package it.uniroma3.siw.museo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import it.uniroma3.siw.museo.model.Opera;

public interface OperaRepository extends CrudRepository<Opera, Long> {
	
	public List<Opera> findByNome(String nome);


	
	@Query(value="select distinct data_realizzazione from opera", nativeQuery=true)
    public List<String> findByData();
	
	public List<Opera> findOperaByDataRealizzazione(String anno);
	
	@Query(value="select * from opera where collezione_id=?1", nativeQuery=true)
    public List<Opera> findByIdCollezione(Long id);
	
	@Query(value="select * from opera where artista_id=?1", nativeQuery=true)
    public List<Opera> findByIdArtista(Long id);	
	
	@Query(value="select * from opera where nome=?1 and data_realizzazione=?2 and descrizione=?3 and immagine=?4 and artista_id=?5 and collezione_id=?6", nativeQuery=true)
	public List<Opera> esiste(String nome, String dataRealizzazione,String descrizione,String immagine,Long idArtista,Long idCollezione);
}
