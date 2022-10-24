//
//  ConfirmationDataView.swift
//  IngressoViewCode
//
//  Created by Jaqueline Hillesheim on 20/10/22.
//

import Foundation
import UIKit

class ConfirmationDataView: UIView {
    
    
    private lazy var confirmationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "3. Confirmação"
        label.font = .boldSystemFont(ofSize: 17)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var divider3View: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return view
    }()
    
    private lazy var installmentValueView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private(set) lazy var installmentValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "12x R$ 16,58 (ou 199,00 á vista)"
        label.font = UIFont(name: "Avenir Heavy", size: 15)
        return label
    }()
    
    private(set) lazy var puchaseButton: UIButton = {
        let button = UIButton()
        button.setTitle("Confirma", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 47/255, green: 173/255, blue: 119/255, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
        addSubview(confirmationLabel)
        addSubview(divider3View)
        addSubview(installmentValueView)
        addSubview(puchaseButton)
        installmentValueView.addSubview(installmentValueLabel)
        
        
    }
    
    func setConstraint() {
        
        NSLayoutConstraint.activate([
            
            confirmationLabel.topAnchor.constraint(equalTo: topAnchor),
            confirmationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            confirmationLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            divider3View.topAnchor.constraint(equalTo: confirmationLabel.bottomAnchor),
            divider3View.heightAnchor.constraint(equalToConstant: 10),
            divider3View.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            divider3View.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            installmentValueView.topAnchor.constraint(equalTo: divider3View.bottomAnchor),
            installmentValueView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            installmentValueView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            installmentValueView.heightAnchor.constraint(equalToConstant: 50),
            
            installmentValueLabel.centerYAnchor.constraint(equalTo: installmentValueView.centerYAnchor),
            installmentValueLabel.leadingAnchor.constraint(equalTo: installmentValueView.leadingAnchor, constant: 16),
            installmentValueLabel.trailingAnchor.constraint(equalTo: installmentValueView.trailingAnchor, constant: -16),
            
            puchaseButton.topAnchor.constraint(equalTo: installmentValueView.bottomAnchor),
            puchaseButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            puchaseButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            puchaseButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            puchaseButton.heightAnchor.constraint(equalToConstant: 30)
            
            
        ])
    }
}
