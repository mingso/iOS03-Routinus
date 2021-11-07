//
//  TodayRoutineView.swift
//  Routinus
//
//  Created by 유석환 on 2021/11/07.
//

import UIKit

import SnapKit

final class TodayRoutineView: UIView {
    private lazy var todayRoutineTitle: UILabel = {
        let label = UILabel()
        label.text = "오늘 루틴"
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()

    private lazy var addButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.tintColor = .black
//        button.addTarget(self, action: #selector(didTappedAddButton), for: .touchUpInside)
        return button
    }()

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.estimatedRowHeight = 100
        tableView.alwaysBounceVertical = false
        tableView.separatorStyle = .none
        tableView.register(RoutineCell.self, forCellReuseIdentifier: RoutineCell.identifier)
        return tableView
    }()
    
    weak var delegate: UITableViewDelegate? {
        didSet {
            tableView.delegate = delegate
        }
    }
    
    weak var dataSource: UITableViewDataSource? {
        didSet {
            tableView.dataSource = dataSource
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    func updateTableViewConstraints(cellCount: Int) {
        snp.updateConstraints { make in
            make.height.equalTo(25 + 60 * cellCount)
        }
        tableView.snp.updateConstraints { make in
            make.height.equalTo(60 * cellCount)
        }
        tableView.reloadData()
    }
}

//extension HomeViewController {
//    @objc func didTappedAddButton() {
//        self.viewModel?.didTappedShowChallengeButton()
//    }
//}

private extension TodayRoutineView {
    func configure() {
        configureSubviews()
    }
    
    func configureSubviews() {
        addSubview(todayRoutineTitle)
        todayRoutineTitle.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.top.equalToSuperview()
        }

        addSubview(addButton)
        addButton.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-20)
            make.top.equalToSuperview()
        }

        addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(todayRoutineTitle.snp.bottom).offset(10)
            make.width.equalToSuperview().offset(-40)
            make.centerX.equalToSuperview()
            make.height.equalTo(60)
        }
    }
}
