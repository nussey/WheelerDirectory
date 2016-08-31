//
//  WHSFacultyListViewController.m
//  WheelerDirectory
//
//  Created by Alex Nussey on 11/8/13.
//  Copyright (c) 2013 Nussey. All rights reserved.
//

#import "WHSFacultyListViewController.h"
#import "WHSTeacherInfoViewController.h"


@interface WHSFacultyListViewController ()

@property NSArray *facultyCategories;

@property NSDictionary *administration;
@property NSDictionary *career;
@property NSDictionary *counseling;
@property NSDictionary *english;
@property NSDictionary *esol;
@property NSDictionary *fineArts;
@property NSDictionary *foreignLanguage;
@property NSDictionary *magnet;
@property NSDictionary *math;
@property NSDictionary *media;
@property NSDictionary *physicalEducation;
@property NSDictionary *science;
@property NSDictionary *socialStudies;
@property NSDictionary *specialEducation;
@property NSDictionary *supportStaff;

@property NSDictionary *groups;

@end

@implementation WHSFacultyListViewController

- (IBAction)unwindToList:(UIStoryboardSegue *)sender
{
    
}

- (void)loadData {
    
    self.facultyCategories = @[@"Administration", @"Career/Technology", @"Counseling", @"English", @"ESOL", @"Fine Arts", @"Foreign Language", @"Magnet", @"Math", @"Media", @"Physical Education", @"Science", @"Social Studies", @"Special Education", @"Support Staff"];
    
    self.administration = @{
                            @"Chiprany, Dr. David":[NSArray arrayWithObjects:@"Principal", @"David.Chiprany@cobbk12.org", @"", nil],
                            @"Braddock, Dr. Charles":[NSArray arrayWithObjects:@"Assistant Principal", @"Charles.Braddock@cobbk12.org", @"", nil],
                            @"Cooke, Andri":[NSArray arrayWithObjects:@"Assistant Principal", @"Andri.Cooke@cobbk12.org", @"", nil],
                            @"Jenkins-Mann, Dr. Andrea":[NSArray arrayWithObjects:@"Assistant Principal", @"Andrea.Jenkins-Mann@cobbk12.org", @"", nil],
                            @"Stroempl, Chase":[NSArray arrayWithObjects:@"Assistant Principal", @"Chase.Stroempl@cobbk12.org", @"", nil],
                            @"Threeton, Millie":[NSArray arrayWithObjects:@"Assistant Principal", @"Mildred.Threeton@cobbk12.org", @"", nil]
                            };
    
    self.career = @{
                    @"Crumb, Lyvonda":[NSArray arrayWithObjects:@"Career/Technology", @"Lyvonda.Crumb@cobbk12.org", @"", nil],
                    @"George, Al":[NSArray arrayWithObjects:@"Career/Technology", @"Roy.George@cobbk12.org", @"", nil],
                    @"Hosmer, Angie":[NSArray arrayWithObjects:@"Career/Technology", @"Angie.Hosmer@cobbk12.org", @"http://wheelerhs.typepad.com/ms_ferrante/", nil],
                    @"Hunt, Sharon":[NSArray arrayWithObjects:@"Career/Technology", @"Sharon.Hunt@cobbk12.org", @"http://wheelerhs.typepad.com/ms_hunt/", nil],
                    @"Krause, Erin":[NSArray arrayWithObjects:@"Career/Technology", @"Erin.Krause@cobbk12.org", @"", nil],
                    @"Kuhn, Leigh Anne":[NSArray arrayWithObjects:@"Career/Technology", @"LeighAnne.Kuhn@cobbk12.org", @"http://wheelerhs.typepad.com/ms_kuhn", nil],
                    @"Love, SMSgt. Les  (ROTC)":[NSArray arrayWithObjects:@"Career/Technology", @"Leslie.Love@cobbk12.org", @"http://www.wheelerhighafjrotc.blogspot.com/", nil],
                    @"Nicely, Beth":[NSArray arrayWithObjects:@"Career/Technology", @"Beth.Nicely@cobbk12.org", @"http://wheelerhs.typepad.com/ms_nicely/", nil],
                    @"Petriella, Nancy":[NSArray arrayWithObjects:@"Career/Technology", @"Nancy.Petriella@cobbk12.org", @"http://wheelerhs.typepad.com/ms_petriella/", nil],
                    @"Reece, Jack":[NSArray arrayWithObjects:@"Career/Technology", @"Jack.Reece@cobbk12.org", @"http://www.wildcatdrafting.com/", nil],
                    @"Roye, Jacqueline":[NSArray arrayWithObjects:@"Career/Technology", @" Jacqueline.Roye@cobbk12.org", @"", nil],
                    @"Williams, Nancy*":[NSArray arrayWithObjects:@"Career/Technology", @" Nancy.Williams@cobbk12.org", @"", nil],
                    @"Williams, Shirley":[NSArray arrayWithObjects:@"Career/Technology", @"shirley.williamst@cobbk12.org", @"http://wheelerhs.typepad.com/stewart/", nil],
                    @"Wicker, Latrice":[NSArray arrayWithObjects:@"Career/Technology", @"Latrice.Wicker@cobbk12.org", @"https://sites.google.com/site/mswickerclasses/", nil],
                    @"Williams, Orren":[NSArray arrayWithObjects:@"Career/Technology", @"Orren.Williams@cobbk12.org", @"http://wheelerhs.typepad.com/mr_williams/", nil],
                    @"Xiques, Col. George (ROTC)":[NSArray arrayWithObjects:@"Career/Technology", @"George.Xiques@cobbk12.org", @"http://www.wheelerhighafjrotc.blogspot.com/", nil]
                            };
    
    self.counseling = @{
                        @"Corell, Karyn":[NSArray arrayWithObjects:@"Registrar", @"Karyn.Corell@cobbk12.org", @"http://wheelerhs.typepad.com/ms_corell/", nil],
                        @"Schloemer-Bryant, Kristin":[NSArray arrayWithObjects:@"Counseling", @"Kristin.Schloemer@cobbk12.org", @"", nil],
                        @"Higgins, Jeanette *":[NSArray arrayWithObjects:@"Counseling", @"Jeanette.Higgins@cobbk12.org", @"http://wheelercounselingdepartment.yolasite.com/", nil],
                        @"Moudgal, Sumana":[NSArray arrayWithObjects:@"Counseling", @"Sumana.Moudgal@cobbk12.org", @"", nil],
                        @"Tucker-Edwards, Jackie":[NSArray arrayWithObjects:@"Counseling", @"Jacquelyn.Edwards@cobbk12.org", @"http://wheelerhs.typepad.com/ms_edwards/", nil],
                        @"Squier, Lisa":[NSArray arrayWithObjects:@"Counseling- Clerk", @"Lisa.Squier@cobbk12.org", @"", nil]
                            };
    
    self.english = @{
                     @"Angert, Juli*":[NSArray arrayWithObjects:@"English", @"Juliann.Angert@cobbk12.org", @"http://cobblearning.net/juliangert/", nil],
                     @"Barton, Shelly":[NSArray arrayWithObjects:@"English", @"Shelly.Barton@cobbk12.org", @"http://wheelerhs.typepad.com/ms_barton/", nil],
                     @"Bolls, Amanda":[NSArray arrayWithObjects:@"English", @" Amanda.Bolls@cobbk12.org", @"http://mrsbolls.weebly.com/", nil],
                     @"Bonham, Dana":[NSArray arrayWithObjects:@"English", @"Dana.Bonham@cobbk12.org", @"", nil],
                     @"Brauninger, Jeannie":[NSArray arrayWithObjects:@"English", @"Jeannie.Brauninger@cobbk12.org", @"http://mrsbrauninger.weebly.com/", nil],
                     @"Burnett-Brown, Jacqueline":[NSArray arrayWithObjects:@"English", @"Jacqueline.Burnett-Brown@cobbk12.org", @"http://msbbsblog.blogspot.com/", nil],
                     @"Carter, Dr. Jimmy":[NSArray arrayWithObjects:@"English", @"Jimmy.Carter@cobbk12.org", @"http://www.drcartersclasses.blogspot.com/", nil],
                     @"Jackson, Patricia":[NSArray arrayWithObjects:@"Engish", @" Patricia.Jackson2@cobbk12.org", @"", nil],
                     @"Loisel, Kathleen":[NSArray arrayWithObjects:@"English", @"Kathleen.Loisel@cobbk12.org", @"http://literatureloisel.blogspot.com/", nil],
                     @"Thompson, Tara":[NSArray arrayWithObjects:@"English", @"Tara.Thompson@cobbk12.org", @"https://cobbk12.blackboard.com/", nil],
                     @"Todoric, Dejla":[NSArray arrayWithObjects:@"English", @"Dejla.Todoric@cobbk12.org", @"http://cobblearning.net/todoric/", nil],
                     @"Williams, Amanda":[NSArray arrayWithObjects:@"English", @"Amanda.Williams@cobbk12.org", @"http://www.amandavwilliamswhs.wordpress.com/", nil],
                     @"Williams, Michael":[NSArray arrayWithObjects:@"English", @"Michael1.Williams@cobbk12.org", @"http://www.williamsroom.wordpress.com/", nil],
                     @"Worthy, Melissa":[NSArray arrayWithObjects:@"English", @"Melissa.Worthy@cobbk12.org", @"http://cobbk12.blackboard.com/webapps/portal/frameset.jsp?tab_tab_group_id=_2_1&url=/webapps/blackboard/execute/courseMain?course_id=_17255_1", nil],
                     @"Young, Chrissy":[NSArray arrayWithObjects:@"English", @"Christine.Young@cobbk12.org", @"http://young-wheeler.blogspot.com/", nil]
                            };
    
    self.esol = @{
                  @"Bannova, Galina":[NSArray arrayWithObjects:@"ESOL", @"Galina.Bannova@cobbk12.org", @"http://wheelerhs.typepad.com/ms_bannova/", nil],
                  @"Buhler, Rachel":[NSArray arrayWithObjects:@"ESOL", @"Rachel.Buhler@cobbk12.org", @"http://mrsbuhlersmathblog.wordpress.com/", nil],
                  @"Cooper, Leslie":[NSArray arrayWithObjects:@"ESOL", @" Leslie.Cooper@cobbk12.org", @"", nil],
                  @"Goncalves, Giselle":[NSArray arrayWithObjects:@"ESOL", @"Giselle.Goncalves@cobbk12.org", @"http://wheelerhs.typepad.com/goncalves/#tp", nil],
                  @"Greenfield, April*":[NSArray arrayWithObjects:@"ESOL", @"April.Greenfield@cobbk12.org", @"", nil],
                  @"Huntington, Carol":[NSArray arrayWithObjects:@"ESOL", @"Carol.Huntington@cobbk12.org", @"", nil],
                  @"Kraj, Patsy":[NSArray arrayWithObjects:@"ESOL", @"Patsy.Kraj@cobbk12.org", @"http://kwscience.wikispaces.com/", nil],
                  @"Lyons, Gale":[NSArray arrayWithObjects:@"ESOL", @"Gale.Lyons@cobbk12.org", @"http://wheelerhs.typepad.com/ms_lyons/", nil],
                  @"Polk, Kamisha":[NSArray arrayWithObjects:@"ESOL", @" Kamisha.Polk@cobbk12.org", @"", nil],
                  @"Sorensen, Celeste":[NSArray arrayWithObjects:@"ESOL", @"Celeste.Sorensen@cobbk12.org", @"http://wheelerhs.typepad.com/ms_sorensen/", nil]
                            };
    
    self.fineArts = @{
                      @"Hoskins, Mark":[NSArray arrayWithObjects:@"Band - Director", @"Mark.Hoskins@cobbk12.org", @"http://wheelerhs.typepad.com/mr_hoskins/", nil],
                      @"Higdon, Anthony":[NSArray arrayWithObjects:@"Band - Assistant", @"Anthony.Higdon@cobbk12.org", @"http://wheelerhs.typepad.com/mr_higdon/", nil],
                      @"Gilstrap, Wendy":[NSArray arrayWithObjects:@"Drama", @"Wendy.Gilstrap@cobbk12.org", @"http://wheelerhs.typepad.com/ms_gilstrap/", nil],
                      @"Kane, Jean":[NSArray arrayWithObjects:@"Art", @"Jean.Kane@cobbk12.org", @"", nil],
                      @"Perry, John":[NSArray arrayWithObjects:@"Chorus", @"John.Perry@cobbk12.org", @"", nil],
                      @"Wasson, Dwayne*":[NSArray arrayWithObjects:@"Orchestra", @"Dwayne.Wasson@cobbk12.org", @"https://dwasson.coursesites.com/", nil],
                      @"Yates, Suzanne":[NSArray arrayWithObjects:@"Art", @"Suzanne.Yates@cobbk12.org", @"", nil]
                            };
    
    self.foreignLanguage = @{
                             @"Acevedo, Laura":[NSArray arrayWithObjects:@"Spanish", @"Laura.acevedo-Pabon@cobbk12.org", @"http://wheelerhs.typepad.com/laura_acevedo/", nil],
                             @"Cardona, Courtney":[NSArray arrayWithObjects:@"Spanish", @"Courtney.Cardona@cobbk12.org", @"http://www.cobblearning.net/cardona", nil],
                             @"Corella, Salomon":[NSArray arrayWithObjects:@"Spanish", @"Salomon.Corella@cobbk12.org", @"http://wheelerhs.typepad.com/mr_corella/", nil],
                             @"Fair, Lorna":[NSArray arrayWithObjects:@"Spanish", @"Lorna.Fair-Tham@cobbk12.org", @"http://cobblearning.net/lornafair/", nil],
                             @"Muller, Meggan*":[NSArray arrayWithObjects:@"French", @"Meggan.Muller@cobbk12.org", @"http://wheelerhs.typepad.com/muller/", nil],
                             @"Thomas, Gayle":[NSArray arrayWithObjects:@"Spanish", @"Gayle.Thomas@cobbk12.org", @"http://www.wheelerhs.typepad.com/ms_thomas/", nil],
                             @"Vasquez, Patricia":[NSArray arrayWithObjects:@"Spanish", @"Patricia.Vasquez@cobbk12.org", @"http://cobblearning.net/patriciavasquez/", nil],
                             @"Velez, Vernice":[NSArray arrayWithObjects:@"French", @" Vernice.Velez@cobbk12.org", @"", nil],
                             @"Ward, Cameron":[NSArray arrayWithObjects:@"Latin", @"Cameron.Ward@cobbk12.org", @"http://wheelerlatin.blogspot.com./", nil]
                            };
    
    self.magnet = @{
                    @"Crooks, Cheryl":[NSArray arrayWithObjects:@"Magnet Academic Coordinator", @"Cheryl.Crooks@cobbk12.org", @"", nil],
                    @"Stark, Dr. Tiffany*":[NSArray arrayWithObjects:@"Magnet Director", @"Tiffany.Stark@cobbk12.org", @"http://wheelerhs.typepad.com/dr_stark/", nil],
                    @"Regitsky, Stacy":[NSArray arrayWithObjects:@"Magnet Clerk", @"Stacy.Regitsky@cobbk12.org", @"", nil]
                            };
    
    self.math = @{
                  @"Beasley, Cathy":[NSArray arrayWithObjects:@"Math", @"Cathy.Beasley@cobbk12.org", @"", nil],
                  @"Barry, Lynn *":[NSArray arrayWithObjects:@"Math", @"Lynn.Barry@cobbk12.org", @"https://cobbk12.blackboard.com/webapps/portal/frameset.jsp", nil],
                  @"Fahl, Aaron":[NSArray arrayWithObjects:@"Math", @"Aaron.Fahl@cobbk12.org", @"http://www.fahlmath.weebly.com/", nil],
                  @"Furstein, Ray":[NSArray arrayWithObjects:@"Math", @"Raymond.Furstein@cobbk12.org", @"http://cobblearning.net/furstein/", nil],
                  @"Grier, Laura":[NSArray arrayWithObjects:@"Math", @"Laura.Grier@cobbk12.org", @"http://cobblearning.net/lgrier/", nil],
                  @"Kent, Jeffrey":[NSArray arrayWithObjects:@"Math", @"Jeffrey.Kent@cobbk12.org", @"http://cobblearning.net/kentalgebra/", nil],
                  @"Liles, Janet":[NSArray arrayWithObjects:@"Math", @"Janet.Liles@cobbk12.org", @"http://cobblearning.net/lilesbest", nil],
                  @"McNelis, Katherine":[NSArray arrayWithObjects:@"Math", @"Katherine.McNelis@cobbk12.org", @"", nil],
                  @"Massey, Vicki":[NSArray arrayWithObjects:@"Math", @"Vicki.Massey@cobbk12.org", @"http://wheelerhs.typepad.com/ms_massey/", nil],
                  @"Morton, Amanda":[NSArray arrayWithObjects:@"Math", @"Martha.Morton@cobbk12.org", @"http://cobblearning.net/marthamorton/", nil],
                  @"Murphy, Marianne":[NSArray arrayWithObjects:@"Math", @"Marianne.Murphy@cobbk12.org", @"http://murphymath.wordpress.com/", nil],
                  @"Naporano, Sarah":[NSArray arrayWithObjects:@"Math", @"Sarah.Naporano@cobbk12.org", @"http://cobblearning.net/naporanomath/", nil],
                  @"Nix, Melanie":[NSArray arrayWithObjects:@"Math", @"Melanie.Nix@cobbk12.org", @"https://cobbk12.blackboard.com/webapps/portal/frameset.jsp?tab_tab_group_id=_2_1&url=%2Fwebapps%2Fblackboard%2Fexecute%2Flauncher%3Ftype%3DCourse%26id%3D_20924_1%26url%3D", nil],
                  @"Teitelman, Lauri":[NSArray arrayWithObjects:@"Math", @"Lauri.Teitelman@cobbk12.org", @"http://wheelerhs.typepad.com/ms_rainbow/", nil],
                  @"Vanderveer, Judy":[NSArray arrayWithObjects:@"Math", @"Judy.Vanderveer@cobbk12.org", @"http://cobblearning.net/Vanderveer/", nil],
                  @"Walls, Julie":[NSArray arrayWithObjects:@"Math", @"Julie.Walls@cobbk12.org", @"http://www.jwalls.eboard.com/", nil],
                  @"Winston, Melissa":[NSArray arrayWithObjects:@"Math", @"Melissa.Winston@cobbk12.org", @"http://wheelerhs.typepad.com/ms_winston/", nil],
                  @"Winders, Andrea":[NSArray arrayWithObjects:@"Math", @"Andrea.Winders@cobbk12.org", @"http://cooperms.typepad.com/winders", nil],
                  @"Young, Wenona":[NSArray arrayWithObjects:@"Math", @"Wenona.Young@cobbk12.org", @"http://wyoungmath4life.wordpress.com/", nil]
                            };
    
    self.media = @{
                   @"Bryan, Valerie":[NSArray arrayWithObjects:@"Media Specialist", @"Valerie.Bryan@cobbk12.org", @"http://www.wheelerlibrary.com/index.html", nil],
                   @"Tehrani, Renee":[NSArray arrayWithObjects:@"Media Specialist", @" Renee.Tehrani@cobbk12.org", @"", nil]
                            };
    
    self.physicalEducation = @{
                               @"Clayton, Roy":[NSArray arrayWithObjects:@"Physical Education", @"Roy.Clayton@cobbk12.org", @"", nil],
                               @"Coley, Edmond":[NSArray arrayWithObjects:@"Physical Education", @"Edmond.Coley@cobbk12.org", @"", nil],
                               @"Collins, Mike*":[NSArray arrayWithObjects:@"Physical Education, Head Football Coach", @"Michael.Collins@cobbk12.org", @"", nil],
                               @"Lipscomb, Doug":[NSArray arrayWithObjects:@"Physical Education, Head Basketball Coach", @"Douglas.Lipscomb@cobbk12.org", @"http://wheelerhs.typepad.com/coachdoug_lipscomb/", nil],
                               @"McCraw, Carol":[NSArray arrayWithObjects:@"Physical Education", @"Carol.McCraw@cobbk12.org", @"http://cobblearning.net/carolmccraw/", nil],
                               @"Mahon, Jerry":[NSArray arrayWithObjects:@"Physical Education", @"Jerry.Mahon@cobbk12.org", @"", nil],
                               @"Mays, Mario":[NSArray arrayWithObjects:@"Physical Education", @"Mario.Mays@cobbk12.org", @"", nil]
                            };
    
    self.science = @{
                     @"Adams, Dawn":[NSArray arrayWithObjects:@"Science", @"Dawn.Adams@cobbk12.org", @"http://wheelerhs.typepad.com/dr_adams/", nil],
                     @"Barry, Julia":[NSArray arrayWithObjects:@"Science", @"Julia.Barry@cobbk12.org", @"https://sites.google.com/site/physicsing/", nil],
                     @"Cody, John":[NSArray arrayWithObjects:@"Science", @"John.Cody@cobbk12.org", @"http://www.drcodychem.com/", nil],
                     @"Corvalan, Sergio":[NSArray arrayWithObjects:@"Science", @"Sergio.Corvalan@cobbk12.org", @"", nil],
                     @"Etchison-Cook, Brian":[NSArray arrayWithObjects:@"Science", @"Brian.Etchison-Cook@cobbk12.org", @"", nil],
                     @"Gatanis, Dr. Steve":[NSArray arrayWithObjects:@"Science, Head Wrestling Coach", @"Harry.Gatanis@cobbk12.org", @"https://sites.google.com/site/drgsphysics/", nil],
                     @"Grant, Ashley":[NSArray arrayWithObjects:@"Science", @"Ashley.Grant2cobbk12.org", @"", nil],
                     @"Hawkins, Charles":[NSArray arrayWithObjects:@"Science", @"Charles.Hawkins@cobbk12.org", @"http://wheelerhs.typepad.com/mr_hawkins/", nil],
                     @"Howell, Joel":[NSArray arrayWithObjects:@"Science", @"Joel.Howell@cobbk12.org", @"http://wheelerhs.typepad.com/dr_howell/", nil],
                     @"Lajeunesse, Clement":[NSArray arrayWithObjects:@"Science", @"Clement.Lajeunesse@cobbk12.org", @"http://chemistryformrl.wikispaces.com/", nil],
                     @"Lindsay, Ian":[NSArray arrayWithObjects:@"Science", @"Ian.Lindsay@cobbk12.org", @"http://www.cobblearning.net/sciencefreakout", nil],
                     @"Nelson, Brian":[NSArray arrayWithObjects:@"Science", @"Brian.Nelson@cobbk12.org", @"http://cobblearning.net/briannelson/", nil],
                     @"Patterson, Linda *":[NSArray arrayWithObjects:@"Science", @"Linda1.Patterson@cobbk12.org", @"http://www.myteacherpages.com/webpages/LPatterson1/index.cfm", nil],
                     @"Phillips, Susan":[NSArray arrayWithObjects:@"Science", @"Susan.Phillips@cobbk12.org", @"http://wheelerhs.typepad.com/ms_phillips", nil],
                     @"Stalcup, Season":[NSArray arrayWithObjects:@"Science", @"Season.Stalcup@cobbk12.org", @"http://wheelerhs.typepad.com/coach_smith/", nil],
                     @"Walstead, Chris":[NSArray arrayWithObjects:@"Science", @"Christopher.Walstead@cobbk12.org", @"http://cobblearning.net/walstead/", nil]
                            };
    
    self.socialStudies = @{
                           @"Aragon, Lorraine":[NSArray arrayWithObjects:@"Social Studies", @"Lorraine.Aragon@cobbk12.org", @"http://www.schoolrack.com/aragon", nil],
                           @"Astorian, Laura":[NSArray arrayWithObjects:@"Social Studies", @"Laura.Astorian@cobbk12.org", @"http://astorianpsych.info/", nil],
                           @"Berch, Staci":[NSArray arrayWithObjects:@"Social Studies", @"Staci.Berch@cobbk12.org", @"", nil],
                           @"Colasurdo, Michelle":[NSArray arrayWithObjects:@"Social Studies", @"Michelle.Colasurdo@cobbk12.org", @"http://wheelerhs.typepad.com/ms_colasurdo/", nil],
                           @"Hajduk, Gerri":[NSArray arrayWithObjects:@"Social Studies", @"Gerri.Hajduk@cobbk12.org", @"http://wheelerhs.typepad.com/ms_hajduk/", nil],
                           @"Jones, Christopher":[NSArray arrayWithObjects:@"Social Studies", @"Christopher.Jones@cobbk12.org", @"", nil],
                           @"Kietzman, Sarah":[NSArray arrayWithObjects:@"Social Studies", @"Sarah.Kietzman@cobbk12.org", @"https://cobbk12.blackboard.com/webapps/portal/frameset.jsp?tab_tab_group_id=_2_1&url=%2Fwebapps%2Fblackboard%2Fexecute%2Flauncher%3Ftype%3DCourse%26id%3D_20904_1%26url%3D", nil],
                           @"Miller, John":[NSArray arrayWithObjects:@"Social Studies", @"John.Miller@cobbk12.org", @"http://cobblearning.net/ushistorymiller/", nil],
                           @"Mitchell, Greg":[NSArray arrayWithObjects:@"Social Studies", @"Greg.Mitchell@cobbk12.org", @"http://wheelerhs.typepad.com/mr_mitchell/", nil],
                           @"Santelli, Nicole":[NSArray arrayWithObjects:@"Social Studies", @"Nicole.Santelli@cobbk12.org", @"http://cobblearning.net/santelli/", nil],
                           @"Shields, Chris":[NSArray arrayWithObjects:@"Social Studies", @"Chris.Shields@cobbk12.org", @"http://www.crshields.com/", nil],
                           @"Tallant, Scott":[NSArray arrayWithObjects:@"Social Studies", @"Kenneth.Tallant@cobbk12.org", @"http://wheelerhs.typepad.com/mr_tallant/", nil],
                           @"West, Pamela*":[NSArray arrayWithObjects:@"Social Studies", @"Pamela.West@cobbk12.org", @"http://www.whsmswest.com/", nil]
                            };
    
    self.specialEducation = @{
                              @"Arney, Margaret":[NSArray arrayWithObjects:@"Special Education- Paraprofessional", @" Margaret.Arney@cobbk12.org", @"", nil],
                              @"Beasley, Marla":[NSArray arrayWithObjects:@"Special Education", @"Marla.Beasley@cobbk12.org", @"", nil],
                              @"Beugre', Alex":[NSArray arrayWithObjects:@"Special Education", @"Alexandre.Beugre@cobbk12.org", @"http://wheelerhs.typepad.com/mr_beugre/", nil],
                              @"Case, Rob":[NSArray arrayWithObjects:@"Special Education", @"Robert.Case@cobbk12.org", @"", nil],
                              @"Chester, Brandon":[NSArray arrayWithObjects:@"Special Education", @" Brandon.Chester@cobbk12.org", @"", nil],
                              @"Clennan, Naomi":[NSArray arrayWithObjects:@"Special Education", @" Naomi.Clennan@cobbk12.org", @"", nil],
                              @"Czerwonka, Barbara":[NSArray arrayWithObjects:@"Special Education-Paraprofessional", @"Barbara.Czerwonka@cobbk12.org", @"", nil],
                              @"Findley, Lynne":[NSArray arrayWithObjects:@"Special Education-Paraprofessional", @"Lynne.Findley@cobbk12.org", @"http://wheelerhs.typepad.com/ms_oakley/", nil],
                              @"Huston, Cheryl":[NSArray arrayWithObjects:@"Special Education-Paraprofessional", @"Cheryl.Huston@cobbk12.org", @"", nil],
                              @"Levine, Ellen":[NSArray arrayWithObjects:@"Special Education", @"Ellen.Levine@cobbk12.org", @"", nil],
                              @"McMahon, Katie":[NSArray arrayWithObjects:@"Special Education", @" Katie.McMahon@cobbk12.org", @"", nil],
                              @"Margaret, Amy":[NSArray arrayWithObjects:@"Special Education", @"Amy.Margaret@cobbk12.org", @"", nil],
                              @"Matthys, Susanna":[NSArray arrayWithObjects:@"Special Education", @"Susanna.Matthys@cobbk12.org", @"", nil],
                              @"Nichols, Rob":[NSArray arrayWithObjects:@"Special Education", @"Robert.Nichols@cobbk12.org", @"http://wheelerhs.typepad.com/mr_nichols/", nil],
                              @"Oakley, Faye*":[NSArray arrayWithObjects:@"Special Education", @"Faye.Oakley@cobbk12.org", @"http://wheelerhs.typepad.com/ms_oakley/", nil],
                              @"Purcell, Patricia":[NSArray arrayWithObjects:@"Speical Education", @" Patricia.Purcell@cobbk12.org", @"", nil],
                              @"Smith, Dr. Ezekiel":[NSArray arrayWithObjects:@"Special Education", @" Ezekiel.Smith@cobbk12.org", @"", nil],
                              @"Smith, Tiffany":[NSArray arrayWithObjects:@"Special Education", @" Tiffany.Smith@cobbk12.org", @"", nil]
                            };
    
    self.supportStaff = @{
                          @"Brettner, Mary":[NSArray arrayWithObjects:@"Secretary", @"Mary.Brettner@cobbk12.org", @"", nil],
                          @"Carter, Annemarie":[NSArray arrayWithObjects:@"Speech", @"Annemarie.Carter@cobbk12.org", @"", nil],
                          @"Collins, Judy":[NSArray arrayWithObjects:@"Receptionist", @"Judy.Collins@cobbk12.org", @"", nil],
                          @"Gagat, Geri":[NSArray arrayWithObjects:@"Attendance", @"Geri.Gagat@cobbk12.org", @"", nil],
                          @"Gutting, Kelly":[NSArray arrayWithObjects:@"Social Worker", @"Kelly.Gutting@cobbk12.org", @"", nil],
                          @"Hansen, Jill":[NSArray arrayWithObjects:@"Physical Therapy", @"Jill.Hansen@cobbk12.org", @"", nil],
                          @"Harvey, Davis":[NSArray arrayWithObjects:@"ISS", @"Davis.Harvey@cobbk12.org", @"", nil],
                          @"Hough, Patricia":[NSArray arrayWithObjects:@"Nurse", @"Patricia.Hough@cobbk12.org", @"", nil],
                          @"Losner, Yvonne":[NSArray arrayWithObjects:@"Admin II Clerk", @"Yvonne.Losner@cobbk12.org", @"", nil],
                          @"Moore, Dennis":[NSArray arrayWithObjects:@"Police Officer", @"Dennis.Moore@cobbk12.org", @"", nil],
                          @"Payne, Pari":[NSArray arrayWithObjects:@"Bookeeper", @"Parivash.Payne@cobbk12.org", @"", nil],
                          @"Ramos, Erlinda":[NSArray arrayWithObjects:@"Cafe Manager", @"Erlinda.Ramos@cobbk12.org", @"", nil],
                          @"Nagurney, Terry":[NSArray arrayWithObjects:@"Psychologist", @"Terry.Nagurney@cobbk12.org", @"", nil],
                          @"Roberts, Anna":[NSArray arrayWithObjects:@"Adapted PE", @"Anna.Roberts@cobbk12.org", @"", nil],
                          @"Searle, Susan":[NSArray arrayWithObjects:@"Genesis Clerk", @"Susan.Searle@cobbk12.org", @"", nil],
                          @"Wilson, Michael":[NSArray arrayWithObjects:@"Police Officer", @" Michael.Wilson@cobbk12.org", @"", nil]
                            };
    
    
    
    self.groups = @{@"Administration":self.administration,
                    @"Career/Technology":self.career,
                    @"Counseling":self.counseling,
                    @"English":self.english,
                    @"ESOL":self.esol,
                    @"Fine Arts":self.fineArts,
                    @"Foreign Language":self.foreignLanguage,
                    @"Magnet":self.magnet,
                    @"Math":self.math,
                    @"Media":self.media,
                    @"Physical Education":self.physicalEducation,
                    @"Science":self.science,
                    @"Social Studies":self.socialStudies,
                    @"Special Education":self.specialEducation,
                    @"Support Staff":self.supportStaff};
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.facultyCategories = [[NSMutableArray alloc] init];
    
    self.administration = [[NSDictionary alloc] init];
    self.career = [[NSDictionary alloc] init];
    self.counseling = [[NSDictionary alloc] init];
    self.english = [[NSDictionary alloc] init];
    self.esol = [[NSDictionary alloc] init];
    self.fineArts = [[NSDictionary alloc] init];
    self.foreignLanguage = [[NSDictionary alloc] init];
    self.magnet = [[NSDictionary alloc] init];
    self.math = [[NSDictionary alloc] init];
    self.media = [[NSDictionary alloc] init];
    self.physicalEducation = [[NSDictionary alloc] init];
    self.science = [[NSDictionary alloc] init];
    self.socialStudies = [[NSDictionary alloc] init];
    self.specialEducation = [[NSDictionary alloc] init];
    self.supportStaff = [[NSDictionary alloc] init];

    
    self.groups = [[NSDictionary alloc] init];
    [self loadData];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [self.facultyCategories count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    // The header for the section is the region name -- get this from the region at the section index.
    return _facultyCategories[section];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return[[self.groups objectForKey:self.facultyCategories[section]] count];
    //return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"FacultyDataCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSArray *dictionary = [[self.groups objectForKey:self.facultyCategories[indexPath.section]] allKeys];
    NSArray *sortedArray = [dictionary sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    cell.textLabel.text = sortedArray[indexPath.row];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    
    NSDictionary *facultyData = [self.groups objectForKey:self.facultyCategories[indexPath.section]];
    NSArray *names = [facultyData allKeys];
    NSArray *sortedNames = [names sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
    NSString *name = sortedNames[indexPath.row];
    NSArray *data = [facultyData objectForKey:name];
    
    NSArray *package = @[name, data];
    
    WHSTeacherInfoViewController *destination = [segue destinationViewController];
    destination.teacherData = package;
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


@end
