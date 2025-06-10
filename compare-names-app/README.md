# Aplicativo de Comparação de Nomes

Este projeto é uma aplicação simples que permite aos usuários comparar nomes de um arquivo CSV com nomes extraídos de um arquivo PDF. Ele utiliza o Streamlit para a interface do usuário, facilitando o upload de arquivos e a visualização dos resultados.

## Funcionalidades

- Fazer upload de um arquivo PDF para extrair texto.
- Fazer upload de um arquivo CSV contendo nomes.
- Comparar os nomes do arquivo CSV com os extraídos do PDF.
- Exibir os nomes que coincidem.

## Estrutura do Projeto

```
compare-names-app
├── src
│   ├── app.py            # Ponto de entrada principal para a aplicação Streamlit
│   ├── pdf_reader.py     # Módulo para leitura de arquivos PDF
│   ├── csv_reader.py     # Módulo para leitura de arquivos CSV
│   └── name_comparator.py # Módulo para comparação de nomes
├── requirements.txt      # Lista de dependências
└── README.md             # Documentação do projeto
```

## Instalação

Para executar esta aplicação, você precisa ter o Python instalado em sua máquina. Siga os passos abaixo para configurar o projeto:

1. Clone o repositório:
   ```
   git clone https://github.com/AleTavares/compare-names-app.git
   cd compare-names-app
   ```

2. Crie um ambiente virtual (opcional, mas recomendado):
   ```
   python -m venv venv
   source venv/bin/activate  # No Windows use `venv\Scripts\activate`
   ```

3. Instale as dependências necessárias:
   ```
   pip install -r requirements.txt
   ```

## Uso

1. Execute a aplicação:
   ```
   streamlit run src/app.py
   ```

2. Abra seu navegador e vá para `http://localhost:8000 --server.port=8000`.

3. Faça o upload do seu arquivo PDF e do arquivo CSV usando a interface fornecida.

4. Veja os resultados da comparação de nomes diretamente no aplicativo.

## Dependências

O projeto requer os seguintes pacotes Python:

- Streamlit
- PyPDF2 ou pdfplumber (para processamento de PDF)
- pandas (para processamento de CSV)

## Contribuindo

Sinta-se à vontade para enviar issues ou pull requests caso tenha sugestões ou melhorias para o projeto.