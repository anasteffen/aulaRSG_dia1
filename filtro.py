"""
filtro.py — filtra sequências FASTA por comprimento mínimo.
Exercício Dia 2, Ex 1 (versão corrigida).
"""

import argparse
from Bio import SeqIO


def filtrar_sequencias(input_path: str, min_len: int = 100) -> list:
    """Retorna sequências com comprimento >= min_len."""
    seqs = []
    for record in SeqIO.parse(input_path, "fasta"):
        if len(record.seq) >= min_len:
            seqs.append(record)
    return seqs


def main():
    parser = argparse.ArgumentParser(description="Filtra sequências FASTA por comprimento.")
    parser.add_argument("--input", required=True, help="Arquivo FASTA de entrada")
    parser.add_argument("--min-len", type=int, default=100, help="Comprimento mínimo (default: 100)")
    parser.add_argument("--output", default="filtradas.fasta", help="Arquivo FASTA de saída")
    args = parser.parse_args()

    seqs = filtrar_sequencias(args.input, args.min_len)
    SeqIO.write(seqs, args.output, "fasta")
    print(f"{len(seqs)} sequências escritas em {args.output}")


if __name__ == "__main__":
    main()
