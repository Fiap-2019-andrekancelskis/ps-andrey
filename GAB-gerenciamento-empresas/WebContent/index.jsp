<!-- Inserir cabeçalho -->
<%@include file="header.jsp"%>

<section class="container">
	<div class="frm">
		<!-- Crie um formulário para validação de login -->
		<form method="post" action="login">
			<label for="email">Email:</label> 
			<input type="text" id="email" name="email" 
				placeholder="Informe seu email." />
			<label for="senha">Senha:</label>
			<input type="password" id="senha" name="senha"
				placeholder="Informe sua senha." />
			<button>Enviar</button>
			<!-- A mensagem de erro deve ser exibida aqui -->
			<span class="mensagem-erro">${erro}</span>
		</form>
	</div>
</section>

<!-- Inserir rodapé -->
<%@include file="footer.jsp"%>