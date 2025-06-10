def read_csv(file_path):
    import pandas as pd

    # Lê o arquivo CSV e extrai os nomes em uma lista
    try:
        df = pd.read_csv(file_path, encoding='utf-8')
        # Supondo que os nomes estão em uma coluna chamada 'name'
        names = df['nome'].tolist()
        return names
    except Exception as e:
        print(f"Erro ao ler o arquivo CSV: {e}")
        return []