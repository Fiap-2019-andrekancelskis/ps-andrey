<!-- Inserir cabeçalho -->
<%@include file="header.jsp"%>

<!-- Uso de JSTL é obrigatório -->

<section class="container">
	<!-- Exiba o email do usuário junto com uma saudação -->
	<p class="greeting">Seja bem-vindo, ${usuario.email }!</p>
	<c:if test="${empty empresas}">
		<jsp:useBean id="empresaDao" class="com.andreymasiero.gerenciamento_empresas.dao.EmpresaDAO"/>
		<c:set var="empresas" value="${empresaDao.buscaPorSimilaridade(null) }"/>
	</c:if>
	<hr/>
	<h2>Cadastrar Nova Empresa</h2>
	
	<!-- Mensagem de cadastro com sucesso deve ser exibida aqui -->
	<c:if test="${not empty empresa }">
		<p>${empresa.nome } cadastrada com sucesso!</p>
	</c:if>
	
	<!-- Formulário para cadastrar nova empresa -->
	<div class="frm">
		<form method="post" action="cadastrar">
			<input type="text" name="nome" placeholder="Digite o nome da empresa para cadastrar">
			<button>Cadastrar</button>
		</form>
	</div>
	<hr/>
	<h2>Empresas Cadastradas</h2>
	
	<!-- Formulário para filtrar as empresas cadastradas -->
	<div class="frm">
		<form method="get" action="filtrar">
			<input type="text" name="filtro" placeholder="Digite o nome que deseja pesquisar">
			<button>Filtrar</button>
		</form>
	</div>
	<!-- 
		Exibir a lista das empresas filtradas, caso não haja filtro, todas as empresas devem
		aparecer na lista
	 -->
	<ul>
		<c:forEach var="empresa" items="${empresas}">
			<li>${empresa.nome }</li>
		</c:forEach>
	</ul>
</section>

<!-- Inserir rodape -->
<%@include file="footer.jsp"%>