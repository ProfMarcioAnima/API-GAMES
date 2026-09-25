<?php
require_once __DIR__ . '/../model/Jogo.php';

class jogoController {

    public function index() {
        $jogoModel = new Jogo();
        return $jogoModel->consulta();
    }

    public function show($id) {
        $jogoModel = new Jogo();
        return $jogoModel->consultaID($id);
    }

    public function store($data) {
        $jogo = $this->popularJogo($data);
        $jogoModel = new Jogo();
        return $jogoModel->inserir($jogo);
    }

    public function update($id, $data) {
        $jogo = $this->popularJogo($data);
        $jogo->setId($id);
        $jogoModel = new Jogo();
        return $jogoModel->editar($jogo, $id);
    }

    public function destroy($id) {
        $jogoModel = new Jogo();
        return $jogoModel->excluir($id);
    }

    public function filterByCategoria($categoria) {
        $jogoModel = new Jogo();
        return $jogoModel->consultaPorCategoria($categoria);
    }

    public function filterByNome($nome) {
        $jogoModel = new Jogo();
        return $jogoModel->consultaPorNome($nome);
    }

    public function filterByIdade($idade) {
        $jogoModel = new Jogo();
        return $jogoModel->consultaPorIdade($idade);
    }

    public function filterByEstudio($estudio) {
        $jogoModel = new Jogo();
        return $jogoModel->consultaPorEstudio($estudio);
    }

    public function filterByValorMenor($valor) {
        $jogoModel = new Jogo();
        return $jogoModel->consultaPorValorMenor($valor);
    }

    public function filterByValorMaior($valor) {
        $jogoModel = new Jogo();
        return $jogoModel->consultaPorValorMaior($valor);
    }

    public function filterByValorEntre($min, $max) {
        $jogoModel = new Jogo();
        return $jogoModel->consultaPorValorEntre($min, $max);
    }

    public function filterByDisponibilidade($disponibilidade) {
        $jogoModel = new Jogo();
        $disp = filter_var($disponibilidade, FILTER_VALIDATE_BOOLEAN, FILTER_NULL_ON_FAILURE);
        return $jogoModel->consultaPorDisponibilidade($disp);
    }

    private function popularJogo($dados) {
        $jogo = new Jogo();
        $jogo->setNome($dados['nome'] ?? '');
        $jogo->setImagem($dados['imagem'] ?? '');
        $jogo->setEstudio($dados['Estudio'] ?? $dados['estudio'] ?? '');
        $jogo->setCategoria($dados['categoria'] ?? '');
        $jogo->setIdade($dados['idade'] ?? '');
        $jogo->setValor($dados['valor'] ?? 0);
        $jogo->setDisponibilidade($dados['disponibilidade'] ?? true);
        return $jogo;
    }
}