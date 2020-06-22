//
//  HomeTableViewCell.swift
//  SleepTimer
//
//  Created by Petrov Anton on 19.06.2020.
//  Copyright © 2020 APM. All rights reserved.
//

import UIKit

protocol KeyValueViewModelProtocol {
  var title: String { get }
  var value: String { get }
}

class HomeTableViewCell: UITableViewCell {
  
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var valueLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  func setViewModel(_ viewModel: KeyValueViewModelProtocol) {
    titleLabel.text = viewModel.title
    valueLabel.text = viewModel.value
  }
}
