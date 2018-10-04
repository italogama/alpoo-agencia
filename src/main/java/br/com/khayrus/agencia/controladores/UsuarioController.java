package br.com.khayrus.agencia.controladores;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.khayrus.agencia.excecoes.PacoteInvalidoException;
import br.com.khayrus.agencia.modelo.entidades.Usuario;
import br.com.khayrus.agencia.modelo.enumeracoes.CategoriaSexo;
import br.com.khayrus.agencia.modelo.repositorios.UsuarioRepositorio;

@Controller
@RequestMapping
public class UsuarioController {
	
	@Autowired
	private UsuarioRepositorio usuarioRepositorio;
	
	@RequestMapping(method=RequestMethod.GET)
	public String listarUsuarios(Model model) {
		
		Iterable<Usuario> usuarios = usuarioRepositorio.findAll();

		model.addAttribute("titulo", "Listagem de Usuarios");
		model.addAttribute("usuarios", usuarios);
		model.addAttribute("sexo", CategoriaSexo.values());
		return "pacote/listagem";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	// ModelAttribute mapeia os atributos de um formulario pra objeto
	public String salvarUsuario(
			@Valid @ModelAttribute Usuario usuario,
			BindingResult bindingResult,
			Model model) {

		if (bindingResult.hasErrors()) {
			throw new PacoteInvalidoException();

		} else {
			usuarioRepositorio.save(usuario);
		}

		model.addAttribute("usuarios", usuarioRepositorio.findAll());
		model.addAttribute("sexo", CategoriaSexo.values());
		return "pacote/tabela-pacotes";
	}
}
