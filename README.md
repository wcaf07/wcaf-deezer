# wcaf-deezer

Projeto ios desenvolvido usando swift arquitetado em MVVM. Sua finalidade é pesquisar artistas e ver suas respectivas músicas. O projeto contou com 2 libs para auxiliar no desenvolvimento:
1. Alamofire (usado para auxiliar nas requisições http)
2. Nuke (usado para auxiliar no downloading e caching de imagens)

Foi utilizado cocoapods para gerenciamento de libs. Neste projeto também possui testes unitários, dentro de ***/wcafDeezerTests*** com intuito de testar a coerência de alguns métodos das ViewModels e da informação exibida por alguns ViewControllers.

**PS: Infelizmente o player não foi testado por falta de provisioning profile para executar em um dispositivo real, porém sua implementação foi desenvolvida usando AVPlayer como pode ser visto no código fonte**
