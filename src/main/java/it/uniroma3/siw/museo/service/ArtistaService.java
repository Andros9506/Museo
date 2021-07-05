package it.uniroma3.siw.museo.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.siw.museo.model.Artista;
import it.uniroma3.siw.museo.repository.ArtistaRepository;

@Service
public class ArtistaService {

	@Autowired
	private ArtistaRepository artistaRepository;

	@Transactional
	public List<Artista> getAll(){
		return (List<Artista>) artistaRepository.findAll();
	}
	
	@Transactional
	public void deleteArtistaById(Long id) {
		this.artistaRepository.deleteById(id);
	}
	
	
	@Transactional
	public Artista saveArtista(Artista artista) {
		return artistaRepository.save(artista);
	}

	@Transactional
	public Artista findByNome(String nome) {
		return (Artista) artistaRepository.findByNome(nome);
	}
	
	@Transactional
	public List<Artista> ListfindByNome(String nome) {
		return (List<Artista>) artistaRepository.findByNome(nome);
	}
	

	@Transactional
	public Artista getById(Long id) {
		Optional<Artista> op = artistaRepository.findById(id);
		if(op.isPresent())
			return op.get();
		else
			return null;
	}

	@Transactional
	public boolean alreadyExists(Artista artista) {
		List<Artista> artisti = this.artistaRepository.findByNome(artista.getNome());
		if (artisti.size() > 0)
		return true;
		else
			return false;
	}
	
	@Transactional
	public boolean duplicato(Artista artista) {
		List<Artista> result = this.artistaRepository.esiste(artista.getNome(), artista.getCognome(), artista.getLuogoNascita(), artista.getBiografia(), artista.getDataNascita(), artista.getNazione(), artista.getLuogoMorte(), artista.getDataMorte());
		if( result.size() > 0 )
			return true;
		else
			return false;
	}
	
	
}
