//
//  StudentTableViewController.swift
//  Student List
//
//  Created by Nicolas Garaycochea on 11/12/22.
//

import UIKit

class StudentTableViewController: UITableViewController {

    let studentController = StudentController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("loaded successfully")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.studentController.students.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentCell", for: indexPath)

        let student = self.studentController.students[indexPath.row]
        cell.textLabel?.text = student.firstName

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tappedIndexPath = tableView.indexPathForSelectedRow else {return}
        
        let student = self.studentController.students[tappedIndexPath.row]
        if let detailVC = segue.destination as? StudentDetailViewController {
            detailVC.student = student
        }
    }

}
