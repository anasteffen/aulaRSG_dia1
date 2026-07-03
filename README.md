# Exercícios Dia 1 - Ferramenta de Manipulação de FASTA (`fastatool`)

Este repositório contém a atividade prática do **Dia 1** do curso de **Engenharia de Software e DevOps para Bioinformática**.

Aqui, você desenvolverá uma ferramenta de linha de comando (`fastatool`) para parsing, estatística, filtragem e transformação de sequências biológicas no formato FASTA.

Você pode optar por realizar os exercícios em **Python** ou em **R**.

---

## Estrutura do Repositório

```
/
├── data/
│   ├── sample.fasta           # Arquivo FASTA de teste válido (multi-linha)
│   ├── sample.txt             # Arquivo comum que deve ser rejeitado
│   └── sample_broken.fasta    # Arquivo FASTA com formatação quebrada
└── exercises/
    ├── python/
    │   ├── fastatool.py       # Esqueleto do script (Python)
    │   ├── test_fastatool.py  # Arquivo de testes unitários (pytest)
    │   └── requirements.txt   # Dependências do Python
    └── r/
        ├── fastatool.R        # Esqueleto do script (R)
        └── test_fastatool.R   # Arquivo de testes unitários (testthat)
```

---

## Como Começar

### Opção 1: Python

1. **Configurar Ambiente Virtual (Recomendado):**
   ```bash
   cd exercises/python/
   python3 -m venv .venv
   source .venv/bin/activate  # No Windows use: .venv\Scripts\activate
   ```

2. **Instalar Dependências:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Executar os Testes (TDD):**
   ```bash
   pytest test_fastatool.py
   ```
   *De início, os testes devem falhar (Red). Seu objetivo é escrever o código em `fastatool.py` para fazê-los passar (Green).*

---

### Opção 2: R

1. **Configurar Dependências:**
   Abra o R ou RStudio e instale o pacote `testthat`:
   ```R
   install.packages("testthat")
   ```

2. **Executar os Testes (TDD):**
   No terminal (dentro de `exercises/r/`):
   ```bash
   Rscript -e "testthat::test_file('test_fastatool.R')"
   ```
   *De início, os testes devem falhar (Red). Seu objetivo é escrever o código em `fastatool.R` para fazê-los passar (Green).*

---

## Progresso de Aprendizado (TDD Híbrido)

A atividade é dividida em 5 exercícios sequenciais:

1. **Exercício 1: Leitura de FASTA (`read_fasta`)**
   - **TDD:** Testes fornecidos na íntegra. Apenas desenvolva a lógica do parser multi-linha até que todos os testes passem.
2. **Exercício 2: Estatísticas de GC (`calc_gc`)**
   - **TDD:** Testes parciais. Complete a lacuna nos testes fornecidos primeiro, depois desenvolva a lógica.
3. **Exercício 3: Filtro de Sequências (`filter_fasta`)**
   - **TDD:** Testes parciais. Escreva um novo caso de teste cobrindo a filtragem múltipla por GC e tamanho, depois implemente a lógica.
4. **Exercício 4: Reverso Complementar (`reverse_complement`)**
   - **TDD:** Testes parciais. Adicione o teste que valida a preservação de letras maiúsculas/minúsculas, depois implemente.
5. **Exercício 5: Gravação e Interface CLI (`write_fasta` + `main`)**
   - **TDD:** Sem testes fornecidos! Projete e escreva seus próprios testes de integração para validar a CLI do terminal ponta a ponta e implemente a interface da ferramenta.
