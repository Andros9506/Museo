package it.uniroma3.siw.museo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.uniroma3.siw.museo.controller.validator.ArtistaValidator;
import it.uniroma3.siw.museo.model.Artista;
import it.uniroma3.siw.museo.model.Opera;
import it.uniroma3.siw.museo.service.ArtistaService;
import it.uniroma3.siw.museo.service.OperaService;

@Controller
public class ArtistaController {

	@Autowired
	private ArtistaService artistaService;
	@Autowired
	private ArtistaValidator artistaValidator;
	@Autowired
	private OperaService operaService;
	
	//Ritorna la lista degli artisti
	@RequestMapping(value="/artisti", method = RequestMethod.GET)
	public String getArtisti(Model model) {
		model.addAttribute("artisti", this.artistaService.getAll());
		return "artisti";
		
	}
		
	//Ritorna un singolo artista
	@RequestMapping(value="/artista/{id}", method = RequestMethod.GET)
	public String getCollezione(@PathVariable("id") Long id, Model model) {
		model.addAttribute("artista", this.artistaService.getById(id));
		return "artista";
	}
	
	//Cancella un artista
	@RequestMapping(value="/admin/deleteArtista/{id}", method = RequestMethod.DELETE)
	public String deleteArtista(@PathVariable("id")Long id) {
		List<Opera> opere=this.operaService.getOpereByArtista(id);
        this.operaService.setNullArtista(opere);
		this.artistaService.deleteArtistaById(id);
		return "redirect:/artisti";
	}
	
	//Metodi GET e POST per l'aggiunta di un nuovo artista
	@RequestMapping(value="/admin/artista", method = RequestMethod.GET)
	public String addArtista(Model model) {
		model.addAttribute("artista", new Artista());
		return "artistaForm";
	}
	
	@RequestMapping(value="/admin/artista", method = RequestMethod.POST)
	public String newArtista(@ModelAttribute("artista") Artista artista, Model model, BindingResult br) {
		this.artistaValidator.validate(artista, br);
		if (!br.hasErrors()) {
			this.artistaService.saveArtista(artista);
			model.addAttribute("artisti", this.artistaService.getAll());
			return "artisti";
		}
		return "artistaForm";
	}
	
	//Metodi GET e POST per la modifica di un artista
	@RequestMapping(value ="/admin/artista/{id}", method = RequestMethod.GET)
	public String modifyArtista(@PathVariable("id")Long id, Model model) {
		Artista artista = artistaService.getById(id);
		model.addAttribute("artista", artista);
		return "modificaArtista";				
	}
	
	@RequestMapping(value ="/admin/artista/{id}", method = RequestMethod.POST)
	public String modifyArtista(@ModelAttribute("artista") Artista artista, @PathVariable("id")String id, Model model) {
		this.artistaService.saveArtista(artista);
		model.addAttribute("artisti", this.artistaService.getAll());
		return "redirect:/artista/"+id;				
	}
	
	
	
}
