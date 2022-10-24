//
//  DescripionDataView.swift
//  IngressoViewCode
//
//  Created by Jaqueline Hillesheim on 20/10/22.
//

import Foundation
import UIKit

class DescriptionDataView: UIView {
    
    private lazy var dividerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return view
    }()
    
    private lazy var bannerImageView: UIImageView = {
        let banner = UIImageView()
        banner.translatesAutoresizingMaskIntoConstraints = false
        banner.image = UIImage(named: "banner")
        return banner
    }()
    
    private lazy var descriptionStackView: UIStackView = {
        let vertical = UIStackView()
        vertical.translatesAutoresizingMaskIntoConstraints = false
        vertical.axis = .vertical
        return vertical
    }()
    
    private lazy var placeLabel: UILabel = {
        let label = UILabel()
        label.text = "Local: Sambódromo do Anhembi"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var addressLabel: UILabel = {
        let label = UILabel()
        label.text = "Endereço: Avenida Olavo Fontoura, 1209 - Santana"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.text = "Preço: R$ 199,00 - Data 21/10/2017"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
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
        addSubview(dividerView)
        addSubview(bannerImageView)
        addSubview(descriptionStackView)
        descriptionStackView.addArrangedSubview(placeLabel)
        descriptionStackView.addArrangedSubview(addressLabel)
        descriptionStackView.addArrangedSubview(priceLabel)
    }
    func setConstraint() {
        
        NSLayoutConstraint.activate([
            dividerView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            dividerView.heightAnchor.constraint(equalToConstant: 10),
            dividerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            dividerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            bannerImageView.topAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: 10),
            bannerImageView.heightAnchor.constraint(equalToConstant: 130),
            bannerImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            bannerImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            descriptionStackView.topAnchor.constraint(equalTo: bannerImageView.bottomAnchor),
            descriptionStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            descriptionStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            descriptionStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}



