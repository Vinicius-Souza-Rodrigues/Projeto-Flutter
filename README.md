# Cantina Uniesp - Projeto Flutter

##  Sobre o Projeto
Aplicativo mobile desenvolvido em Flutter para gerenciar uma cantina universitária (Uniesp). O app possui funcionalidades de login, catálogo de produtos, carrinho de compras e perfil do usuário.

##  Funcionalidades
- **Login** - Autenticação de usuários
- **Home** - Catálogo de produtos da cantina
- **Carrinho** - Gerenciamento de itens do carrinho de compras
- **Perfil** - Visualização e edição do perfil do usuário

##  Grupo Desenvolvedor
- Vinicius Souza
- Raissa Cunha
- Ana Beatriz Belmiro
- Manuela Aime

##  Como Executar

### Pré-requisitos
- Flutter SDK instalado
- Celular/emulador conectado com depuração USB habilitada

### Instalação e Execução
```bash
# Instalar dependências
flutter pub get

# Executar no dispositivo
flutter run

# Executar em modo release (mais otimizado)
flutter run --release
```

##  Dependências Principais
- Flutter SDK 3.12.0+
- Material Design Icons

##  Estrutura do Projeto
```
lib/
├── main.dart           # Arquivo principal
├── dados.dart          # Dados da aplicação
└── screens/
    ├── login_page.dart    # Tela de login
    ├── home_page.dart     # Tela principal/catálogo
    ├── carrinho_page.dart # Tela do carrinho
    └── perfil_page.dart   # Tela de perfil
```