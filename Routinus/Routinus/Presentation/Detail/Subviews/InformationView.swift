//
//  InformationView.swift
//  Routinus
//
//  Created by 백지현 on 2021/11/16.
//

import UIKit

final class InformationView: UIView {

    private lazy var infomationStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .vertical
        stackView.backgroundColor = .white
        stackView.distribution = .fill
        stackView.spacing = 5
        return stackView
    }()

    private lazy var titleStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillProportionally
        return stackView
    }()

    private lazy var categoryImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.image = UIImage(named: Challenge.Category.exercise.symbol)
        imageView.tintColor = .black
        return imageView
    }()

    private lazy var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "1만보 걷기"
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()

    private lazy var weekStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        return stackView
    }()

    private lazy var weekTitleLabel: UILabel = {
        var label = UILabel()
        label.text = "기간"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .darkGray
        return label
    }()

    private lazy var weekView: UIView = {
        var view = UIView()
        view.layer.cornerRadius = 5
        view.backgroundColor = UIColor(named: "SundayColor")
        return view
    }()

    private lazy var weekLabel: UILabel = {
        var label = UILabel()
        label.text = "4주"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .darkGray
        return label
    }()

    private lazy var endDateStackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        return stackView
    }()

    private lazy var endDateTitleLabel: UILabel = {
        var label = UILabel()
        label.text = "종료일"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .darkGray
        return label
    }()

    private lazy var endDateLabel: UILabel = {
        var label = UILabel()
        label.text = "2021년 11월 7일 일요일"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textAlignment = .right
        label.textColor = .darkGray
        return label
    }()

    private lazy var introductionTitleLabel: UILabel = {
        var label = UILabel()
        label.text = "소개"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .darkGray
        return label
    }()

    private lazy var introductionView: UIView = {
        var view = UIView()
        view.layer.cornerRadius = 5
        view.backgroundColor = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1)
        return view
    }()

    private lazy var introductionLabel: UILabel = {
        var label = UILabel()
        label.text = "꾸준히 할 수 있는 운동을 찾으시거나 다이어트 중인데 헬스장은 가기 싫으신분들 함께 1만보씩 걸어요~"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .darkGray
        return label
    }()

    private lazy var emptyView: UIView = {
        var view = UIView()
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureSubviews()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureSubviews()
    }

    convenience init() {
        self.init(frame: CGRect.zero)
    }
}

extension InformationView {
    private func configureSubviews() {
        addSubview(infomationStackView)
        infomationStackView.translatesAutoresizingMaskIntoConstraints = false
        infomationStackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        infomationStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        infomationStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        infomationStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true

        infomationStackView.addArrangedSubview(titleStackView)
        titleStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        titleStackView.topAnchor.constraint(equalTo: infomationStackView.topAnchor, constant: 5).isActive = true
        titleStackView.leadingAnchor.constraint(equalTo: infomationStackView.leadingAnchor, constant: 20).isActive = true
        titleStackView.trailingAnchor.constraint(equalTo: infomationStackView.trailingAnchor, constant: -20).isActive = true

        titleStackView.addArrangedSubview(categoryImageView)
        categoryImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        categoryImageView.heightAnchor.constraint(equalTo: categoryImageView.widthAnchor, multiplier: 1).isActive = true

        titleStackView.addArrangedSubview(titleLabel)
        titleLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true

        infomationStackView.addArrangedSubview(weekStackView)
        weekStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        weekStackView.leadingAnchor.constraint(equalTo: infomationStackView.leadingAnchor, constant: 20).isActive = true
        weekStackView.trailingAnchor.constraint(equalTo: infomationStackView.trailingAnchor, constant: -20).isActive = true

        weekStackView.addArrangedSubview(weekTitleLabel)
        weekTitleLabel.widthAnchor.constraint(equalToConstant: 40).isActive = true
        weekTitleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true

        weekView.addSubview(weekLabel)
        weekLabel.translatesAutoresizingMaskIntoConstraints = false
        weekLabel.centerXAnchor.constraint(equalTo: weekView.centerXAnchor).isActive = true
        weekLabel.centerYAnchor.constraint(equalTo: weekView.centerYAnchor).isActive = true

        weekStackView.addArrangedSubview(weekView)
        weekView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        weekView.heightAnchor.constraint(equalToConstant: 20).isActive = true

        infomationStackView.addArrangedSubview(endDateStackView)
        endDateStackView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        endDateStackView.leadingAnchor.constraint(equalTo: infomationStackView.leadingAnchor, constant: 20).isActive = true
        endDateStackView.trailingAnchor.constraint(equalTo: infomationStackView.trailingAnchor, constant: -20).isActive = true

        endDateStackView.addArrangedSubview(endDateTitleLabel)
        endDateTitleLabel.widthAnchor.constraint(equalToConstant: 40).isActive = true
        endDateTitleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true

        endDateStackView.addArrangedSubview(endDateLabel)
        endDateLabel.widthAnchor.constraint(equalToConstant: 170).isActive = true
        endDateLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        endDateLabel.trailingAnchor.constraint(equalTo: endDateStackView.trailingAnchor, constant: -20).isActive = true

        infomationStackView.addArrangedSubview(introductionTitleLabel)
        introductionTitleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        introductionTitleLabel.leadingAnchor.constraint(equalTo: infomationStackView.leadingAnchor, constant: 20).isActive = true

        infomationStackView.addArrangedSubview(introductionView)
        introductionView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        introductionView.leadingAnchor.constraint(equalTo: infomationStackView.leadingAnchor, constant: 20).isActive = true
        introductionView.trailingAnchor.constraint(equalTo: infomationStackView.trailingAnchor, constant: -20).isActive = true

        introductionView.addSubview(introductionLabel)
        introductionLabel.translatesAutoresizingMaskIntoConstraints = false
        introductionLabel.leadingAnchor.constraint(equalTo: introductionView.leadingAnchor, constant: 5).isActive = true
        introductionLabel.trailingAnchor.constraint(equalTo: introductionView.trailingAnchor, constant: -5).isActive = true
        introductionLabel.topAnchor.constraint(equalTo: introductionView.topAnchor, constant: 5).isActive = true
        introductionLabel.bottomAnchor.constraint(equalTo: introductionView.bottomAnchor, constant: -5).isActive = true

        infomationStackView.addArrangedSubview(emptyView)
        emptyView.heightAnchor.constraint(equalToConstant: 5).isActive = true
    }
}
