<!doctype html>
<html lang="pt-br">
<head>
<title>CRUD Cidades</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>
	<div class="container-fluid">
		<div class="jumbotron mt-5">
			<h1>GERENCIAMENTO DE CIDADES</h1>
			<p>UM CRUD PARA CRIAR, ALTERAR, EXCLUIR E LISTAR CIDADES</p>
		</div>
		<form action="/criar" method="POST">
			<div class="form-group">
				<label for="cidade">Cidade:</label> 
				<input name="nome" type="text" class="form-control" placeholder="Informe o nome da cidade"	id="cidade">
			</div>
			<div class="form-group">
				<label for="estado">Estado:</label> 
				<input name="estado" type="text" class="form-control" placeholder="Informe o estado ao qual a cidade pertence" id="estado">
			</div>
			<button type="submit" class="btn btn-primary">CRIAR</button>
		</form>
		
		<table class="table table-striped table-houver mt-5">
		<thead class="thead-dark">
			<tr>
				<th>Nome</th>
				<th>Estado</th>
				<th>Ações</th>
			</tr>
			</thead>
			<tbody>
			<#list listaCidades as cidade>
				<tr>
					<td>${cidade.nome}</td>
					<td>${cidade.estado}</td>
					<td>
						<div class="d-flex d-justify-content-center">
							<a class="btn btn-warning mr-3">ALTERAR</a>
							<a href="/excluir?nome=${cidade.nome}&estado=${cidade.estado}" class="btn btn-danger">EXCLUIR</a>
						</div>
					</td>
				</tr>
				</#list>
			</tbody>
		</table>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>