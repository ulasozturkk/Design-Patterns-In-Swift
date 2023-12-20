

import Foundation


struct Meal {
    var mainCourse: String
    var drink : String
    var dessert : String
}


protocol MealBuilder {
    func setmainCourse(_ mainCourse : String)
    func setDrink(_ drink: String)
    func setDessert(_ dessert : String)
    func getResult() -> Meal
}

// concrete builder: Builder arayüzünü uygulayan ve belirli bir ürün oluşturan sınıfa denir

class Chef: MealBuilder {
    private var meal = Meal(mainCourse: "", drink: "", dessert: "")
    
    func setmainCourse(_ mainCourse: String) {
        meal.mainCourse = mainCourse
    }
    
    func setDrink(_ drink: String) {
        meal.drink = drink
    }
    
    func setDessert(_ dessert: String) {
        meal.dessert = dessert
    }
    
    func getResult() -> Meal {
        return self.meal
    }
    
}

// director : Builderin kullanılmasını yöneten sınıf

class Waiter {
    
    private var builder: MealBuilder?
    
    func setBuilder(_ builder : MealBuilder){
        self.builder = builder
    }
    
    func prepareMeal(mainCourse : String, drink: String, dessert: String){
        builder?.setmainCourse(mainCourse)
        builder?.setDrink(drink)
        builder?.setDessert(dessert)
    }
    func getMeal() -> Meal?{
        return builder?.getResult()
    }
}

