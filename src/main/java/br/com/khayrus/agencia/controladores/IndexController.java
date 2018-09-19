package br.com.khayrus.agencia.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/app")
public class IndexController {


	@RequestMapping(method=RequestMethod.GET)
	public String listarPacotes(Model model) {
		return "app/index";
	}
}
