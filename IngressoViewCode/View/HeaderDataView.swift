//
//  HeaderDataView.swift
//  IngressoViewCode
//
//  Created by Jaqueline Hillesheim on 20/10/22.
//

import Foundation
import UIKit

class HeaderDataView: UIView {
    
    private lazy var yellowView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    
    private lazy var grayView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
    }()
    
    private lazy var aluraImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "logo_alura")
        return imageView
    }()
    
    private lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Informações da sua compra."
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        label.textAlignment = .justified
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
        addSubview(yellowView)
        addSubview(grayView)
        addSubview(infoLabel)
        grayView.addSubview(aluraImageView)
    }
    
    func setConstraint() {
        
        NSLayoutConstraint.activate([
            yellowView.topAnchor.constraint(equalTo: topAnchor),
            yellowView.leadingAnchor.constraint(equalTo: leadingAnchor),
            yellowView.trailingAnchor.constraint(equalTo: trailingAnchor),
            yellowView.heightAnchor.constraint(equalToConstant: 40),
            
            grayView.topAnchor.constraint(equalTo: yellowView.bottomAnchor),
            grayView.leadingAnchor.constraint(equalTo: leadingAnchor),
            grayView.trailingAnchor.constraint(equalTo: trailingAnchor),
            grayView.heightAnchor.constraint(equalToConstant: 100),
            
            aluraImageView.heightAnchor.constraint(equalToConstant: 50),
            aluraImageView.widthAnchor.constraint(equalToConstant: 125),
            aluraImageView.centerXAnchor.constraint(equalTo: grayView.centerXAnchor),
            aluraImageView.centerYAnchor.constraint(equalTo: grayView.centerYAnchor),
            
            infoLabel.topAnchor.constraint(equalTo: grayView.bottomAnchor, constant: 10),
            infoLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            infoLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
