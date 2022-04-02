//
//  OrderViewController.swift
//  UnitedMusicApp
//
//  Created by Alexandr Barabash on 01.04.2022.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var numberPhoneTextField: UITextField!
    @IBOutlet var orderButton: UIButton!
    
    // MARK: = Properties
    var info = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoLabel.layer.cornerRadius = 10
        infoLabel.layer.masksToBounds = true
        orderButton.layer.cornerRadius = 10
        infoLabel.text = "Для заказа просим заполнить информацию: "
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else { return }
        infoVC.personName = nameTextField.text
        infoVC.personEmail = emailTextField.text
        infoVC.personPhone = numberPhoneTextField.text
    }
    
    // MARK: IBActions
    @IBAction func submitForOrder() {
        if nameTextField.text == nil || nameTextField.text == "" {
            showAlert(title: "", message: "Введите Вашу Фамилию и Имя", textField: nameTextField)
            return
        } else if emailTextField.text == nil || emailTextField.text == "" {
            showAlert(title: "", message: "Введите Ваш e-mail", textField: emailTextField)
            return
        } else if numberPhoneTextField.text == nil || numberPhoneTextField.text == "" {
            showAlert(title: "", message: "Введите Ваш номер телефона", textField: numberPhoneTextField)
            return
        }
        performSegue(withIdentifier: "openInfoVC", sender: nil)
    }
}

// MARK: - Alert Controller
extension OrderViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

// MARK: - UITextFieldDelegate
extension OrderViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        let keyboardToolbar = UIToolbar()
        keyboardToolbar.sizeToFit()
        textField.inputAccessoryView = keyboardToolbar
        
        let doneButton = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: self,
            action: #selector(didTapDone)
        )
        
        let flexBarButton = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil
        )
        
        keyboardToolbar.items = [flexBarButton, doneButton]
    }
    
    @objc private func didTapDone() {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            emailTextField.becomeFirstResponder()
        } else if textField == emailTextField {
            numberPhoneTextField.becomeFirstResponder()
        } else {
            submitForOrder()
        }
        return true
    }
}
