//
//  BFUserTypeThirdCell.swift
//  BeeFun
//
//  Created by WengHengcong on 3/10/16.
//  Copyright © 2016 JungleSong. All rights reserved.
//

import UIKit

class BFUserTypeThirdCell: BFBaseCell {

    @IBOutlet weak var tagImagV: UIImageView!

    @IBOutlet weak var infoLabel: UILabel!

    @IBOutlet weak var disImgV: UIImageView!

    var cellDic: [String: Any]?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        duic_customView()
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func duic_customView() {
        super.p_customCellView()
        infoLabel.textColor = UIColor.iOS11Black
    }

    func duic_fillData(_ dic: [String:String]) {
        cellDic = dic

        tagImagV.image = UIImage(named: dic["img"]!)
        infoLabel.text = dic["desc"]!
        let disBool = NSString(string: dic["discolsure"]!).boolValue

        disImgV.isHidden = !disBool
    }

}
