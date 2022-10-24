//
//  UserDataView.swift
//  IngressoViewCode
//
//  Created by Jaqueline Hillesheim on 20/10/22.
//

import Foundation
import UIKit

class UserDataView: UIView {
    private lazy var diceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1. Suas Informações"
        label.font = UIFont(name: "Arial Negrito", size: 17)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var divider2View: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return view
    }()
    
    private lazy var userDataStackView: UIStackView = {
        let vertical = UIStackView()
        vertical.translatesAutoresizingMaskIntoConstraints = false
        vertical.axis = .vertical
        return vertical
    }()
    
    private lazy var fullNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Nome Completo"
        label.font = UIFont(name: "Avenir Heavy", size: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
        return textField
    }()
    
    private lazy var eMailLabel: UILabel = {
        let label = UILabel()
        label.text = "E-mail"
        label.font = UIFont(name: "Avenir Heavy", size: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var eMailTextField: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
        return textField
    }()
    
    private lazy var cpfLabel: UILabel = {
        let label = UILabel()
        label.text = "CPF"
        label.font = UIFont(name: "Avenir Heavy", size: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var cpfTextField: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
       return textField
    }()
    
    private lazy var cepLabel: UILabel = {
        let label = UILabel()
        label.text = "CEP"
        label.font = UIFont(name: "Avenir Heavy", size: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
       return label
    }()
    
    private lazy var cepTextField: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
       return textField
    }()
    
    private lazy var districtLabel: UILabel = {
        let label = UILabel()
        label.text = "Bairro"
        label.font = UIFont(name: "Avenir Heavy", size: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var districtTextField: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
       return textField
    }()
    
    private lazy var addLabel: UILabel = {
        let label = UILabel()
        label.text = "Endereço"
        label.font = UIFont(name: "Avenir Heavy", size: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var addTextField: UITextField = {
        let textField = UITextField()
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
       return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        setConstraint()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        userDataStackView.addArrangedSubview(fullNameLabel)
        userDataStackView.addArrangedSubview(nameTextField)
        userDataStackView.addArrangedSubview(eMailLabel)
        userDataStackView.addArrangedSubview(eMailTextField)
        userDataStackView.addArrangedSubview(cpfLabel)
        userDataStackView.addArrangedSubview(cpfTextField)
        userDataStackView.addArrangedSubview(cepLabel)
        userDataStackView.addArrangedSubview(cepTextField)
        userDataStackView.addArrangedSubview(districtLabel)
        userDataStackView.addArrangedSubview(districtTextField)
        userDataStackView.addArrangedSubview(addLabel)
        userDataStackView.addArrangedSubview(addTextField)
        addSubview(diceLabel)
        addSubview(divider2View)
        addSubview(userDataStackView)

    }
    
    func setConstraint() {
        NSLayoutConstraint.activate([
            diceLabel.topAnchor.constraint(equalTo: topAnchor),
            diceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            diceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            divider2View.topAnchor.constraint(equalTo: diceLabel.bottomAnchor),
            divider2View.heightAnchor.constraint(equalToConstant: 10),
            divider2View.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            divider2View.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            userDataStackView.topAnchor.constraint(equalTo: divider2View.bottomAnchor),
            userDataStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            userDataStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            userDataStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
