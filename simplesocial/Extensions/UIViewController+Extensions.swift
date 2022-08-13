//
//  UIViewController+Extensions.swift
//  simplesocial
//
//  Created by Samet Macit on 13.08.2022.
//

import UIKit

extension UIViewController {
    
    func showAlert(with title:String?, message:String?,
                   style: UIAlertController.Style = .alert,
                   actionText: String = "Ok") {
       let alert = UIAlertController(title: title, message: message, preferredStyle: style)
       alert.addAction(UIAlertAction(title: actionText, style: .default, handler: nil))
       self.present(alert, animated: true, completion: nil)
   }

}
