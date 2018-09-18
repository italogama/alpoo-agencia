package br.com.khayrus.agencia.excecoes;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value=HttpStatus.BAD_REQUEST)
public class PacoteInvalidoException extends RuntimeException{

	private static final long serialVersionUID = 6867929722876471499L;

}
