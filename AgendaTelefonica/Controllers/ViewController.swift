//
//  ViewController.swift
//  AgendaTelefonica
//
//  Created by João Felipe Maciel de Brito Barros on 17/07/18.
//  Copyright © 2018 João Felipe Maciel de Brito Barros. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - UI Elements
    @IBOutlet weak var AgendaTelefonicaImage: UIImageView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var senha: UITextField!
    @IBOutlet weak var entrarButton: UIButton!
    @IBOutlet weak var cadastrarButton: UIButton!
    
    //MARK:
    var nome: String!
    var service: LoginService!
    
    //MARK: - Life
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.AgendaTelefonicaImage.image = Asset.agendaTenefonica.image
        
        self.email.placeholder = L10n.Login.entrar
        self.senha.placeholder = L10n.Login.senha
        
        self.entrarButton.setTitle(L10n.Login.entrar, for: .normal)
        self.entrarButton.setTitleColor(.white, for: .normal)
        self.entrarButton.layer.cornerRadius = self.entrarButton.bounds.height / 2
        self.entrarButton.backgroundColor = .blue
        
        self.cadastrarButton.setTitle(L10n.Login.cadastrar, for: .normal)
        self.cadastrarButton.setTitleColor(.white, for: .normal)
        self.cadastrarButton.layer.cornerRadius = self.cadastrarButton.bounds.height / 2
        self.cadastrarButton.backgroundColor = .blue
        
        self.service = LoginService()
    }
    
    //MARK: - Actions
    @IBAction func logar(_ sender: UIButton) {
        
        if let email = self.email.text, let senha = self.senha.text{
            
            self.service.postLogin(email: email, senha: senha)
        }
    }
}

