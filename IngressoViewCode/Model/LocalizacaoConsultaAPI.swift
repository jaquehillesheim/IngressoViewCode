//
//  LocalizacaoConsultaAPI.swift
//  IngressoViewCode
//
//  Created by Jaqueline Hillesheim on 24/10/22.
//

import UIKit
import Alamofire

class LocalizacaoConsultaAPI:NSObject {
    
    func consultaViaCepAPI(cep:String, sucesso:@escaping(_ Localizacao:Localizacao) -> Void, falha: @escaping(_ error:Error) -> Void) {
        Alamofire.request("https://viacep.com.br/ws/\(cep)/json/", method: .get).validate().responseJSON { (response) in switch response.result {
        case .success:
            if let resultado = response.result.value as? Dictionary<String, String> {
                let localizacao = Localizacao(resultado)
                sucesso(localizacao)
            }
        case .failure:
            falha(response.result.error!)
            break
        }
        func serializaObjeto(dicionario:Dictionary<String, String>) -> Localizacao {
            let localizacao = Localizacao(dicionario)
            return localizacao
            }
        }
    }
}
