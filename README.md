# 🚀 Template de Landing Page de Alta Conversão — Escola SINC

> Um modelo de página de vendas profissional, ultrarrápido, responsivo e desenhado para converter visitantes em clientes. Construído em **HTML5 puro e Tailwind CSS**, dispensando qualquer tipo de compilação ou conhecimento prévio em programação.

---

## ⚡ Coloque seu site no ar com 1 Clique (Deploy to Vercel)

Clique no botão abaixo para criar sua cópia gratuita deste projeto e publicá-lo na internet imediatamente através da Vercel:

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/jrdiiaas/template-lp-conversao)

### Como funciona o botão mágico:
1. Clique no botão azul **Deploy with Vercel** acima.
2. Faça login na sua conta do GitHub e da Vercel (se não tiver, o cadastro é 100% gratuito).
3. Dê um nome para o seu projeto (ex: `minha-pagina-incrivel`).
4. Clique em **Create** (ou **Deploy**).
5. Pronto! Em menos de 30 segundos seu site estará acessível no link oficial gratuito gerado pela Vercel (`https://seu-nome.vercel.app`).

---

## 🎨 Os 15 Blocos Estruturados da Página

Esta página foi construída seguindo a anatomia de copy e design de alta conversão:

| Bloco | Seção | Objetivo de Conversão |
|---|---|---|
| **01** | **Barra de Aviso Superior** | Gera urgência e destaca condições especiais ou início de turmas. |
| **02** | **Hero Section** | Headline magnética, subtítulo de transformação e botões de chamada principal. |
| **03** | **Barra de Reconhecimento** | Logos e marcas que geram prova imediata e credibilidade institucional. |
| **04** | **Bloco da Dor** | Conecta com as 3 maiores frustrações e dificuldades do seu público-alvo. |
| **05** | **Apresentação da Solução** | Explica o mecanismo único e a virada de chave do seu método. |
| **06** | **O Que Você Recebe** | Grade visual com os módulos, entregáveis e benefícios do produto. |
| **07** | **Demonstração do Produto** | Moldura realista de mockup mostrando seu produto ou serviço em ação. |
| **08** | **Depoimentos e Avaliações** | Prova social real com avaliações 5 estrelas e feedbacks de clientes. |
| **09** | **Bônus Exclusivos** | Presentes com valor financeiro tachado para aumentar a percepção de valor. |
| **10** | **Tabela de Oferta e Preço** | Stack de valor detalhado, preço parcelado/à vista e botão direto de checkout. |
| **11** | **Garantia Incondicional** | Selo de proteção com garantia de 7 dias para eliminar qualquer risco do cliente. |
| **12** | **Sobre o Autor / Mentor** | Foto e mini-bio demonstrando autoridade, experiência e missão. |
| **13** | **Perguntas Frequentes (FAQ)** | Acordeão interativo para quebrar as principais objeções de compra. |
| **14** | **Formulário com Webhook** | Captação assíncrona de leads enviando direto para n8n, Make ou CRM. |
| **15** | **Rodapé Institucional** | Direitos autorais, CNPJ, links de termos de uso e privacidade. |

---

## ✏️ Como Editar os Textos

Você tem duas formas simples de personalizar os textos da página:

### Opção 1: Pelo Próprio Navegador no GitHub (Sem instalar nada)
1. No seu repositório no GitHub, abra o arquivo `index.html`.
2. Clique no ícone de lápis ✏️ no canto superior direito para editar o arquivo.
3. Procure os comentários destacados em maiúsculas, como:
   ```html
   <!-- [COLE SEU TÍTULO PRINCIPAL ABAIXO] -->
   <h1>Seu Título Aqui</h1>
   ```
4. Altere o texto entre as tags, desça até o final da página e clique em **Commit changes**.
5. A Vercel detecta a alteração automaticamente e atualiza o seu site em segundos!

### Opção 2: Pelo Antigravity com a Skill "Mestre de Obras" (Recomendado)
Se você utiliza o **Antigravity IDE** da Escola SINC, você não precisa mexer em nenhuma linha de código!
Basta falar com a IA em linguagem natural:
> *"Mude o título da página para 'Aprenda Finanças do Zero' e coloque no ar."*

O assistente localiza o bloco, faz a alteração e publica o site automaticamente para você, respondendo:
> *"Pronto, chefe! A página foi atualizada no link seu-site.vercel.app."*

---

## 🔗 Como Conectar o Formulário ao Seu Webhook

No final do arquivo `index.html` (por volta da linha 480), localize a variável `CONFIG`:

```javascript
const CONFIG = {
  // Substitua o link abaixo pela URL do seu Webhook (n8n, Make, Brevo ou Zapier):
  webhookUrl: "https://seu-servidor-n8n.com/webhook/captura-aluno"
};
```

Quando um visitante preencher o formulário, os dados serão enviados via `POST` em formato JSON:
```json
{
  "nome": "Maria da Silva",
  "email": "maria@exemplo.com",
  "telefone": "(11) 99999-8888",
  "mensagem": "Gostaria de saber mais...",
  "origem": "https://sua-pagina.vercel.app",
  "data_envio": "2026-09-24T19:00:00.000Z"
}
```

---

## 📄 Licença e Uso

Este template foi desenvolvido pela equipe de tecnologia da **Escola SINC** para uso livre por todos os alunos matriculados em nossos cursos e formações.
