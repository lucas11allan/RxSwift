/// Criação do Subject, que nesse caso pode ser entendido como o nosso observável, do tipo String
let batatinha = PublishSubject<String>()

/// Aqui vamos nos inscrever para “observar” a variável “batatinha”
/// Neste momento não deve acontecer nada, baseado no tipo de variável utilizada e também por nossa variável não ter recebido um valor inicial
batatinha.subscribe(onNext: { print($0) })

/// Aqui nós estamos “acionando” a nossa variável, ou seja, estamos mandando um sinal para o RxSwift, que por sua vez vai passar esse recado para todos os inscritos
/// Só agora a nossa função da linha 6 será ativada
batatinha.onNext("Oi senhor leitor")
