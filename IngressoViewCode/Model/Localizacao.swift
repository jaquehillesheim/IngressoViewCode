//
//  Localizacao.swift
//  IngressoViewCode
//
//  Created by Jaqueline Hillesheim on 24/10/22.
//

import UIKit

class Localizacao: NSObject {
    
    var logradouro = ""
    var bairro = ""
    var cidade = ""
    var uf = ""
    
    init(_ dicionario: Dictionary<String, String>) {
        logradouro = dicionario["logradouro"] ?? ""
        bairro = dicionario["bairro"] ?? ""
        cidade = dicionario["localidade"] ?? ""
        uf = dicionario["uf"] ?? ""
    }
}
