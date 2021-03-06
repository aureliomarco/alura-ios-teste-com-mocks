# Curso de iOS Testando comportamentos com mocks

Os principais objetivos do curso são:
- Testar classes complexas
- Utilizar framework para criar mocks
- Ensinar o mock com thenReturn
- Criar mocks que lançam exceções
- Capturar argumentos com ArgumentCaptor
- Testar View Controller

Esse é meu código produzido durante o curso.

:spiral_notepad: :pencil2: Anotações durante o curso, podem ser vistas [AQUI](https://marcoaurelio.slite.com/api/s/note/8Maf3gzST386cCxGcbrznT/iOS-Testando-comportamentos-com-mocks)

### Setup
- IDE: Xcode 11.1 (Versão do XCode onde o projeto foi desenvolvido)
- Versão Swift: 5.1

1. Clone o repositório na sua máquina.
```
git clone git@github.com:aureliomarco/alura-ios-teste-com-mocks.git
```
2. Navegue até o diretório (pasta) onde o repositório foi clonado.
3. Instale as dependências com seguinte comando
```
pod install
```
4. Abra o arquivo do projeto
```
open Leilao.xcworkspace
```

## Aula 01 - Criando classes falsas
- [Criação do projeto](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/82c7a3abbda5ffef91967dda650ab5aaa5a2ca30) - commit [82c7a3abbda5ffef91967dda650ab5aaa5a2ca30]
- [Testando o encerrador de leilão](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/c12be1542dece8c064452c9d46c81697c47754dc) - commit [c12be1542dece8c064452c9d46c81697c47754dc]
- [Criando classe falsa](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/48bbf9c0d1b7867839b8b65f75ce62fa13ce223a) - commit [48bbf9c0d1b7867839b8b65f75ce62fa13ce223a]
- [Instalando o Cuckoo](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/ea4d2f853385901497df7323fecfdf089a3fffd1) - commit [ea4d2f853385901497df7323fecfdf089a3fffd1]

## Aula 02 - Ensinando o mock
- [Utilizando o Mock](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/e394b7cac2a832d16be1c49a8307e5de8af6a37d) - commit [e394b7cac2a832d16be1c49a8307e5de8af6a37d]
- [Ensinando mock com o método when-screen](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/024371b6976783734e6a0229f1414fea38ca7e96) - commit [024371b6976783734e6a0229f1414fea38ca7e96]
- [Método verify](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/9d4c4332c36b709f75abcab5083644c06c405d27) - commit [9d4c4332c36b709f75abcab5083644c06c405d27]

## Aula 03 - Mocks que lançam exceções
- [Métodos que lançam exceções](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/b2f764b32fa21837fcfdd6410677c6c014219d47) - commit [b2f764b32fa21837fcfdd6410677c6c014219d47]
- [Mocks que lançam exceções](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/7afd04433d2b7c9173975ca5af11aff6efad32b8) - commit [7afd04433d2b7c9173975ca5af11aff6efad32b8]

## Aula 04 - Capturando argumento
- [Criando cenário de teste](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/887aa7e4cfef12f1ce18390687a1749f7261aa07) - commit [887aa7e4cfef12f1ce18390687a1749f7261aa07]
- [Ensinando mock com when](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/d184accf9b71dceb43097b02132a3862a4ca2234) - commit [d184accf9b71dceb43097b02132a3862a4ca2234]
- [Capturando argumento](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/a8d278a3adfed2246e1ec2ce439fbb7f38f6dc01) - commit [a8d278a3adfed2246e1ec2ce439fbb7f38f6dc01]

## Aula 05 - Isolando para testar
- [Utilizando argument captor](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/98ecf3b1da733afd272425df0709bbf137d6a9b4) - commit [98ecf3b1da733afd272425df0709bbf137d6a9b4]
- [Isolando para testar](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/0f41294eecc70fc0097d216b1e5aa3f941796e48) - commit [0f41294eecc70fc0097d216b1e5aa3f941796e48]

## Aula 06 - Testando View Controller
- [Testando view controllers](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/ae4e37e8600bccde72d613aab93cfd346996b455) - commit [ae4e37e8600bccde72d613aab93cfd346996b455]
- [Testando métodos de data source](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/7a386607fd8702cfbf6fc49573cce3465549e127) - commit [7a386607fd8702cfbf6fc49573cce3465549e127]
- [Testando método CellForRow](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/ba66b6f8b8df13fb755baef29adb23ab3010fd03) - commit [ba66b6f8b8df13fb755baef29adb23ab3010fd03]
- [Testando reutilização de células](https://github.com/aureliomarco/alura-ios-teste-com-mocks/commit/bfdd92e425586204b0380b5afcf688800adcd4c3) - commit [bfdd92e425586204b0380b5afcf688800adcd4c3]

<p align="left">
  <img width="700" height="441" src="gif/test.gif">
</p>
