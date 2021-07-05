package it.uniroma3.siw.museo.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.siw.museo.model.Opera;
import it.uniroma3.siw.museo.repository.OperaRepository;

@Service
public class OperaService {

	@Autowired
	private OperaRepository operaRepository;
	
	@Transactional
	public Opera saveOpera(Opera opera) {
		return operaRepository.save(opera);
	}
	
	@Transactional
	public List<Opera> getAll(){
		return (List<Opera>)operaRepository.findAll();
	}
	
	@Transactional
	public Opera findByName(String nome) {
		return (Opera)operaRepository.findByNome(nome);
	}
	
	@Transactional
	public boolean alreadyExists(Opera opera) {
		List<Opera> opere = this.operaRepository.findByNome(opera.getNome());
		if (opere.size() > 0)
			return true;
		else 
			return false;
	}

	@Transactional
	public void deleteOperaById(Long id) {
		this.operaRepository.deleteById(id);
		
	}

	@Transactional
	public Opera getById(Long id) {
		Optional<Opera> op = operaRepository.findById(id);
		if(op.isPresent())
			return op.get();
		else
			return null;
	}
	
	@Transactional
	public List<String> getAnnate()
    {
        List<String> result = new ArrayList<String>();
        Iterable<String> it = this.operaRepository.findByData();
        for(String string :it)
        {
            result.add(string);
        }
        return result;
    }
	
	@Transactional
	public List<Opera> getOpereAnno(String anno)
    {
        List<Opera> result = new ArrayList<Opera>();
        Iterable<Opera> it = this.operaRepository.findOperaByDataRealizzazione(anno);
        for(Opera opera :it)
        {
            result.add(opera);
        }
        return result;
    }
	
	@Transactional
	public boolean duplicato(Opera opera)
	  {
	    List<Opera> result=this.operaRepository.esiste(opera.getNome(), opera.getDataRealizzazione(),opera.getDescrizione(), opera.getImmagine(),opera.getArtista().getId(), opera.getCollezione().getId());
	    if (result.size() > 0)
	      return true;
	    else 
	      return false;
	  }
	
	@Transactional
	public List<Opera> getOpereByCollezione(Long idCollezione)
    {
        List<Opera> result = new ArrayList<Opera>();
        Iterable<Opera> it = this.operaRepository.findByIdCollezione(idCollezione);
        for(Opera opera :it)
        {
            result.add(opera);
        }
        return result;
    }
	
	@Transactional
	public List<Opera> getOpereByArtista(Long idArtista)
    {
        List<Opera> result = new ArrayList<Opera>();
        Iterable<Opera> it = this.operaRepository.findByIdArtista(idArtista);
        for(Opera opera :it)
        {
            result.add(opera);
        }
        return result;
    }

    @Transactional
    public void setNullCollezione(List<Opera> opere)
    {
        Iterator<Opera> it=opere.iterator();
        while(it.hasNext())
        {
            Opera opera=it.next();
            opera.setCollezione(null);
        }
    }
	
    @Transactional
    public void setNullArtista(List<Opera> opere)
    {
        Iterator<Opera> it=opere.iterator();
        while(it.hasNext())
        {
            Opera opera=it.next();
            opera.setArtista(null);
        }
    }
    
}
