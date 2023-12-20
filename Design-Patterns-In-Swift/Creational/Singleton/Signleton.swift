//
//  Signleton.swift
//  Design-Patterns-In-Swift
//
//  Created by macbook pro on 20.12.2023.
//


import Foundation

class MyDataModel: Codable {
    
}

class ApiService {
    // Singleton örneği
    static let shared = ApiService()

    private init() {
        // Örneğin oluşturulması kontrol ediliyor
    }

    // Generic API isteği atan fonksiyon
    func request<T: Decodable>(url: URL, completion: @escaping (Result<T, Error>) -> Void) {
        // API isteği yapılır ve sonuç dönülür
        // Bu örnekte, Decodable protokolü kullanılarak tip dönüşümü yapılır
        // Gerçek uygulamada URLSession veya başka bir networking kütüphanesi kullanılabilir
        // completion(Result.success(decodedData)) veya completion(Result.failure(error)) şeklinde çağrılır.
        // ...
    }
}

class MyViewModel {
    // Singleton örneği
    static let shared = MyViewModel()

    private init() {
        // Örneğin oluşturulması kontrol ediliyor
    }

    func fetchData(completion: @escaping (Result<MyDataModel, Error>) -> Void) {
        let apiUrl = "" as! URL //... Belirli bir URL
        ApiService.shared.request(url: apiUrl) { (result: Result<MyDataModel, Error>) in
            completion(result)
        }
    }
}

// Kullanım
/*
 MyViewModel.shared.fetchData { result in
     switch result {
     case .success(let data):
         // Başarılı durumda data kullanılır
         print(data)
     case .failure(let error):
         // Hata durumunda error kullanılır
         print(error)
     }
 }
 */

