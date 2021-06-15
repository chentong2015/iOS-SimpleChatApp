//
//  ChatsTableViewController.swift
//  WeChatClone
//
//  Created by CHEN on 19/02/2018.
//  Copyright © 2018 CHEN. All rights reserved.
//

import UIKit


struct chatObject {
    var username: String
    var profileImageName: String
}

class ChatsTableViewController: UITableViewController {
    
    var friendsArray: [chatObject] = {
        let user1 = chatObject(username: "nacy", profileImageName: "friend1")
        let user2 = chatObject(username: "victor", profileImageName: "friend2")
        let user3 = chatObject(username: "nicola", profileImageName: "friend3")
        let user4 = chatObject(username: "neyy", profileImageName: "friend1")
        return [user1, user2, user3, user4]
    }()
    
    // create an searchController and add it to the HeadView
    let searchController: UISearchController = {
       let searchControl = UISearchController(searchResultsController: nil)
       return searchControl
    }()

    // Define the id of the cell to this TableView
    private var resueIdentifier = "cellChats"
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // register this viewController, use the TableViewCell  ==> create
        // Add and use the Table view cell in this table view
        self.tableView.register(ChatsTableViewCell.self, forCellReuseIdentifier: resueIdentifier)
        
        navigationItem.title = "We Chat"
        // Add the searchController to the tableHeadView
        tableView.tableHeaderView = searchController.searchBar
        // Add the "add button Bar" in the head
        let rightBarbuttonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handleRightBarButtonItem))
        navigationItem.setRightBarButton(rightBarbuttonItem, animated: true)
    }
    
    // This button handle the Action of the butto Bar head
    @objc func handleRightBarButtonItem(){
        // TO DO 
        
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.friendsArray.count
    }

    // controle the Table cell by TableViewCell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create cell of this tableView
        let cell = tableView.dequeueReusableCell(withIdentifier: resueIdentifier, for: indexPath) as! ChatsTableViewCell
        
        // add every ligne of the table by friendsArray : one by one
        let friend = self.friendsArray[indexPath.row]
        // add this friend to the cell of the table
        cell.profileImageView.image = UIImage(named: friend.profileImageName)
        cell.usernameLabel.text = friend.username
        
        return cell
    }
 
    // This fonction is to define the height of the line in the table
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 55
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
