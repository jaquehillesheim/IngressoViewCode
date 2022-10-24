//
//  ViewController.swift
//  IngressoViewCode
//
//  Created by Jaqueline Hillesheim on 19/10/22.
//

import UIKit


class ViewController: UIViewController, PickerViewMesSelecionado, PickerViewAnoSelecionado, PickerViewNumeroDeParcela, UITextFieldDelegate {
    
    var pickerViewMes = PickerViewMes()
    var pickerViewAno = PickerViewAno()
    var pickerViewParcela = PickerViewParcela()
    
    var valorDoIngresso:Double = 199.00
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 220/255, green: 230/255, blue: 240/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var headerDataView: HeaderDataView = {
        let view = HeaderDataView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var descriptionDataView: DescriptionDataView = {
        let view = DescriptionDataView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
    
    private lazy var confirmationDataView: ConfirmationDataView = {
        let view = ConfirmationDataView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 220/255, green: 230/255, blue: 240/255, alpha: 1)
        addSubview()
        setConstraint()
        pickerViewMes.delegate = self
        pickerViewAno.delegate = self
        pickerViewParcela.delegate = self
        cardDataView.monthTextField.delegate = self
        cardDataView.yearTextField.delegate = self
        cardDataView.numberOfInstallmentsTextField.delegate = self
        cardDataView.digits3TextField.delegate = self
        cardDataView.cardNumberTextField.delegate = self
        
        confirmationDataView.puchaseButton.addTarget(self, action: #selector(botaoComprar), for: .touchUpInside)
        userDataView.cepTextField.addTarget(self, action: #selector(textFieldCepAlterouValor), for: .editingChanged)
        cardDataView.digits3TextField.addTarget(self, action: #selector(textFieldCodigoDeSeguranca), for: .editingChanged)
    }
    
    func addSubview() {
        
        // Add na ContentView
        
        contentView.addSubview(descriptionDataView)
        contentView.addSubview(userDataView)
        
        // Add no ScrollView
        scrollView.addSubview(contentView)
        
        // Add na View
        view.addSubview(headerDataView)
        view.addSubview(scrollView)
        contentView.addSubview(userDataView)
        contentView.addSubview(cardDataView)
        contentView.addSubview(confirmationDataView)
        scrollView.addSubview(contentView)
        
    }
    func setConstraint() {
        
        NSLayoutConstraint.activate([
            
            headerDataView.topAnchor.constraint(equalTo: view.topAnchor),
            headerDataView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerDataView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            scrollView.topAnchor.constraint(equalTo: headerDataView.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
            descriptionDataView.topAnchor.constraint(equalTo: contentView.topAnchor),
            descriptionDataView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            descriptionDataView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            userDataView.topAnchor.constraint(equalTo: descriptionDataView.bottomAnchor, constant: 5),
            userDataView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            userDataView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            cardDataView.topAnchor.constraint(equalTo: userDataView.bottomAnchor, constant: 5),
            cardDataView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            cardDataView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            
            confirmationDataView.topAnchor.constraint(equalTo: cardDataView.bottomAnchor, constant: 5),
            confirmationDataView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            confirmationDataView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            confirmationDataView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            
        ])
    }
    
    @objc func textFieldMesEmFoco() {
        let pickerView = UIPickerView()
        pickerView.delegate = pickerViewMes
        pickerView.dataSource = pickerViewMes
        cardDataView.monthTextField.inputView = pickerView
    }
    
    @objc func textFieldAnoEmFoco() {
        let pickerView = UIPickerView()
        pickerView.delegate = pickerViewAno
        pickerView.dataSource = pickerViewAno
        cardDataView.yearTextField.inputView = pickerView
    }
    @objc func textFieldParcela() {
        let pickerView = UIPickerView()
        pickerView.delegate = pickerViewParcela
        pickerView.dataSource = pickerViewParcela
        cardDataView.numberOfInstallmentsTextField.inputView = pickerView
    }
    
    @objc func botaoComprar() {
        let cpfValido = ValidaFormulario().verificaCpf(cpf: userDataView.cpfTextField.text!)
        let emailValido = ValidaFormulario().verifivaEmail(email: userDataView.eMailTextField.text!)
        let numeroDoCartao = ValidaFormulario().numeroDoCartao(cartao: cardDataView.cardNumberTextField.text!)
        
        
        let textFields = [userDataView.nameTextField, userDataView.eMailTextField, userDataView.cpfTextField, userDataView.cepTextField, userDataView.districtTextField, userDataView.addTextField, cardDataView.cardNumberTextField, cardDataView.monthTextField, cardDataView.yearTextField, cardDataView.digits3TextField, cardDataView.numberOfInstallmentsTextField]
        let textFieldsEstaoValidos = ValidaFormulario().verificaTextFieldsPreenchidos(textFields: textFields)
        if  textFieldsEstaoValidos && cpfValido && emailValido{
            present(ValidaFormulario().exibeNotificacaoDeCompraRealizada(), animated: true, completion: nil)
        }
        else {
            present(ValidaFormulario().exibeNotificacaoDePreenchimentoDosTextFields(), animated: true, completion: nil )
        }
    }
    
    @objc func textFieldCepAlterouValor() {
        LocalizacaoConsultaAPI().consultaViaCepAPI(cep: userDataView.cepTextField.text!) { Localizacao in
            self.userDataView.addTextField.text = Localizacao.logradouro
            self.userDataView.districtTextField.text = Localizacao.bairro
        } falha: { error in
            print(error)
        }
    }
    @objc func textFieldCodigoDeSeguranca() {
        guard let cvvString = cardDataView.digits3TextField.text else { return }
       
        if cvvString.count > 3 {
            let codigo = cvvString.suffix(3)
            cardDataView.digits3TextField.text = String(codigo)
        } else {
            cardDataView.digits3TextField.text = cvvString
        }
        
    }

    // MARK: PickerViwDelegate
    
    func mesSelecionado(mes: String) {
        cardDataView.monthTextField.text = mes
    }
    
    func anoSelecionado(ano: String) {
        cardDataView.yearTextField.text = ano
    }
    
    func pickerViewParcelaSelecionada(parcela: String) {
        cardDataView.numberOfInstallmentsTextField.text = "\(parcela) x"
        
        let calculoDaParcela = valorDoIngresso/Double(parcela)!
        let formatNumber = String(format: "%.2f", calculoDaParcela)
        self.confirmationDataView.installmentValueLabel.text = "\(parcela)x R$\(formatNumber) (ou R$ 199,00 á vista)"
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == cardDataView.monthTextField {
            textFieldMesEmFoco()
        } else if textField == cardDataView.yearTextField {
            textFieldAnoEmFoco()
        } else if textField == cardDataView.numberOfInstallmentsTextField {
            textFieldParcela()
        }
    }
}
