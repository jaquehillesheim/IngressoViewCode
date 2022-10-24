//
//  ValidaFormulario.swift
//  IngressoViewCode
//
//  Created by Jaqueline Hillesheim on 21/10/22.
//

import UIKit
import CPF_CNPJ_Validator
import CreditCardValidator



class ValidaFormulario: NSObject {
    
    func verificaTextFieldsPreenchidos(textFields:Array<UITextField>) -> Bool  {
        var textTextFieldsEstaoPreenchidos = true
        
        for textField in textFields {
            if textField.text == ""{
                textTextFieldsEstaoPreenchidos = false
            } else {
                textTextFieldsEstaoPreenchidos = true
            }
        }
        return textTextFieldsEstaoPreenchidos
    }
    
    func verificaCpf(cpf: String) -> Bool {
        if BooleanValidator().validate(cpf: cpf) == true {
            return true
        } else {
            return false
        }
    }
    
    // validacao do fortado do email - utilizando RegEx
    func verifivaEmail(email:String) -> Bool {
        let emailRegEx = "(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"+"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"+"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"+"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"+"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"+"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"+"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
        
        
        let emailTest = NSPredicate(format:"SELF MATCHES[c] %@", emailRegEx)
        
        return emailTest.evaluate(with: email)
    }
    
    func numeroDoCartao(cartao:String) -> Bool {
        if CreditCardValidator(cartao).isValid { return false }
        return true
    }
    
    func exibeNotificacaoDePreenchimentoDosTextFields() -> UIAlertController {
        let notificacao = UIAlertController(title: "Atenção", message: "Preencha corretamente os campos", preferredStyle: .alert)
        let botao = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        notificacao.addAction(botao)
        
        return notificacao
    }
    
    func exibeNotificacaoDeCompraRealizada() -> UIAlertController {
        let notificacao = UIAlertController(title: "Parabens", message: "Compra realizada com sucesso", preferredStyle: .alert)
        let botao = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        notificacao.addAction(botao)
        
        return notificacao
    }
}
