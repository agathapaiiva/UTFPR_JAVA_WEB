package com.br.utfpr.java.web.visao;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CidadeController {
	
	@GetMapping("/")
	public String listar() {
		return "crud.html";
	}

}
