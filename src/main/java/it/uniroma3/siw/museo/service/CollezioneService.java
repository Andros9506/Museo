package it.uniroma3.siw.museo.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.siw.museo.model.Collezione;
import it.uniroma3.siw.museo.repository.CollezioneRepository;

@Service
public class CollezioneService {

	@Autowired
	private CollezioneRepository collezioneRepository;

	@Transactional
	public List<Collezione> getAll(){
		return (List<Collezione>) collezioneRepository.findAll();
	}
	
	@Transactional
	public Collezione getByName(String nome) {
		return (Collezione) collezioneRepository.findByNome(nome);
	}

	@Transactional
	public Collezione getById(Long id) {
		Optional<Collezione> op = collezioneRepository.findById(id);
		if(op.isPresent())
			return op.get();
		else
			return null;
	}

	@Transactional
	public Collezione saveCollezione(Collezione collezione) {
		return collezioneRepository.save(collezione);
	}
	
	@Transactional
	public boolean alreadyExist(Collezione collezione) {
		List<Collezione> collezioni = this.collezioneRepository.findByNome(collezione.getNome());
		if (collezioni.size() > 0)
			return true;
		else
			return false;
	}

	@Transactional
	public void deleteCollezioneById(Long id) {
		this.collezioneRepository.deleteById(id);
	}
	
	@Transactional
	public boolean duplicato(Collezione collezione) {
		List<Collezione> result = this.collezioneRepository.esiste(collezione.getNome(), collezione.getDescrizione(), collezione.getCuratore().getMatricola());
		if (result.size() > 0)
			return true;
		else
			return false;
	}
	
	@Transactional
	public List<Collezione> getCollezioneByCuratore(Long idCuratore)
    {
        List<Collezione> result = new ArrayList<Collezione>();
        Iterable<Collezione> it = this.collezioneRepository.findByIdCuratore(idCuratore);
        for(Collezione collezione :it)
        {
            result.add(collezione);
        }
        return result;
    }

    @Transactional
    public void setNullCuratore(List<Collezione> collezioni)
    {
        Iterator<Collezione> it=collezioni.iterator();
        while(it.hasNext())
        {
        	Collezione collezione=it.next();
            collezione.setCuratore(null);
        }
    }
}
