//
//  ViewController.swift
//  KodemiaBooks
//
//  Created by Marco Cruz Velázquez on 2/20/22.
//

import UIKit

class LoginViewController: UIViewController {

    //Una variable lazy, se crea en el momento que
    //la invocamos por primera vez
    private lazy var userInputTextField : UITextField =  UITextField()
    private lazy var passwordInputTextField : UITextField = UITextField()
    private lazy var loginButton: UIButton = UIButton()
    private lazy var singInButton: UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    //crar la vista
   private func initUI(){ // se hizo privada porque la funcion sera usada solo por este controlView
       self.view.backgroundColor = .systemBackground
       
       self.view.addSubview(userInputTextField)
       userInputTextField.translatesAutoresizingMaskIntoConstraints = false
       userInputTextField.placeholder = "user"
       userInputTextField.layer.borderWidth = 1
       //agregar constraints del user input
       NSLayoutConstraint.activate([userInputTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100), userInputTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor), userInputTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
       ])
       
        // configurando password texfielld
       self.view.addSubview(passwordInputTextField)
       passwordInputTextField.translatesAutoresizingMaskIntoConstraints = false
       passwordInputTextField.placeholder = "password" // Contants.passwordString
       passwordInputTextField.layer.borderWidth = 1
       NSLayoutConstraint.activate([passwordInputTextField.topAnchor.constraint(equalTo: userInputTextField.bottomAnchor, constant: 30),
                                    passwordInputTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                    passwordInputTextField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
                                   ])
       
       //configurando boton de sing in
       self.view.addSubview(singInButton)
       self.singInButton.translatesAutoresizingMaskIntoConstraints = false
       singInButton.setTitle(Constants.singIn, for: .normal)
       singInButton.backgroundColor = .blue
       NSLayoutConstraint.activate([
        singInButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
        singInButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        singInButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
        singInButton.heightAnchor.constraint(equalToConstant: 50)
       ])
        
       // configurando boton log in
       self.view.addSubview(loginButton)
       self.loginButton.translatesAutoresizingMaskIntoConstraints = false
       self.loginButton.setTitle(Constants.logIn, for: .normal)
       self.loginButton.backgroundColor = Constants.buttonBackgroundColor
       NSLayoutConstraint.activate([
        loginButton.bottomAnchor.constraint(equalTo: singInButton.topAnchor, constant: -30),
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
        loginButton.heightAnchor.constraint(equalToConstant: 50)
       ])
       
       singInButton.addTarget(self, action: #selector(onSignInButtonTap), for: .touchUpInside)
       
    }
    
    @objc func onSignInButtonTap(){
        goToSignIn()
    }
    
    func goToSignIn(){
        let signInViewController: SingInViewController = SingInViewController()
        self.present(signInViewController, animated: true, completion: nil)
    }

}

