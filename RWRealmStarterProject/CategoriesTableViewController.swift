//
//  CategoriesTableViewController.swift
//  RWRealmStarterProject
//
//  Created by Bill Kastanakis on 8/6/14.
//  Copyright (c) 2014 Bill Kastanakis. All rights reserved.
//

import UIKit
import Realm

class CategoriesTableViewController: UITableViewController {
  
  var categories = Category.allObjects()
  var selectedCategory: Category!


  // MARK: - View Lifecycle
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  // MARK: - Table view data source
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return Int(categories.count)
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("CategoryCell", forIndexPath: indexPath) as! UITableViewCell
    
    return cell
  }

  
  override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath {
    
    return indexPath
  }
    
  func populateDefaultCategories() {
    categories = Category.allObjects()
    
    if categories.count == 0 {
      let realm = RLMRealm.defaultRealm()
      realm.beginWriteTransaction()
      
      let defaultCategories = ["Birds", "Mammals", "Flora", "Reptiles", "Arachnids"]
      
      for category in defaultCategories {
        let newCategory = Category()
        newCategory.name = category
        realm.addObject(newCategory)
      }
      
      realm.commitWriteTransaction()
      categories = Category.allObjects()
    }
  }
  
}
