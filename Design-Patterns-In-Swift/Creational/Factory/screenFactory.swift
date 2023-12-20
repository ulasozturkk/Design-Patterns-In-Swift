
/*
 protokolünü tanımlayarak hangi fonlsiyonda hangi nesneyi döneceğimizi belirtiyoruz
 factory classımızda bunu conform ederek nesne oluşturma işlemini burada yapıyoruz böylece bu classı kullanacağımız classta
 kod kalabalığını engellemiş oluyoruz
 */

import Foundation
import UIKit

protocol screenFactoryProtocol {
    func createSecondScreen(backgroundColor: UIColor) -> UIViewController
}


final class screenFactory: screenFactoryProtocol {
    
    init (){}
    
    func createSecondScreen(backgroundColor: UIColor) -> UIViewController {
        let secondVC = UIViewController()
        secondVC.view.backgroundColor = backgroundColor
        return secondVC
    }
    
    
}
