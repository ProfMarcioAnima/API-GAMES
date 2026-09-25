<?php
error_reporting(E_ALL & ~E_NOTICE);

require_once __DIR__ . '/../config.php';

class Jogo {
    private $pdo;
    private $tabela = 'jogos';

    private $id;
    private $nome;
    private $imagem;
    private $estudio;
    private $categoria;
    private $idade;
    private $valor;
    private $disponibilidade;
    
    public function __construct() {
        global $pdo;
        $this->pdo = $pdo;
    }
    
    public function consultar() {
        $sql = "SELECT id, nome, imagem, estudio, categoria,
        idade, valor, disponibilidade FROM $this->tabela";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll();
    }
    
    public function consultaID($id) {
        $sql = "SELECT id, nome, imagem, estudio, categoria, idade, valor, disponibilidade FROM $this->tabela WHERE id = :id";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetch();
    }

    public function inserir(Jogo $jogo) {
        $sql = "INSERT INTO $this->tabela (nome, imagem, estudio, categoria, idade, valor, disponibilidade)
                VALUES (:nome, :imagem, :estudio, :categoria, :idade, :valor, :disponibilidade)";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindValue(':nome', $jogo->getNome(), PDO::PARAM_STR);
        $stmt->bindValue(':imagem', $jogo->getImagem(), PDO::PARAM_STR);
        $stmt->bindValue(':estudio', $jogo->getEstudio(), PDO::PARAM_STR);
        $stmt->bindValue(':categoria', $jogo->getCategoria(), PDO::PARAM_STR);
        $stmt->bindValue(':idade', $jogo->getIdade(), PDO::PARAM_STR);
        $stmt->bindValue(':valor', $jogo->getValor());
        $stmt->bindValue(':disponibilidade', $jogo->getDisponibilidade(), PDO::PARAM_BOOL);
        return $stmt->execute();
    }

    public function editar(Jogo $jogo, $id) {
        $sql = "UPDATE $this->tabela SET 
                    nome = :nome, 
                    imagem = :imagem,
                    estudio = :estudio, 
                    categoria = :categoria, 
                    idade = :idade, 
                    valor = :valor, 
                    disponibilidade = :disponibilidade
                WHERE id = :id";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindValue(':nome', $jogo->getNome(), PDO::PARAM_STR);
        $stmt->bindValue(':imagem', $jogo->getImagem(), PDO::PARAM_STR);
        $stmt->bindValue(':estudio', $jogo->getEstudio(), PDO::PARAM_STR);
        $stmt->bindValue(':categoria', $jogo->getCategoria(), PDO::PARAM_STR);
        $stmt->bindValue(':idade', $jogo->getIdade(), PDO::PARAM_STR);
        $stmt->bindValue(':valor', $jogo->getValor());
        $stmt->bindValue(':disponibilidade', $jogo->getDisponibilidade(), PDO::PARAM_BOOL);
        $stmt->bindValue(':id', $id, PDO::PARAM_INT);
        return $stmt->execute();
    }
    
    public function atualizarImagem($id, $nomeImagem) {
        $sql = "UPDATE $this->tabela SET imagem = :imagem WHERE id = :id";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':imagem', $nomeImagem, PDO::PARAM_STR);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        return $stmt->execute();
    }

    public function excluir($id) {
        $sql = "DELETE FROM $this->tabela WHERE id = :id";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':id', $id, PDO::PARAM_INT);
        return $stmt->execute();
    }
    
    public function consultarPorCategoria($categoria) {
        $sql = "SELECT id, nome, imagem, estudio, categoria, idade, valor, disponibilidade FROM $this->tabela WHERE categoria = :categoria";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':categoria', $categoria, PDO::PARAM_STR);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function consultaPorNome($nome) {
        $sql = "SELECT * FROM $this->tabela WHERE nome LIKE :nome";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindValue(':nome', '%' . $nome . '%', PDO::PARAM_STR);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function consultaPorIdade($idade) {
        $sql = "SELECT * FROM $this->tabela WHERE idade LIKE :idade";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindValue(':idade', '%' . $idade . '%', PDO::PARAM_STR);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function consultaPorEstudio($estudio) {
        $sql = "SELECT * FROM $this->tabela WHERE estudio LIKE :estudio";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindValue(':estudio', '%' . $estudio . '%', PDO::PARAM_STR);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function consultaPorValorMenor($valor) {
        $sql = "SELECT * FROM $this->tabela WHERE valor < :valor";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':valor', $valor);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function consultaPorValorMaior($valor) {
        $sql = "SELECT id, nome, estudio, categoria, idade, valor, disponibilidade, data_criado, data_editado FROM $this->tabela WHERE valor > :valor";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':valor', $valor);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function consultaPorValorEntre($min, $max) {
        $sql = "SELECT id, nome, imagem, estudio, categoria, idade, valor, disponibilidade FROM $this->tabela WHERE valor BETWEEN :min AND :max";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':min', $min);
        $stmt->bindParam(':max', $max);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function consultaPorDisponibilidade($disp) {
        $sql = "SELECT * FROM $this->tabela WHERE disponibilidade = :disp";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':disp', $disp, PDO::PARAM_BOOL);
        $stmt->execute();
        return $stmt->fetchAll();
    }
    
    public function getId() { return $this->id; }
    public function setId($id) { $this->id = $id; }
    public function getNome() { return $this->nome; }
    public function setNome($nome) { $this->nome = $nome; }
    public function getImagem() { return $this->imagem; }
    public function setImagem($imagem) { $this->imagem = $imagem; }
    public function getEstudio() { return $this->estudio; }
    public function setEstudio($estudio) { $this->estudio = $estudio; }
    public function getCategoria() { return $this->categoria; }
    public function setCategoria($categoria) { $this->categoria = $categoria; }
    public function getIdade() { return $this->idade; }
    public function setIdade($idade) { $this->idade = $idade; }
    public function getValor() { return $this->valor; }
    public function setValor($valor) { return $this->valor = $valor; }
    public function getDisponibilidade() { return $this->disponibilidade; }
    public function setDisponibilidade($disponibilidade) { $this->disponibilidade = $disponibilidade; }
}