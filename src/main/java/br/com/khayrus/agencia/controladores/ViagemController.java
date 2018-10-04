package br.com.khayrus.agencia.controladores;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.khayrus.agencia.excecoes.PacoteInvalidoException;
import br.com.khayrus.agencia.modelo.entidades.Viagem;
import br.com.khayrus.agencia.modelo.enumeracoes.CategoriaDePacote;
import br.com.khayrus.agencia.modelo.repositorios.ViagemRepositorio;

//		/app/pacotes (metodo GET) -> listarPacotes
//		/app/pacotes (metodo POST) -> salvarPacotes

@Controller
@RequestMapping("/viagem")
public class ViagemController {

	@Autowired
	private ViagemRepositorio viagemRepositorio;

	@RequestMapping(method=RequestMethod.GET)
	public String listarPacotes(Model model) {
		Iterable<Viagem> viagem = viagemRepositorio.findAll();
		
		model.addAttribute("titulo", "Passagens");
		model.addAttribute("viagem", viagem);
		model.addAttribute("categorias", CategoriaDePacote.values());
		return "viagem/viagem";
	}
	// /WEB-INF/pacote/listagem.jsp

	@RequestMapping(method=RequestMethod.POST)
	// ModelAttribute mapeia os atributos de um formulario pra objeto
	public String salvarViagem(
			@Valid @ModelAttribute Viagem pacote,
			BindingResult bindingResult,
			Model model) {

		if (bindingResult.hasErrors()) {
			throw new PacoteInvalidoException();

		} else {
			viagemRepositorio.save(pacote);
		}

		model.addAttribute("viagem", viagemRepositorio.findAll());
		model.addAttribute("categorias", CategoriaDePacote.values());
		return "pacote/form-viagem";
	}

	@RequestMapping(method=RequestMethod.DELETE, value="/{id}")
	public ResponseEntity<String> deletarPacote(@PathVariable Long id) {
		try {
			viagemRepositorio.delete(id);
			return new ResponseEntity<String>(HttpStatus.OK);
			
		} catch (Exception ex) {
			return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}

	}
	
	@RequestMapping(method=RequestMethod.GET, value="/{id}")
	@ResponseBody
	public Viagem buscarViagem(@PathVariable Long id) {
		Viagem viagem = viagemRepositorio.findOne(id);
		return viagem;
	}
}
