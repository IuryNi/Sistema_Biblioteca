livros = [
    {
        "id": 1,
        "titulo": "O Hobbit",
        "autor": "J.R.R. Tolkien"
    },
    {
        "id": 2,
        "titulo": "1984",
        "autor": "George Orwell"
    }
]

def menu():
    print("===== MENU =====")
    print("1. listar liros")
    print("2. cadastrar livro")
    print("3. pesquisar livro")
    print("4. sair")

def cadastrar_livro():
    titulo = input("digite o título do livro: ")
    autor = input("digite o autor do livro: ")
    livros.append({
        "id": len(livros) + 1,
        "titulo": titulo,
        "autor": autor
    })
    print(f"Livro '{titulo}' de {autor} cadastrado com sucesso!")

def listar_livros():
    for livro in livros:
        print(f"ID: {livro['id']}, Título: {livro['titulo']}, Autor: {livro['autor']}")

def pesquisar_livro():
    termo = input("Digite o título do livro: ")
    if not termo:
        print("Nenhum título fornecido.")
        return
    resultados = [livro for livro in livros if termo.lower() in livro['titulo'].lower()]

    if resultados:
        for livro in resultados:
            print(f"ID: {livro['id']}, Título: {livro['titulo']}, Autor: {livro['autor']}")
    else:
        print("Nenhum livro encontrado.")

while True:
    menu()

    opcao = input("Escolha uma opção: ")

    if opcao == "1":
        listar_livros()

    elif opcao == "2":
        cadastrar_livro()

    elif opcao == "3":
        pesquisar_livro()

    elif opcao == "4":
        print("Sistema encerrado.")
        break

    else:
        print("Opção inválida.")