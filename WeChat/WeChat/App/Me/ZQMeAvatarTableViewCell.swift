//
//  ZQMeAvatarTableViewCell.swift
//  WeChat
//
//  Created by zhangqiaoqiao on 2019/10/28.
//  Copyright © 2019 张乔. All rights reserved.
//

import UIKit

class ZQMeAvatarTableViewCell: UITableViewCell {
    
    var avatar: UIImageView?
    var nameLabel: UILabel?
    var accountLabel: UILabel?
    var qrCodeImageView: UIImageView?
    var iconPositionButton: UIButton?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.createCellUI()
    }
    
    func createCellUI() {
        
        avatar = UIImageView.init()
        avatar?.image = UIImage.init(named: "")
        self.contentView.addSubview(avatar!)
        
        nameLabel = UILabel.init()
        nameLabel?.textColor = .black
        nameLabel?.textAlignment = .left
        nameLabel?.font = UIFont.systemFont(ofSize: 18)
        nameLabel?.text = "奔流河"
        self.contentView.addSubview(nameLabel!)
        
        accountLabel = UILabel.init()
        accountLabel?.textColor = .lightGray
        accountLabel?.textAlignment = .left
        accountLabel?.font = UIFont.systemFont(ofSize: 13)
        accountLabel?.text = "奔流河：ayzhangqiao"
        self.contentView.addSubview(accountLabel!)
        
        qrCodeImageView = UIImageView.init()
        qrCodeImageView?.image = UIImage.init(named: "")
        self.contentView.addSubview(qrCodeImageView!)
        
        iconPositionButton = UIButton.init(type: .custom)
        iconPositionButton?.setImage(UIImage.init(named: ""), for: .normal)
        iconPositionButton?.setImage(UIImage.init(named: ""), for: .selected)
        iconPositionButton?.addTarget(self, action: #selector(iconPositionBtnClick), for: .touchUpInside)
        self.contentView.addSubview(iconPositionButton!)
        
    }
    
    @objc func iconPositionBtnClick() {
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
