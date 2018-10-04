package br.com.khayrus.agencia.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.khayrus.agencia.modelo.entidades.Viagem;
import br.com.khayrus.agencia.modelo.repositorios.ViagemRepositorio;


@Controller
@RequestMapping("/app")
public class IndexController {

	@RequestMapping(method=RequestMethod.GET)
	public String listarViagem(Model model) {
		model.addAttribute("titulo", "Pagina Inicial");
		return "app/listagem";
	}
	
	@Autowired
	private ViagemRepositorio viagemRepositorio;
	
	@RequestMapping(method=RequestMethod.GET, value="/{id}")
	@ResponseBody
	public Viagem buscarViagem(@PathVariable Long id) {
		Viagem viagem = viagemRepositorio.findOne(id);
		return viagem;
	}
}
