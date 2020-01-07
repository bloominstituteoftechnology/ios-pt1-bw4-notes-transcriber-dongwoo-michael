//
//  NoteTableViewCell.swift
//  NotesTranscriber
//
//  Created by Dongwoo Pae on 1/7/20.
//  Copyright © 2020 Dongwoo Pae. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {

    @IBOutlet weak var noteLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    var note: Note? {
        didSet {
            self.updateViews()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func updateViews() {
        
        guard let note = self.note else {return}
        
        self.noteLabel.text = note.noteText
        //Date Formatter
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy HH:mm:ss"
        let dateFromNote = note.timestamp
        let createdDate = dateFormatter.string(from: dateFromNote!)
        dateFormatter.timeZone = NSTimeZone.local
        self.dateLabel.text = createdDate
    }
    
    
    @IBAction func shareButtonTapped(_ sender: Any) {
        
    }
}