#!/usr/bin/env python3
"""
fastatool.py - Ferramenta de manipulação de arquivos FASTA.
Atividade prática do Dia 1
"""

import sys
import argparse


def read_fasta(path: str) -> list:
    """
    Lê um arquivo FASTA e retorna uma lista de dicionários.
    Cada dicionário deve ter o formato: {"id": "nome_da_sequencia", "seq": "SEQUENCIA"}
    
    ATENÇÃO: Deve lidar com sequências multi-linha e ignorar linhas em branco.
    Caso o arquivo não comece com ">", deve lançar um ValueError.
    """
    # TODO: Exercício 1 - Implemente a leitura de FASTA
    pass


def calc_gc(seq: str) -> float:
    """
    Calculates the GC content of a sequence.
    Returns the percentage of G and C bases (0.0 to 100.0).
    Case-insensitive (handles 'g', 'c', 'G', 'C').
    Should ignore non-standard bases (N, X, etc.) when calculating percentage, 
    counting only A, T, C, G in the denominator.
    If the sequence has no valid ATCG bases, return 0.0.
    """
    # TODO: Exercício 2 - Implemente o cálculo de conteúdo GC
    return 0.0


def filter_fasta(records: list, min_len: int = 0, min_gc: float = 0.0) -> list:
    """
    Filtra os registros por comprimento mínimo e conteúdo GC mínimo.
    """
    # TODO: Exercício 3 - Implemente a filtragem de registros
    return []


def reverse_complement(seq: str) -> str:
    """
    Returns the reverse complement of a DNA sequence.
    Case-preserving (if input is lower, output is lower. If mixed, preserves matching case).
    A <-> T, C <-> G
    """
    # TODO: Exercício 4 - Implemente o reverso complementar
    return ""


def write_fasta(records: list, path: str) -> None:
    """
    Grava uma lista de registros no formato FASTA em um arquivo de saída.
    """
    # TODO: Exercício 5 - Implemente a gravação do FASTA
    pass


def main():
    """
    Interface de linha de comando (CLI) da ferramenta.
    Deve suportar os seguintes argumentos:
    --input: Arquivo FASTA de entrada (obrigatório)
    --output: Arquivo FASTA de saída (obrigatório)
    --min-len: Comprimento mínimo de sequência (opcional, default: 0)
    --min-gc: Conteúdo GC mínimo (opcional, default: 0.0)
    --rev-comp: Flag para aplicar reverso complementar nas sequências mantidas (opcional, flag booleana)
    """
    # TODO: Exercício 5 - Implemente a CLI
    pass


if __name__ == "__main__":
    main()
