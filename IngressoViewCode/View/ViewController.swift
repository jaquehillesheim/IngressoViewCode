//
//  ViewController.swift
//  IngressoViewCode
//
//  Created by Jaqueline Hillesheim on 19/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
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
        label.font = UIFont(name: "Arial Negrito", size: 17)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        label.textAlignment = .justified
        return label
    }()
    
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
        label.font = UIFont(name: "Avenir Heavy", size: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var addressLabel: UILabel = {
        let label = UILabel()
        label.text = "Endereço: Avenida Olavo Fontoura, 1209 - Santana"
        label.font = UIFont(name: "Avenir Heavy", size: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.text = "Preço: R$ 199,00 - Data 21/10/2017"
        label.font = UIFont(name: "Avenir Heavy", size: 14)
        label.textColor = UIColor(red: 57/255, green: 62/255, blue: 70/255, alpha: 1)
        return label
    }()
    
    private lazy var userDataView: UserDataView = {
        let view = UserDataView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var cardDataView: CardDataView = {
        let view = CardDataView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addSubview()
        setConstraint()
    }
    
    func addSubview() {
        contentView.addSubview(dividerView)
        contentView.addSubview(bannerImageView)
        contentView.addSubview(descriptionStackView)
        descriptionStackView.addArrangedSubview(placeLabel)
        descriptionStackView.addArrangedSubview(addressLabel)
        descriptionStackView.addArrangedSubview(priceLabel)
        contentView.addSubview(userDataView)
        contentView.addSubview(cardDataView)
        
        scrollView.addSubview(contentView)
        grayView.addSubview(aluraImageView)
        
        view.addSubview(yellowView)
        view.addSubview(grayView)
        view.addSubview(infoLabel)
        view.addSubview(scrollView)
    }
        func setConstraint() {
            
            NSLayoutConstraint.activate([
                yellowView.topAnchor.constraint(equalTo: view.topAnchor),
                yellowView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                yellowView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                yellowView.heightAnchor.constraint(equalToConstant: 40),
                
                grayView.topAnchor.constraint(equalTo: yellowView.bottomAnchor),
                grayView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                grayView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                grayView.heightAnchor.constraint(equalToConstant: 100),
                
                aluraImageView.heightAnchor.constraint(equalToConstant: 50),
                aluraImageView.widthAnchor.constraint(equalToConstant: 125),
                aluraImageView.centerXAnchor.constraint(equalTo: grayView.centerXAnchor),
                aluraImageView.centerYAnchor.constraint(equalTo: grayView.centerYAnchor),
                
                infoLabel.topAnchor.constraint(equalTo: grayView.bottomAnchor, constant: 10),
                infoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                scrollView.topAnchor.constraint(equalTo: infoLabel.bottomAnchor),
                scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                
                contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        
                dividerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
                dividerView.heightAnchor.constraint(equalToConstant: 10),
                dividerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                dividerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                
                bannerImageView.topAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: 10),
                bannerImageView.heightAnchor.constraint(equalToConstant: 130),
                bannerImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                bannerImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                
                descriptionStackView.topAnchor.constraint(equalTo: bannerImageView.bottomAnchor),
                descriptionStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                descriptionStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                
                userDataView.topAnchor.constraint(equalTo: descriptionStackView.bottomAnchor, constant: 5),
                userDataView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                userDataView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                
                cardDataView.topAnchor.constraint(equalTo: userDataView.bottomAnchor, constant: 5),
                cardDataView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                cardDataView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ])
        }
    }

