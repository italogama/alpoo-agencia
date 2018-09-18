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
import br.com.khayrus.agencia.modelo.entidades.Pacote;
import br.com.khayrus.agencia.modelo.enumeracoes.CategoriaDePacote;
import br.com.khayrus.agencia.modelo.repositorios.PacoteRepositorio;

//		/app/pacotes (metodo GET) -> listarPacotes
//		/app/pacotes (metodo POST) -> salvarPacotes

@Controller
@RequestMapping("/pacotes")
public class PacoteController {

	@Autowired
	private PacoteRepositorio pacoteRepositorio;

	@RequestMapping(method=RequestMethod.GET)
	public String listarPacotes(Model model) {
		Iterable<Pacote> pacotes = pacoteRepositorio.findAll();

		model.addAttribute("titulo", "Listagem de Pacotes");
		model.addAttribute("pacotes", pacotes);
		model.addAttribute("categorias", CategoriaDePacote.values());
		return "pacote/listagem";
	}
	// /WEB-INF/pacote/listagem.jsp

	@RequestMapping(method=RequestMethod.POST)
	// ModelAttribute mapeia os atributos de um formulario pra objeto
	public String salvarPacote(
			@Valid @ModelAttribute Pacote pacote,
			BindingResult bindingResult,
			Model model) {

		if (bindingResult.hasErrors()) {
			throw new PacoteInvalidoException();

		} else {
			pacoteRepositorio.save(pacote);
		}

		model.addAttribute("pacotes", pacoteRepositorio.findAll());
		model.addAttribute("categorias", CategoriaDePacote.values());
		return "pacote/tabela-pacotes";
	}

	@RequestMapping(method=RequestMethod.DELETE, value="/{id}")
	public ResponseEntity<String> deletarPacote(@PathVariable Long id) {
		try {
			pacoteRepositorio.delete(id);
			return new ResponseEntity<String>(HttpStatus.OK);
			
		} catch (Exception ex) {
			return new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}

	}
	
	@RequestMapping(method=RequestMethod.GET, value="/{id}")
	@ResponseBody
	public Pacote buscarPacote(@PathVariable Long id) {
		Pacote pacote = pacoteRepositorio.findOne(id);
		return pacote;
	}
}
