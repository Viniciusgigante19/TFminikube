FROM python:3.11-slim

WORKDIR /app

# Instala git e outras dependências
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Clona o repositório correto
RUN git clone https://github.com/AleTavares/compare-names-app.git 

WORKDIR /app/compare-names-app

# Instala as dependências do Python, se existir requirements.txt
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

EXPOSE 8000

# Comando para iniciar o servidor (ajuste conforme o app)
CMD ["streamlit", "run", "src/app.py", "--server.port=8000"]
