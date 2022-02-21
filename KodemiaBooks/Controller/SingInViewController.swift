//
//  SingInViewController.swift
//  KodemiaBooks
//
//  Created by Marco Cruz Velázquez on 2/20/22.
//

import UIKit

class SingInViewController: UIViewController {
    
    private lazy var contentStackView: UIStackView = UIStackView()
    private lazy var buttonStackView: UIStackView = UIStackView()
    private lazy var userNameInputTextField: UITextField = UITextField()
    private lazy var userEmailInputTextField: UITextField = UITextField()
    private lazy var passwordInputTextField: UITextField =  UITextField()
    private lazy var confirmPasswordInputTextField: UITextField = UITextField()
    
    //MARK: UIButtons
    private lazy var confirmButton: UIButton = UIButton()
    private lazy var cancelButton: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    
    }
    func initUI(){
        view.backgroundColor = .systemBackground
        let textFieldArray: [UITextField] = [userNameInputTextField,
                                             userEmailInputTextField,
                                             passwordInputTextField,
                                             confirmPasswordInputTextField]
        //configurar stack view
        contentStackView.axis = .vertical
        contentStackView.spacing = Constants.padding
        contentStackView.alignment = .fill
        contentStackView.distribution = .fillEqually
     
        //definimos un closure donde se intera cada elemento del arreglo
        // y textFieldElement va asumido cada valor del arreglo
        
        textFieldArray.forEach { textFieldElement in
            contentStackView.addArrangedSubview(textFieldElement)
    }
        //Es lo equivalente a hacer esto
        //for textField
    
        // configurar constrraints del stack view
        self.view.addSubview(contentStackView)
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: Constants.padding),
            contentStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            contentStackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: Constants.widthProportion)
        ])

        textFieldArray.forEach { textFieldElement in
            textFieldElement.heightAnchor.constraint(equalToConstant: Constants.textFieldHeight).isActive = true
            textFieldElement.layer.borderWidth = 1
        }
        
        var buttonArray: [UIButton] = [confirmButton,
                                       cancelButton
        ]
        
        buttonStackView.axis = .vertical
        buttonStackView.spacing = Constants.padding
        buttonStackView.alignment = .fill
        buttonStackView.distribution = .fillEqually
        
        buttonArray.forEach { button in
            buttonStackView.addArrangedSubview(button)
            
        }
        view.addSubview(buttonStackView)
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -Constants.padding),
            buttonStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonStackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: Constants.widthProportion)
        ])
        
        buttonArray.forEach { button in
            button.heightAnchor.constraint(equalToConstant: Constants.buttonSize).isActive = true
            button.backgroundColor = .red
            
        }
        
        }
}
