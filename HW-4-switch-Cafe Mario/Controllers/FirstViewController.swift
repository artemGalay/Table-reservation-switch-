//
//  ViewController.swift
//  HW-4-switch-Cafe Mario
//
//  Created by Артем Галай on 14.08.22.
//

import UIKit

class ViewController: UIViewController {

    private let singInLabel: UILabel = {
        let label = UILabel()
        label.text = "Sing In"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 36)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let emailLabel = UILabel(text: "Email")

    private let passwordLabel = UILabel(text: "Password")

    private let emailText = UITextField(placeholder: "Введите email")

    private let passwordText = UITextField(placeholder: "Введите пароль")

    private lazy var enterButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = 5
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()

    }

    private func buttonAction() {
        if emailText.text!.isEmpty || passwordText.text!.isEmpty {
            let alertController = UIAlertController(title: "Ошибка", message: "Введите логин и пароль", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
        } else {
            let secondViewController: SecondViewController = SecondViewController()
            secondViewController.modalPresentationStyle = .fullScreen
            self.present(secondViewController, animated: true, completion: nil)

        }
        }

    @objc private func buttonTapped() {
        buttonAction()
    }

    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(singInLabel)
        view.addSubview(emailText)
        view.addSubview(emailLabel)
        view.addSubview(passwordLabel)
        view.addSubview(passwordText)
        view.addSubview(enterButton)
    }

    private func setConstraints() {

        NSLayoutConstraint.activate([
            singInLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 350),
            singInLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35)
        ])

        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: singInLabel.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35)
        ])

        NSLayoutConstraint.activate([
            emailText.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 10),
            emailText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            emailText.widthAnchor.constraint(equalToConstant: 360),
            emailText.heightAnchor.constraint(equalToConstant: 35)
        ])

        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: emailText.bottomAnchor, constant: 10),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35)
        ])

        NSLayoutConstraint.activate([
            passwordText.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            passwordText.widthAnchor.constraint(equalToConstant: 360),
            passwordText.heightAnchor.constraint(equalToConstant: 35)
        ])

        NSLayoutConstraint.activate([
            enterButton.topAnchor.constraint(equalTo: passwordText.bottomAnchor, constant: 20),
            enterButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            enterButton.widthAnchor.constraint(equalToConstant: 360),
            enterButton.heightAnchor.constraint(equalToConstant:60)
        ])
}
}
