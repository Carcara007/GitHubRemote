//
//  ViewController.swift
//  teste10
//
//  Created by Sofia on 16/03/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //chamar os componentes
    @IBOutlet weak var btnCadastrar: UIButton!
    @IBOutlet weak var inputSenha: UITextField!
    @IBOutlet weak var inputEmail: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configLayout()
        
        
        //serve para quando o usuário sair do focus
        self.inputEmail.delegate = self
        self.inputSenha.delegate = self
       
    }
    
    func configLayout() {
        btnCadastrar.layer.cornerRadius = 10.0
    }

    

    @IBAction func clicarEnviarBtn(_ sender: UIButton) {
        
        //pegar o texto no input ao clicar enviar
        let email: String? = self.inputEmail.text
        let senha: String? = self.inputSenha.text
    
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //Ao apertar enter no input Email, ele irá automatico para o input senha
        if textField == self.inputEmail {
            self.inputSenha.becomeFirstResponder()
        } else if textField == self.inputSenha {
            self.inputSenha.resignFirstResponder()
        }
        return true
    }
    
}

