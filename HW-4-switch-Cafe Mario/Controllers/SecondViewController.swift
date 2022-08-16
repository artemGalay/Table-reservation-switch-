//
//  SecondViewController.swift
//  HW-4-switch-Cafe Mario
//
//  Created by Артем Галай on 15.08.22.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {

    private let cafeMarioLabel: UILabel = {
        let label = UILabel()
        label.text = "Cafe Mario"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 36)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let nameLabel = UILabel(text: "Фио")
    private let nubmerOfGuestLabel = UILabel(text: "Количество гостей")
    private let numberTableLabel = UILabel(text: "Номер стола")
    private let bookingLabel = UILabel(text: "Бронировали стол?")
    private let prepayLabel = UILabel(text: "Предоплата?")
    private let vipRoomLabel = UILabel(text: "Vip комната?")

    private let nameTextField = UITextField(placeholder: "Введите ФИО")
    private let numberOfGuestTextField = UITextField(placeholder: "Введите кол-во гостей")
    private let numberTableTextField = UITextField(placeholder: "Введите номер стола")

    private let bookingSwitch = UISwitch(isOn: true)
    private let prepaySwitch = UISwitch(isOn: false)
    private let vipRoomSwitch = UISwitch(isOn: false)

    private lazy var accountButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = 5
        button.setTitle("Выставить счёт", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.setTitle("< Back", for: .normal)
        button.setTitleColor(UIColor.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(buttonTappedBack), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }

    private func buttonAction() {

        let alertController = UIAlertController(title: "Выставить чек?", message: "", preferredStyle: .alert)

        let calcelAction = UIAlertAction(title: "Cancel", style: .default)
        alertController.addAction(calcelAction)
        self.present(alertController, animated: true, completion: nil)

        let okAction = UIAlertAction(title: "Чек", style: .default) { (okAction) in
            let thirdViewController: ThirdViewController = ThirdViewController()
            thirdViewController.modalPresentationStyle = .fullScreen
            self.present(thirdViewController, animated: true, completion: nil)
        }
        alertController.addAction(okAction)

        }

    private func buttonBackTapped() {
        let firstViewController: ViewController = ViewController()
        firstViewController.modalPresentationStyle = .fullScreen
        self.present(firstViewController, animated: true, completion: nil)

    }

    @objc private func buttonTapped() {
        buttonAction()
    }

    @objc private func buttonTappedBack() {
        buttonBackTapped()
    }

    private func setupViews() {
        view.backgroundColor = .white
        modalPresentationStyle = .fullScreen
        view.addSubview(cafeMarioLabel)
        view.addSubview(nameLabel)
        view.addSubview(nubmerOfGuestLabel)
        view.addSubview(numberTableLabel)
        view.addSubview(bookingLabel)
        view.addSubview(prepayLabel)
        view.addSubview(vipRoomLabel)
        view.addSubview(nameTextField)
        view.addSubview(numberOfGuestTextField)
        view.addSubview(numberTableTextField)
        view.addSubview(bookingSwitch)
        view.addSubview(prepaySwitch)
        view.addSubview(vipRoomSwitch)
        view.addSubview(accountButton)
        view.addSubview(backButton)
    }

    private func setConstraints() {

        NSLayoutConstraint.activate([
            cafeMarioLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            cafeMarioLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: cafeMarioLabel.bottomAnchor, constant: 100),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35)
        ])

        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            nameTextField.widthAnchor.constraint(equalToConstant: 360),
            nameTextField.heightAnchor.constraint(equalToConstant: 35)
        ])

        NSLayoutConstraint.activate([
            nubmerOfGuestLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 30),
            nubmerOfGuestLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35)
        ])

        NSLayoutConstraint.activate([
            numberOfGuestTextField.topAnchor.constraint(equalTo: nubmerOfGuestLabel.bottomAnchor, constant: 10),
            numberOfGuestTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            numberOfGuestTextField.widthAnchor.constraint(equalToConstant: 360),
            numberOfGuestTextField.heightAnchor.constraint(equalToConstant: 35)
        ])


        NSLayoutConstraint.activate([
            numberTableLabel.topAnchor.constraint(equalTo: numberOfGuestTextField.bottomAnchor, constant: 30),
            numberTableLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35)
        ])

        NSLayoutConstraint.activate([
            numberTableTextField.topAnchor.constraint(equalTo: numberTableLabel.bottomAnchor, constant: 10),
            numberTableTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            numberTableTextField.widthAnchor.constraint(equalToConstant: 360),
            numberTableTextField.heightAnchor.constraint(equalToConstant: 35)
        ])

        NSLayoutConstraint.activate([
            bookingLabel.topAnchor.constraint(equalTo: numberTableTextField.bottomAnchor, constant: 70),
            bookingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35)
        ])

        NSLayoutConstraint.activate([
            bookingSwitch.centerYAnchor.constraint(equalTo: bookingLabel.centerYAnchor),
            bookingSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35)
        ])

        NSLayoutConstraint.activate([
            prepayLabel.topAnchor.constraint(equalTo: bookingLabel.bottomAnchor, constant: 40),
            prepayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35)
        ])

        NSLayoutConstraint.activate([
            prepaySwitch.centerYAnchor.constraint(equalTo: prepayLabel.centerYAnchor),
            prepaySwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35)
        ])

        NSLayoutConstraint.activate([
            vipRoomLabel.topAnchor.constraint(equalTo: prepayLabel.bottomAnchor, constant: 40),
            vipRoomLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35)
        ])

        NSLayoutConstraint.activate([
            vipRoomSwitch.centerYAnchor.constraint(equalTo: vipRoomLabel.centerYAnchor),
            vipRoomSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35)
        ])

        NSLayoutConstraint.activate([
            accountButton.topAnchor.constraint(equalTo: vipRoomLabel.bottomAnchor, constant: 20),
            accountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35),
            accountButton.widthAnchor.constraint(equalToConstant: 360),
            accountButton.heightAnchor.constraint(equalToConstant: 60)
        ])

        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        ])
}
}
