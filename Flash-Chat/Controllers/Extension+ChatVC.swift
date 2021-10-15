//
//  Extension+ChatVC.swift
//  Flash-Chat
//
//  Created by Onopriienko.Sergii on 11.09.2021.
//

import UIKit

extension ChatViewController: UITableViewDelegate {
    
}

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: K.cellInedtifier,
                                                 for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        cell.myLable.text = "\(indexPath.row)"
        
        return cell
    }
    
    
}
