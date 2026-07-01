# curso-dia1-git — Exercícios de Git

Repositório contendo o pipeline fictício de filtragem de sequências e os exercícios práticos do **Dia 1** do curso *Atuando na Indústria: Fundamentos de Engenharia de Software e DevOps para Bioinformatas*.

## Estrutura do Repositório
* `filtro.py`: Script Python para filtragem de sequências FASTA.
* `config.yaml`: Arquivo de configuração de parâmetros.
* `README.md`: Este arquivo com as instruções.

## Exercícios Práticos

### Exercício 2: Faded Example — Fluxo Git Completo
Siga as instruções descritas no seu documento de exercícios para:
1. Criar e acessar a branch `feat/filtro-qualidade`.
2. Editar `filtro.py` adicionando um comentário de autoria.
3. Adicionar, commitar e enviar para o repositório remoto.
4. Abrir um Pull Request.

### Exercício 3: Resolução de Conflito de Merge
Você irá resolver um conflito de merge entre duas branches paralelas:
1. Mude para a branch `feat/parametros-a`.
2. Tente mesclar a branch `feat/parametros-b` nela:
   ```bash
   git merge feat/parametros-b
   ```
3. Abra `config.yaml` no VS Code, identifique o conflito e resolva-o mantendo o valor de `min_quality: 30`.
4. Finalize o commit do merge.
