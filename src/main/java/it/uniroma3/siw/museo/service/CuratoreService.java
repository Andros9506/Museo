package it.uniroma3.siw.museo.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.siw.museo.model.Curatore;
import it.uniroma3.siw.museo.repository.CuratoreRepository;

@Service
public class CuratoreService {

	@Autowired
	private CuratoreRepository curatoreRepository;

	@Transactional
	public List<Curatore> getAll(){
		return (List<Curatore>) curatoreRepository.findAll();
	}

	@Transactional
	public Curatore getByMatricola(Long matricola) {
		Optional<Curatore> optional = curatoreRepository.findById(matricola);
		if(optional.isPresent())
			return optional.get();
		else
			return null;
	}

	public boolean alreadyExists(Curatore curatore) {
		List<Curatore> curatori = this.curatoreRepository.findByNomeAndCognome(curatore.getNome(), curatore.getCognome());
		if (curatori.size() > 0)
			return true;
		else
			return false;
	}

	public void saveCuratore(Curatore curatore) {
		this.curatoreRepository.save(curatore);
		
	}

	public void deleteCuratoreById(Long id) {
		curatoreRepository.deleteById(id);
		
	}
}
