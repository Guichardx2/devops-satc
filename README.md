# DevOps
Repositório destinado à matéria de DevOps.

<hr/>

## DevOps e SRE

## O que é DevOps?

**DevOps** (junção de "Desenvolvimento" e "Operações") é principalmente uma **cultura de colaboração** entre quem desenvolve software e quem cuida da infraestrutura.  
A ideia é que todos trabalhem juntos durante todo o ciclo de vida da aplicação, em vez de equipes separadas.

**Principais pilares do DevOps:**
* **Automação:** Diminuir tarefas manuais usando automação em testes, infraestrutura (Infrastructure as Code) e deploys.
* **CI/CD:** Permite testar e entregar código com mais rapidez, frequência e segurança.
* **Feedback rápido:** Monitorar o sistema para identificar e corrigir problemas o quanto antes.

---

## O que é SRE (Site Reliability Engineering)?

**SRE** (Site Reliability Engineering) é uma abordagem criada no Google que aplica **engenharia de software para resolver problemas de operações**.  
Se o DevOps fala mais sobre a cultura e colaboração, o SRE mostra **como colocar isso em prática de forma técnica**.

**Principais conceitos do SRE:**
* **Operações como software:** Automatizar e resolver problemas de infraestrutura com código.
* **Métricas de confiabilidade:**
    * **SLI:** A métrica real do sistema (ex: tempo de resposta da API).
    * **SLO:** A meta definida para essa métrica (ex: 99,9% das requisições em até 200ms).
    * **SLA:** O acordo caso a meta não seja cumprida.
* **Error Budget:** A margem aceitável de falhas antes de priorizar estabilidade.
* **Redução de Toil:** Diminuir trabalho manual e repetitivo por meio de automação.

---

## Sobre o Projeto

Este repositório contém um projeto **frontend** desenvolvido com as seguintes tecnologias:

- **React** - Biblioteca para construção de interfaces
- **TypeScript** - Superset JavaScript com tipagem estática
- **Vite** - Build tool rápido para desenvolvimento
- **Tailwind CSS** - Framework CSS utilitário
- **HeroUI** - Biblioteca de componentes UI

O projeto é uma aplicação web simples que serve como base/template para estudos de DevOps.

---

## Como Rodar

### Pré-requisitos

- [Node.js](https://nodejs.org/) (versão 18 ou superior)
- npm

### Passos

1. Clone o repositório:
```bash
git clone https://github.com/Guichardx2/devops-satc.git
```

2. Acesse a pasta do frontend:
```bash
cd devops-satc/devops-front
```

3. Instale as dependências:
```bash
npm install
```

4. Rode o projeto em modo de desenvolvimento:
```bash
npm run dev
```

5. Acesse no navegador: `http://localhost:5173`

### Outros Comandos

| Comando | Descrição |
|---------|-----------|
| `npm run build` | Gera a build de produção |
| `npm run preview` | Visualiza a build de produção |
| `npm run lint` | Executa o linter para verificar o código |
