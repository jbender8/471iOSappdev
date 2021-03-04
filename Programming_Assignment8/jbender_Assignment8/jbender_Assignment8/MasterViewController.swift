//
//  MasterViewController.swift
//  jbender_Assignment8
//
//  Created by Jessica Bender on 3/14/20.
//  Copyright © 2020 Jessica Bender. All rights reserved.
//


import UIKit

class Books {
    var Title: String
    var Author: String
    var Description: String
    init(Title: String, Author: String, Description: String) {
        self.Title = Title
        self.Author = Author
        self.Description = Description
    }
}

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var objects = [Any]()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        insertNewObject()
        if let split = splitViewController {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    @objc
    func insertNewObject() {
        
        let book1 = Books(Title: "Scythe", Author: "Neal Shusterman ", Description: "A world with no hunger, no disease, no war, no misery. Humanity has conquered all those things, and has even conquered death. Now scythes are the only ones who can end life—and they are commanded to do so, in order to keep the size of the population under control. \n Citra and Rowan are chosen to apprentice to a scythe—a role that neither wants. These teens must master the “art” of taking life, knowing that the consequence of failure could mean losing their own. ")
        let book2 = Books(Title: "The Kiss of Deception", Author: "Mary E. Pearson", Description: "In a society steeped in tradition, Princess Lia’s life follows a preordained course. As First Daughter, she is expected to have the revered gift of sight—but she doesn’t—and she knows her parents are perpetrating a sham when they arrange her marriage to secure an alliance with a neighboring kingdom—to a prince she has never met. \n On the morning of her wedding, Lia flees to a distant village. She settles into a new life, hopeful when two mysterious and handsome strangers arrive—and unaware that one is the jilted prince and the other an assassin sent to kill her. Deception abounds, and Lia finds herself on the brink of unlocking perilous secrets—even as she finds herself falling in love.")
        let book3 = Books(Title: "Me Before You", Author: "Jojo Moyes", Description: "They had nothing in common until love gave them everything to lose . . . \n Louisa Clark is an ordinary girl living an exceedingly ordinary life—steady boyfriend, close family—who has barely been farther afield than their tiny village. She takes a badly needed job working for ex–Master of the Universe Will Traynor, who is wheelchair bound after an accident. Will has always lived a huge life—big deals, extreme sports, worldwide travel—and now he’s pretty sure he cannot live the way he is. \n Will is acerbic, moody, bossy—but Lou refuses to treat him with kid gloves, and soon his happiness means more to her than she expected. When she learns that Will has shocking plans of his own, she sets out to show him that life is still worth living. \n A Love Story for this generation and perfect for fans of John Green’s The Fault in Our Stars, Me Before You brings to life two people who couldn’t have less in common—a heartbreakingly romantic novel that asks, What do you do when making the person you love happy also means breaking your own heart? ")
        let book4 = Books(Title: "Ready Player One", Author: "Ernest Cline", Description: "IN THE YEAR 2044, reality is an ugly place. The only time teenage Wade Watts really feels alive is when he's jacked into the virtual utopia known as the OASIS. Wade's devoted his life to studying the puzzles hidden within this world's digital confines, puzzles that are based on their creator's obsession with the pop culture of decades past and that promise massive power and fortune to whoever can unlock them. \n But when Wade stumbles upon the first clue, he finds himself beset by players willing to kill to take this ultimate prize. The race is on, and if Wade's going to survive, he'll have to win—and confront the real world he's always been so desperate to escape.")
        let book5 = Books(Title: "The Giver", Author: "Lois Lowry", Description: "Twelve-year-old Jonas lives in a seemingly ideal world. Not until he is given his life assignment as the Receiver does he begin to understand the dark secrets behind this fragile community.")
        let book6 = Books(Title: "The Isle of the Lost", Author: "Melissa de la Cruz", Description: "Twenty years ago, all the evil villains were banished from the kingdom of Auradon and made to live in virtual imprisonment on the Isle of the Lost. The island is surrounded by a magical force field that keeps the villains and their descendants safely locked up and away from the mainland. Life on the island is dark and dreary. It is a dirty, decrepit place that's been left to rot and forgotten by the world. \n But hidden in the mysterious Forbidden Fortress is a dragon's eye: the key to true darkness and the villains' only hope of escape. Only the cleverest, evilest, nastiest little villain can find it...who will it be? \n Maleficent, Mistress of the Dark: As the self-proclaimed ruler of the isle, Maleficent has no tolerance for anything less than pure evil. She has little time for her subjects, who have still not mastered life without magic. Her only concern is getting off the Isle of the Lost. \n Mal: At sixteen, Maleficent's daughter is the most talented student at Dragon Hall, best known for her evil schemes. And when she hears about the dragon's eye, Mal thinks this could be her chance to prove herself as the cruelest of them all. \n   Evie: Having been castle-schooled for years, Evil Queen's daughter, Evie, doesn't know the ins and outs of Dragon Hall. But she's a quick study, especially after she falls for one too many of Mal's little tricks. \n Jay: As the son of Jafar, Jay is a boy of many talents: stealing and lying to name a few. Jay and Mal have been frenemies forever and he's not about to miss out on the hunt for the dragon's eye. \n Carlos: Cruella de Vil's son may not be bravest, but he's certainly clever. Carlos's inventions may be the missing piece in locating the dragon's eye and ending the banishment for good. \n Mal soon learns from her mother that the dragon's eye is cursed and whoever retrieves it will be knocked into a deep sleep for a thousand years. But Mal has a plan to capture it. She'll just need a little help from her 'friends.' In their quest for the dragon's eye, these kids begin to realize that just because you come from an evil family tree, being good ain't so bad. ")
        let book7 = Books(Title: "Nerve", Author: "Jeanne Ryan", Description: "Vee doesn't know if she has the guts to play NERVE, an anonymous online game of dares. But whoever's behind the game knows exactly what she wants, enticing her with lustworthy prizes and a sizzling-hot partner. With Ian on her team, it's easy to agree to another dare. And another. And another. At first it's thrilling as the Watchers cheer them on to more dangerous challenges. But suddenly the game turns deadly. Will Vee and Ian risk their lives for the Grand Prize dare, or will they lose NERVE?")
        let book8 = Books(Title: "I Hunt Killers", Author: "Barry Lyga", Description: "Jasper 'Jazz' Dent is a likable teenager. A charmer, one might say. \n But he's also the son of the world's most infamous serial killer, and for Dear Old Dad, Take Your Son to Work Day was year-round. Jazz has witnessed crime scenes the way cops wish they could—from the criminal's point of view. \n And now bodies are piling up in Lobo's Nod. \n In an effort to clear his name, Jazz joins the police in a hunt for a new serial killer. But Jazz has a secret—could he be more like his father than anyone knows?")
        let book9 = Books(Title: "Truthwitch", Author: "Susan Dennard ", Description: "Young witches Safiya and Iseult have a habit of finding trouble. After clashing with a powerful Guildmaster and his ruthless Bloodwitch bodyguard, the friends are forced to flee their home. \n Safi must avoid capture at all costs as she's a rare Truthwitch, able to discern truth from lies. Many would kill for her magic, so Safi must keep it hidden - lest she be used in the struggle between empires. And Iseult's true powers are hidden even from herself. \n In a chance encounter at Court, Safi meets Prince Merik and makes him a reluctant ally. However, his help may not slow down the Bloodwitch now hot on the girls' heels. All Safi and Iseult want is their freedom, but danger lies ahead. With war coming, treaties breaking and a magical contagion sweeping the land, the friends will have to fight emperors and mercenaries alike. For some will stop at nothing to get their hands on a Truthwitch.")
        let book10 = Books(Title: "Every Day", Author: "David Levithan", Description: "Every day a different body. Every day a different life. Every day in love with the same girl. \n There’s never any warning about where it will be or who it will be. A has made peace with that, even established guidelines by which to live: Never get too attached. Avoid being noticed. Do not interfere. \n It’s all fine until the morning that A wakes up in the body of Justin and meets Justin’s girlfriend, Rhiannon. From that moment, the rules by which A has been living no longer apply. Because finally A has found someone A wants to be with—day in, day out, day after day. ")
        let book11 = Books(Title: "Beautiful Creatures", Author: "Kami Garcia & Margaret Stohl", Description: "Lena Duchannes is unlike anyone the small Southern town of Gatlin has ever seen, and she's struggling to conceal her power, and a curse that has haunted her family for generations. But even within the overgrown gardens, murky swamps and crumbling graveyards of the forgotten South, a secret cannot stay hidden forever. \n Ethan Wate, who has been counting the months until he can escape from Gatlin, is haunted by dreams of a beautiful girl he has never met. When Lena moves into the town's oldest and most infamous plantation, Ethan is inexplicably drawn to her and determined to uncover the connection between them. \n In a town with no surprises, one secret could change everything.")
        let book12 = Books(Title: "The Maze Runner", Author: "James Dashner ", Description: "If you ain’t scared, you ain’t human. \n When Thomas wakes up in the lift, the only thing he can remember is his name. He’s surrounded by strangers—boys whose memories are also gone. \n Nice to meet ya, shank. Welcome to the Glade. \n Outside the towering stone walls that surround the Glade is a limitless, ever-changing maze. It’s the only way out—and no one’s ever made it through alive. \n Everything is going to change. \n Then a girl arrives. The first girl ever. And the message she delivers is terrifying. \n Remember. Survive. Run. ")

        let books = [book1, book2, book3, book4, book5, book6, book7, book8, book9, book10, book11, book12]
        
        for n in 0...11 {
            objects.insert(books[n], at: n)
            let indexPath = IndexPath(row:n, section: n)
            tableView.insertRows(at: [indexPath], with: .automatic)
        }
//        objects.insert(recipe1, at: 0)
//        let indexPath = IndexPath(row: 0, section: 0)
//        tableView.insertRows(at: [indexPath], with: .automatic)
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row] as! Books
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = object
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
                detailViewController = controller
            }
        }
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let object = objects[indexPath.row] as! Books
        cell.textLabel!.text = object.Title
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
        
        }
    }


}
