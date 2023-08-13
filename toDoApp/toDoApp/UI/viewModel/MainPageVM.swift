//
//  MainPageVM.swift
//  toDoApp
//
//  Created by zehra on 12.08.2023.
//

import Foundation
import RxSwift

class MainPageVM {
    var trepo = TasksDaoRepo()
    var tasksList = BehaviorSubject<[Tasks]>(value: [Tasks]())//trigger and listen
    
    init(){ // when created a object from Mainpage, init func run and connect the tasktlists
        tasksList = trepo.tasksList
    }

    
    func delete(task_id:Int){
        trepo.delete(task_id: task_id)
        loadTasks()
    }
    
    func search(searchedWord:String){
        trepo.search(searchedWord: searchedWord)
    }
    
    func loadTasks(){
        trepo.loadTasks()
    }
}
