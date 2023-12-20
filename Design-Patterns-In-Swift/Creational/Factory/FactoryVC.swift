/*
 Factory patterni nesne oluşturma işlemlerini sınıflardan ayırmak ve çoklu kullanım için bu işlemi tek bir merkezde toplamak
 amacı ile kullanılır.
 daha okunabilir ve genişletilebilir kod yazmayı sağlar
 */

import UIKit

class FactoryVC: UIViewController {
    private let factory = screenFactory()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            let vc = self.factory.createSecondScreen(backgroundColor: .systemPink)
            self.present(vc,animated: true)
        })
        // burada bir ekran oluşturduk
    }
    

}
