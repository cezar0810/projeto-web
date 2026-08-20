\\O que é um Projeto de Software?\\

Um projeto de software é um conjunto de atividades planejadas para criar, desenvolver, testar e entregar um sistema ou aplicação que atenda a uma necessidade específica. Ele envolve etapas como levantamento de requisitos, definição do escopo, desenvolvimento, testes, documentação e implantação. Diferente de um código ou script isolado, um projeto de software possui um objetivo definido, organização e acompanhamento de todo o processo de desenvolvimento, desde a ideia inicial até a entrega do produto final.


\\Diferença entre Projeto de Software e Script/Código Isolado\\

Um projeto de software é uma solução desenvolvida de forma planejada e organizada para atender a uma necessidade específica. Ele envolve várias etapas, como definição de requisitos, planejamento, desenvolvimento, testes, documentação, versionamento e entrega. Já um script ou código isolado geralmente é criado para realizar uma tarefa específica, sem necessariamente possuir todo esse planejamento e estrutura. Por exemplo, um pequeno código que calcula uma média pode ser um script isolado, enquanto um sistema escolar completo, com cadastro de alunos, notas, usuários, banco de dados e relatórios, é um projeto de software.




\\Ciclo de Vida Básico de um Projeto de Software\\

Levantamento de Requisitos / Escopo

É a etapa em que são definidos os objetivos do projeto e as funcionalidades que o software deverá possuir, esses requisitos são levantados como funcional e não funcional, sendo os funcionais o que o usuario consegue ver, e os não funcionais questões como velocidade do app etc... Também é determinado o que fará ou não parte do projeto, evitando mudanças e problemas durante o desenvolvimento.

Desenvolvimento / Codificação

É a etapa em que os desenvolvedores transformam os requisitos definidos em código, criando as funcionalidades e estruturas necessárias para que o software funcione.

Testes / Qualidade

É a etapa em que o software é verificado para encontrar erros, falhas ou comportamentos inesperados. Os testes servem para garantir que as funcionalidades estejam funcionando corretamente e de acordo com os requisitos definidos.

Entrega / Implantação

É a etapa em que o software finalizado é disponibilizado para os usuários ou para o cliente. Dependendo do projeto, isso pode envolver instalar o sistema, colocá-lo em um servidor ou publicá-lo em uma plataforma para que possa ser utilizado.


# Laboratório Prático: Investigação e Análise Crítica

**Aluno:** Cezar Augusto
**Curso:** Técnico em Desenvolvimento de Sistemas
**Data:** 20/08/2026

---

Primeiro, o que é semântica: A semântica é o ramo da linguística que estuda o significado, o sentido e a interpretação de palavras, frases e textos.

## Parte 1: Engenharia Reversa de Sintaxe

### 1. Qual trecho foca na semântica personalizada dos dados?

O **Trecho C, escrito em XML**, é o que se concentra na semântica personalizada dos dados sem determinar como as informações serão exibidas visualmente.

Isso é notável por que tem os textos dentro das Tags `<livro>`, `<titulo>` e `<autor>`, que mostra o significado deles. Aparentemente o  XML não define cores, fontes, tamanhos ou posicionamento dos elementos na tela. Sua principal função é mostrar informações de maneira estruturada.

O HTML também possui elementos semânticos, mas suas tags fazem parte de um padrão criado principalmente para estruturar páginas da web. Já o XML permite criar tags personalizadas de acordo com os dados que precisam ser representados.

---

### 2. Qual sintaxe é mais eficiente para documentar um código?

A sintaxe mais eficiente e limpa para documentar códigos em um repositório é o **Markdown**.

O Markdown utiliza poucos símbolos e permite criar títulos, listas, links, tabelas, imagens e blocos de código sem a necessidade de escrever muitas tags. O arquivo .md é padronizado em vários softwares e trabalhos.

### 3. Qual opção seria a base estrutural de uma loja virtual?

Para criar a página principal de uma loja virtual, a base estrutural obrigatória seria o **HTML5**, representado pelo Trecho A.

O HTML é a linguagem utilizada para organizar o conteúdo que será exibido no navegador. Com ele, podem ser criados elementos como:

* Cabeçalho;
* Menu de navegação;
* Área de produtos;
* Imagens;
* Botões;
* Formulários;
* Rodapé.

Posteriormente, o CSS poderia ser utilizado para cuidar da aparência da loja, enquanto o JavaScript poderia acrescentar interações e funcionalidades.

---

## Parte 2: Auditoria de Infraestrutura Real

### 1. Consulta de valores de mercado

Pesquisando no site do Registro.br, vi que o registro de um domínio `.com.br` custa cerca de **R$ 40,00 por 1 ano**.

Se registrar por mais tempo, o valor fica um pouco mais barato. Por exemplo, por **5 anos custa R$ 184,00**. Se fosse só multiplicar o valor de 1 ano, daria R$ 200,00, então acaba tendo uma pequena economia de R$ 16,00.

| Período | Valor total | Economia |
| ------- | ----------: | -------: |
| 1 ano   |    R$ 40,00 |   Não há |
| 5 anos  |   R$ 184,00 | R$ 16,00 |

O site também permite pagar o domínio adiantado por até 10 anos.

**Fonte:** [Registro.br – Domínios](https://registro.br/dominio/)

---

### 2. Rastreamento de IP utilizando DNS

O site que eu usei para o teste foi:

`uol.com.br`

No Prompt de Comando do Windows, eu rodei o comando:

```bash
ping uol.com.br
```

O IP que apareceu foi:

`200.147.35.149`

O DNS basicamente serve para transformar o nome do site (que é mais fácil de lembrar) em um número de IP, que é o endereço real usado pelos computadores para encontrar o site.

Esse IP pode mudar dependendo da internet, da localização e do momento em que a consulta é feita.

---

### 3. Investigação de propriedade utilizando Whois

O domínio pesquisado foi:

`uol.com.br`

A consulta foi feita usando uma ferramenta Whois.

#### Informações encontradas

* **Empresa dona do domínio:** Universo Online S.A.
* **CNPJ:** 01.109.184/0004-38
* **Data de criação:** 24/04/1996
* **Data de expiração:** 24/04/2034
* **Situação:** Ativo

#### Servidores DNS

* `eliot.uol.com.br`
* `borges.uol.com.br`
* `charles.uol.com.br`

Resumindo, o servidor principal pode ser considerado o `eliot.uol.com.br`, e os outros funcionam como servidores de apoio.

Esses servidores são os responsáveis por fazer o domínio `uol.com.br` funcionar corretamente na internet.

**Fonte:** [Consulta Whois do UOL](https://www.whois.com/whois/uol.com.br)

---

## Conclusão

Esta atividade mostrou que HTML, Markdown e XML possuem finalidades diferentes.

O HTML é utilizado para estruturar páginas da web, o Markdown facilita a criação de documentações e o XML representa dados por meio de uma estrutura personalizada.

A auditoria também demonstrou que o funcionamento de um site depende de diferentes elementos de infraestrutura, como o registro do domínio, a resolução DNS, os endereços IP e os servidores responsáveis pelo direcionamento do domínio.
