# =====================================================================
# COMO EXECUTAR TODOS OS TESTES (ALUNO):
# No terminal, execute:
#     Rscript -e "testthat::test_file('test_fastatool.R')"
# No console do R/RStudio, execute:
#     testthat::test_file("test_fastatool.R")
# =====================================================================
library(testthat)
source("fastatool.R")

# =====================================================================
# EXERCÍCIO 1: Testes Completos Fornecidos (Onboarding)
# Objetivo: Apenas faça o código passar por esses testes.
# =====================================================================

test_that("read_fasta reads valid single-line FASTA", {
  tmp_file <- tempfile(fileext = ".fasta")
  writeLines(c(">seq1", "ATGC", ">seq2", "CGTA"), tmp_file)
  on.exit(unlink(tmp_file))
  
  records <- read_fasta(tmp_file)
  
  expect_equal(length(records), 2)
  expect_equal(records[[1]], list(id = "seq1", seq = "ATGC"))
  expect_equal(records[[2]], list(id = "seq2", seq = "CGTA"))
})

test_that("read_fasta reads valid multi-line FASTA", {
  tmp_file <- tempfile(fileext = ".fasta")
  writeLines(c("", ">seq1", "ATGC", "TTAA", "", ">seq2", "CG", "TA"), tmp_file)
  on.exit(unlink(tmp_file))
  
  records <- read_fasta(tmp_file)
  
  expect_equal(length(records), 2)
  expect_equal(records[[1]], list(id = "seq1", seq = "ATGCTTAA"))
  expect_equal(records[[2]], list(id = "seq2", seq = "CGTA"))
})

test_that("read_fasta throws error on invalid format", {
  tmp_file <- tempfile(fileext = ".fasta")
  writeLines(c("INVALID LINE", ">seq1", "ATGC"), tmp_file)
  on.exit(unlink(tmp_file))
  
  expect_error(read_fasta(tmp_file))
})


# =====================================================================
# EXERCÍCIO 2: Testes Parciais (Cálculo de GC)
# Objetivo: Complete a lacuna do teste e depois escreva o código correspondente.
# =====================================================================

test_that("calc_gc calculates correctly on standard sequences", {
  expect_equal(calc_gc("ATGC"), 50.0)
  expect_equal(calc_gc("GGCC"), 100.0)
  expect_equal(calc_gc("AATT"), 0.0)
})

test_that("calc_gc handles case and ambiguous bases", {
  # TODO: Exercício 2 - Complete o teste abaixo substituindo as lacunas (______)
  # 1. Garanta que calc_gc lida com minúsculas ("atgc" -> 50.0)
  expect_equal(calc_gc("atgc"), 50.0)
  
  # 2. Garanta que caracteres ambíguos (N, X) são desconsiderados no denominador
  # "ATGC-NNN" ou "ATGCN" -> ATGC tem 4 bases, sendo G e C 2 delas. Total deve ser 50.0%
  # Substitua a lacuna pela asserção correta:
  expect_equal(calc_gc("ATGCNNN"), 50.0)
})


# =====================================================================
# EXERCÍCIO 3: Testes Parciais (Filtragem)
# Objetivo: Escreva você mesmo os casos de teste que faltam!
# =====================================================================

test_that("filter_fasta filters by length", {
  records <- list(
    list(id = "seq1", seq = "ATGC"),       # len = 4
    list(id = "seq2", seq = "ATGCTTAA"),   # len = 8
    list(id = "seq3", seq = "A")           # len = 1
  )
  
  filtered <- filter_fasta(records, min_len = 4)
  expect_equal(length(filtered), 2)
  expect_equal(filtered[[1]]$id, "seq1")
  expect_equal(filtered[[2]]$id, "seq2")
})

test_that("filter_fasta filters by GC content and length", {
  # TODO: Exercício 3 - Escreva um teste que filtra registros por min_gc e min_len simulando múltiplos critérios.
  # Exemplo de records para testar:
  records <- list(
    list(id = "high_gc", seq = "GCGC"),  # len = 4, GC = 100%
    list(id = "low_gc", seq = "ATAT"),   # len = 4, GC = 0%
    list(id = "mid_gc_long", seq = "ATGCATGC") # len = 8, GC = 50%
  )
  # Escreva suas asserções abaixo para garantir que o filtro funciona!
  filtered <- filter_fasta(records, min_len = 4, min_gc = 40.0)
  expect_equal(length(filtered), 2)
  expect_equal(filtered[[1]]$id, "high_gc")
  expect_equal(filtered[[2]]$id, "mid_gc_long")
})


# =====================================================================
# EXERCÍCIO 4: Testes Parciais (Reverso Complementar)
# Objetivo: Adicione os casos de teste ausentes.
# =====================================================================

test_that("reverse_complement works on standard sequence", {
  expect_equal(reverse_complement("ATGC"), "GCAT")
})

test_that("reverse_complement preserves sequence case", {
  # TODO: Exercício 4 - Escreva um caso de teste para garantir a preservação de caixa (Maiúsculas/Minúsculas)
  # Exemplo: "atgc" -> "gcat", "AtGc" -> "gCaT"
  expect_equal(reverse_complement("atgc"), "gcat")
  expect_equal(reverse_complement("AtGc"), "gCaT")
})


# =====================================================================
# EXERCÍCIO 5: TDD Puro (CLI e MVP)
# Objetivo: Desenhe os seus testes ANTES de implementar a CLI em fastatool.R.
# =====================================================================

# TODO: Exercício 5 - Escreva aqui testes de integração para validar a CLI ponta a ponta.
# Dica de teste em R:
# test_that("CLI integration works", {
#   system("Rscript fastatool.R --input ...")
# })
