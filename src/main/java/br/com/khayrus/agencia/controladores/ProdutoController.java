package br.com.khayrus.agencia.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/produtos")
public class ProdutoController {

	@RequestMapping(method = RequestMethod.GET)
	public String listarProdutos(Model model) {
		return "produtos/produto";
	}

	
}
