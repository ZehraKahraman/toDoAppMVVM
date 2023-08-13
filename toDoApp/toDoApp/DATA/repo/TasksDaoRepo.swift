//
//  TasksDaoRepo.swift
//  toDoApp
//
//  Created by zehra on 12.08.2023.
//

import Foundation
import RxSwift

class TasksDaoRepo{
    var tasksList = BehaviorSubject<[Tasks]>(value: [Tasks]())//trigger and listen
    
    func save(task_name:String,task_description:String, deadline: String) {
        print("Task is: \(task_name) , Description is: \(task_description) , Deadline is: \(deadline)")
    }
    
    func update(task_id: Int, task_name: String, task_description: String, deadline: String){
        print("Update the task : \(task_id) - \(task_name) - \(task_description) - \(deadline)")
    }
    
    func delete(task_id:Int){
        print("Delete the task : \(task_id)")
    }
    
    func search(searchedWord:String){
        print("Search the name : \(searchedWord)")
    }
    
    func loadTasks(){
        var list = [Tasks]()
        let t1 = Tasks(task_id: 1, task_name: "Do Homework!📚", task_description: "Do Math Homework before the exam! It will be most important part of it🤭", deadline: "12/08/2023")
        let t2 = Tasks(task_id: 2, task_name: "Go Shopping!🛍️", task_description: "Go Shopping to buy some new clothes for your graduation! It is time to shining like a star😇🥳", deadline: "19/08/2023" )
        let t3 = Tasks(task_id: 3, task_name: "Go Greengrocer!🥗", task_description: "Go Greengrocer to buy ingredients of salad! It is the 8.days of your diet💪🏻", deadline: "11/09/2023")
        let t4 = Tasks(task_id: 4, task_name: "Buy a Cake!🎂", task_description: "Buy a Cake for your friend's birthday! She loves strawberry so it's the hint for you😉🎂", deadline: "15/09/2023")
        let t5 = Tasks(task_id: 5, task_name: "Call Your Sister!🤙🏻", task_description: "Call your sister for decision of the holiday date!📞", deadline: "13/07/2023")
        list.append(t1)
        list.append(t2)
        list.append(t3)
        list.append(t4)
        list.append(t5)
        tasksList.onNext(list)//trigger
    }
}
