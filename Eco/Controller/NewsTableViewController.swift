//
//  NewsTableViewController.swift
//  Eco
//
//  Created by Takhmina Talipova on 8/4/18.
//  Copyright © 2018 Takhmina Talipova. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController{
    var news: [News] = [
        News.init("New impulse for development of SDU Technopark", UIImage(named: "abay")!, "The SDU Technopark received a new round of development and was transformed into an innovative cluster aimed at realizing the creative ideas and projects of our students. The administration of the university has made its wards a long-awaited surprise before the new year.\n- The task of the university is the preparation of highly qualified, competitive personnel. In this regard, the Technopark will help our students to grow professionally, develop various projects, mobile applications, so that, at the end they can receive a portfolio along with the diploma, - said the director of the Technopark, Bahtiyar Rahmatullayev. \nThanks to close-knit, teamwork and consolidation of common efforts, the technopark is transformed into a modern comfortable infrastructure consisting of a co-working zone, meetup and multifunctional spaces for research and talent creation. The solemn event was also attended by the SDU rector Kanat Kozhakhmet, who sincerely congratulated the students and laid great hopes on the young people for the embodiment of the most unconventional ideas into reality, to be one step ahead.\nSo, SDU Technopark launched its work in a new format. This is the platform that is designed to bring together young start-ups, talented students, scientists and businessmen, as well as inventors of the new century.\n- Nowadays the joint work of universities and industry is an actual topic. Therefore, our important task is to provide all the necessary conditions for both students and the teaching staff, - said Vice-Rector for Administrative Affairs Ali Kochak.Only on the basis of the results of the first semester in the Technopark the students already implemented such creative projects as the mobile guide for the sacred places Рухани жаңғыру, the mobile application сalled Botakan. The students' Hakaton was organized, new partners and investments for the amount of 7 500 000 tenge were attracted."),
        News.init("SDU implements Scrum methodology", UIImage(named: "duc")!, "The modern world is changing every day. Sometimes in a dynamic rhythm of life, in the multitasking mode, it is difficult for a person to process the flow of information and make logical decisions. Statistics say that in the age of information and digital technology, the world is enriched daily for new development and grows at a tremendous speed, knowledge is quickly updated and obsolete. According to experts, the amount of information on the planet will double every two years. Modern man receives and processes for 2 months as much information as a person of the 17th century in his entire life.\nOften happens that in teamwork due to the lack of coherence plans are constantly broken, there is a backlog from deadlines, the tasks of different units are duplicated, people can not come to a common solution, although their efforts are aimed at achieving a single goal.To solve these problems in the modern world, there are different ways and methods. Developed countries of the world successfully apply advanced methods and systems in the field of project management and in the organization of well-coordinated teamwork. One such method is Scrum methodology.\nSince recently, the SDU management team has begun implementing Scrum in its work.\n \n- Scrum Methodology - is very relevant in the IT field, but today it is successfully applied in other industries. Its flexibility is that it can be used even in everyday life and economy. On the initiative of the leadership of the university, we conducted training for the top management of the university. And now we are gradually introducing it into the educational sphere. The main task of the methodology is - maximum flexibility in planning and performing tasks, says Mersys project manager IT, practicing trainer Rauan Syzdykov.\n \nToday Scrum methodology has been implemented in the work of the university administration and the Faculty of Engineering and Natural Sciences. The same method was launched in the Business School of the University.\n \n- On the basis of the SDU Business school, we are launching two relevant areas, such as: Global Finance and International Management. However, due to the tight work schedule and the dynamic rhythm of life, some working issues require an accelerated solution. Therefore, we decided to use the methodology in implementing Scrum's objectives and believe that this will be an effective method of promoting the process, - said Dean of the SDU Business School, Asylbek Nurgabdeshev.\n \nThere are 3 basic roles in Scrum: Product owner - project manager or customer, Scrum master, a person who controls the work process and helps to eliminate all obstacles and the Development team that performs the basic plan of tasks. All these people have their own roles and tasks, but they are connected by a single command spirit that will lead them to the set goal. So, for the team of SDU Business school, the deadline is marked in two weeks. Team members are confident that with the help of Scrum they are waiting for brilliant results."),
        News.init("Infomatrix Asia", UIImage(named: "duc")!, "INFOMATRIX is an international computer project-based competition, born from a desire to bring the world's best IT students together. The INFOMATRIX-ASIA was originated from the INFOMATRIX competition that is held in Bucharest Romania, in order to extend the horizons of the competition and provide more opportunity for students to participate in. The competition is not just about promoting professional excellence; it also serves to promote intercultural dialogue and cooperation, through the involvement of students and teachers from many different countries.\n \nStarting from 2013, Suleyman Demirel University (SDU) organizes INFOMATRIX-ASIA competition in Kaskelen and Almaty cities in Kazakhstan. This year SDU is happy to announce that it is organizing the 6th INFOMATRIX-ASIA computer project-based competition, with more exciting and challenging categories for students all over the globe. Nearly, 400 students from more than 28 countries participate in different categories.\n \nINFOMATRIX-ASIA being an international competition, it gives students many opportunities like getting higher preferences during the admission process to the top universities all over the world and Kazakhstan. The Ministry of Education and Science of the Kazakhstan recognizes and values the medals and certificates obtained in the competition as a technological one. We strongly suggest you not to miss this opportunity and take a part in this competition.")
    ]


 
    @IBOutlet weak var newTableView: UITableView!    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return news.count
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = newTableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as! NewsTableTableViewCell
        cell.newsTitleLable.text = news[indexPath.row].newsTitle
        cell.newsImageV.image = news[indexPath.row].newsImage
        cell.newsTitleLable.numberOfLines = 4
        print("Heloo")
        return cell
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toNewsDetailSegue"{
            let newsDetailVC: NewsDetailViewController = segue.destination as! NewsDetailViewController
            newsDetailVC.newsDetailTitle = news[(newTableView.indexPathForSelectedRow?.row)!].newsTitle
            newsDetailVC.newsDetailFull = news[(newTableView.indexPathForSelectedRow?.row)!].newsFull
            newsDetailVC.newsDetailImage = news[(newTableView.indexPathForSelectedRow?.row)!].newsImage
            
        }
    }
    
    

   

}
