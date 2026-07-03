#!/usr/bin/env Rscript
# fastatool.R - Ferramenta de manipulação de arquivos FASTA em R.
# Atividade prática do Dia 1 - Engenharia de Software e Git.

read_fasta <- function(path) {
  # Lê um arquivo FASTA e retorna uma lista de listas.
  # Cada sublista deve ter o formato: list(id = "nome_da_sequencia", seq = "SEQUENCIA")
  #
  # ATENÇÃO: Deve lidar com sequências multi-linha e ignorar linhas em branco.
  # Caso o arquivo não comece com ">", deve lançar um erro usando stop().
  
  # TODO: Exercício 1 - Implemente a leitura de FASTA
  return(list())
}

calc_gc <- function(seq) {
  # Calcula o conteúdo GC de uma sequência.
  # Retorna a porcentagem de bases G e C (0.0 a 100.0).
  # Insensível a maiúsculas/minúsculas (suporta 'g', 'c', 'G', 'C').
  # Deve ignorar bases não padrão (N, X, etc.) no denominador.
  # Se a sequência não contiver bases válidas (ATCG), retorne 0.0.
  
  # TODO: Exercício 2 - Implemente o cálculo de conteúdo GC
  return(0.0)
}

filter_fasta <- function(records, min_len = 0, min_gc = 0.0) {
  # Filtra os registros por comprimento mínimo e conteúdo GC mínimo.
  
  # TODO: Exercício 3 - Implemente a filtragem de registros
  return(list())
}

reverse_complement <- function(seq) {
  # Retorna o reverso complementar de uma sequência de DNA.
  # Preserva a caixa de cada caractere (maiúscula/minúscula).
  # A <-> T, C <-> G
  
  # TODO: Exercício 4 - Implemente o reverso complementar
  return("")
}

write_fasta <- function(records, path) {
  # Grava uma lista de registros no formato FASTA em um arquivo de saída.
  
  # TODO: Exercício 5 - Implemente a gravação do FASTA
  invisible(NULL)
}

main <- function() {
  # Interface de linha de comando (CLI) em R.
  # Lê argumentos passados por comando de terminal:
  # Rscript fastatool.R --input <file> --output <file> [opções]
  # Opções: --min-len, --min-gc, --rev-comp
  
  # TODO: Exercício 5 - Implemente a CLI
}

if (!interactive()) {
  # Se executado via terminal, roda a main
  # main()
}
