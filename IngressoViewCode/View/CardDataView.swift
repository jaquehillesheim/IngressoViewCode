//
//  CardView.swift
//  IngressoViewCode
//
//  Created by Jaqueline Hillesheim on 20/10/22.
//

import Foundation
import UIKit

class CardDataView: UIView {
    
    private lazy var cardLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2. Cartão"
        label.font = UIFont(name: "Arial Negrito", size: 17)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var divider3View: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return view
    }()
    
    private lazy var cardImageView: UIImageView = {
        let card = UIImageView()
        card.translatesAutoresizingMaskIntoConstraints = false
        card.image = UIImage(named: "bandeiras_cartoes")
        return card
    }()
    
    private lazy var cardNumberTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Número de Cartão"
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
        return textField
    }()
    
    private lazy var cardDataStackView: UIStackView = {
        let horizontal = UIStackView()
        horizontal.translatesAutoresizingMaskIntoConstraints = false
        horizontal.axis = .horizontal
        horizontal.distribution = .fillEqually
        horizontal.backgroundColor = .green
        return horizontal
    }()
    
    private lazy var dueDateStackView: UIStackView = {
        let vertical = UIStackView()
        vertical.translatesAutoresizingMaskIntoConstraints = false
        vertical.axis = .vertical
        vertical.distribution = .fillEqually
        
        return vertical
    }()
    
    private lazy var dueDateLabel: UILabel = {
        let label = UILabel()
        label.text = "Vencimento"
        label.font = UIFont(name: "Avenir Heavy", size: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var monthYearStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .green
        return stackView
    }()
    
    private lazy var monthTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "MM"
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
        return textField
    }()
    
    private lazy var yearTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "AA"
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
        return textField
    }()
    
    private lazy var secyrityCodeStackView: UIStackView = {
        let vertical = UIStackView()
        vertical.translatesAutoresizingMaskIntoConstraints = false
        vertical.axis = .vertical
        vertical.distribution = .fillEqually
        return vertical
    }()
    
    private lazy var securityCodeLabel: UILabel = {
        let label = UILabel()
        label.text = "Cod. Seg."
        label.font = UIFont(name: "Avenir Heavy", size: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var digits3TextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "3 Dígitos"
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 4
        return textField
    }()
    
    private lazy var numberOfInstallmentsTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Número de parcelas"
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
       
       cardDataStackView.addArrangedSubview(dueDateStackView)
       dueDateStackView.addArrangedSubview(dueDateLabel)
       dueDateStackView.addArrangedSubview(monthYearStackView)
       monthYearStackView.addArrangedSubview(monthTextField)
       monthYearStackView.addArrangedSubview(yearTextField)
       cardDataStackView.addArrangedSubview(secyrityCodeStackView)
       secyrityCodeStackView.addArrangedSubview(securityCodeLabel)
       secyrityCodeStackView.addArrangedSubview(digits3TextField)
       
       
       addSubview(cardLabel)
       addSubview(divider3View)
       addSubview(cardImageView)
       addSubview(cardNumberTextField)
       addSubview(cardDataStackView)
       addSubview(numberOfInstallmentsTextField)
   }
    
    func setConstraint() {
        
        NSLayoutConstraint.activate([
            cardLabel.topAnchor.constraint(equalTo: bottomAnchor),
            cardLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            cardLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            divider3View.topAnchor.constraint(equalTo: cardLabel.bottomAnchor),
            divider3View.heightAnchor.constraint(equalToConstant: 10),
            divider3View.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            divider3View.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            cardImageView.topAnchor.constraint(equalTo: divider3View.bottomAnchor, constant: 10),
            cardImageView.heightAnchor.constraint(equalToConstant: 45),
            cardImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            cardImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            cardNumberTextField.topAnchor.constraint(equalTo: cardImageView.bottomAnchor),
            cardNumberTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            cardNumberTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),

            cardDataStackView.topAnchor.constraint(equalTo: cardNumberTextField.bottomAnchor),
            cardDataStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            cardDataStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            numberOfInstallmentsTextField.topAnchor.constraint(equalTo: cardDataStackView.bottomAnchor),
            numberOfInstallmentsTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            numberOfInstallmentsTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
}
