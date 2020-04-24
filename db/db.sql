-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 24, 2020 at 05:45 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio`
--

CREATE TABLE `tbl_audio` (
  `audio_id` mediumint(8) UNSIGNED NOT NULL,
  `audio_title` varchar(125) NOT NULL,
  `audio_year` varchar(5) NOT NULL,
  `audio_storyline` text NOT NULL,
  `audio_artist` varchar(75) NOT NULL,
  `audio_cover` varchar(75) NOT NULL,
  `audio_src` varchar(40) NOT NULL,
  `audio_kids` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_audio`
--

INSERT INTO `tbl_audio` (`audio_id`, `audio_title`, `audio_year`, `audio_storyline`, `audio_artist`, `audio_cover`, `audio_src`, `audio_kids`) VALUES
(1, 'Wannabe', '1996', '“Wannabe” is a hit song by the British pop group Spice Girls. It was a single from their debut album Spice, released in 1996. The girls wrote the song with the help of Richard Stannard and Matt Rowe, who the band met at an industry showcase.', 'Spice Girls', 'wannabe.jpg', 'wannabe.mp3', 1),
(2, 'Wonderwall', '1995', '“Wonderwall” was released as the fourth single off of Oasis\' classic album What’s The Story? (Morning Glory). It was supposedly written for Noel Gallagher’s then-girlfriend, Meg Matthews, as he told NME in 1996, “It’s about my girlfriend, Meg Matthews.” ', 'Oasis', 'wonderwall.jpg', 'wonderwall.mp3', 1),
(3, 'Smells Like Teen Spirit', '1991', '\"Smells Like Teen Spirit\" is a song by American rock band Nirvana. It is the opening track and lead single from the band\'s second album, Nevermind (1991), released on DGC Records. The unexpected success of the song propelled Nevermind to the top of several albums charts at the start of 1992, an event often marked as the point where grunge entered the mainstream.', 'Nirvana', 'nirvana.jpg', 'nirvana.mp3', 1),
(4, 'Take On Me', '1984', '“Take on Me” is a synthpop song that combines various instrumentation that includes acoustic guitars, keyboards, and drums. It was released as a-ha’s debut single in September 1984 to huge success in their homeland of Norway.', 'a-ha', 'takeonme.jpg', 'takeonme.mp3', 1),
(5, 'Livin\' on a Prayer', '1986', 'The 1987 No. 1 Billboard hit “Livin\' on a Prayer” unexpectedly re-entered the Billboard Hot 100 on November 21, 2013 in the 25th spot. It re-entered the charts after a 2009 video of Boston Celtics basketball fan Jeremy Fry dancing to the rock anthem at Boston’s TD Garden was re-uploaded to YouTube. With 11 million new views, the video propelled the 1987 classic back on the charts.', 'Bon Jovi', 'livinprayer.jpg', 'livinprayer.mp3', 1),
(6, 'Hungry Like the Wold', '1982', '\"Hungry Like the Wolf\" is a song by the British new wave band Duran Duran. Written by the band members, the song was produced by Colin Thurston for the group\'s second studio album Rio. The song was released in May 1982 as the band\'s fifth single in the United Kingdom. It reached no. 5 on the UK Singles Chart, and received a silver certification by the British Phonographic Industry (BPI).', 'Duran Duran', 'hungrywolf.jpg', 'hungrywolf.jpg', 1),
(7, 'Stairway to Heaven', '1971', '“Stairway to Heaven” is one of Led Zeppelin’s most famous recordings, with many considering it the greatest rock song of all time. It tells the story of a greedy woman who is overly optimistic about her unpromising future.', 'Led Zepplin', 'stairway.jpg', 'stairway.mp3', 1),
(8, 'Go Your Own Way', '1977', '“Go Your Own Way” was the first single from Fleetwood Mac’s award winning eleventh LP Rumours, from 1977.', 'Fleetwood Mac', 'fleetwood.jpg', 'fleetwood.mp3', 1),
(9, 'Play That Funky Music', '1976', '\"Play That Funky Music\" is a song written by Rob Parissi and recorded by the band Wild Cherry. The single was the first released by the Cleveland-based Sweet City record label in April 1976 and distributed by Epic Records.[2] The performers on the recording included lead singer Parissi, electric guitarist Bryan Bassett, bassist Allen Wentz, and drummer Ron Beitle, with session players Chuck Berginc, Jack Brndiar (trumpets), and Joe Eckert and Rick Singer (saxes) on the horn riff that runs throughout the song\'s verses.', 'Wild Cherry', 'funkymusic.jpg', 'funkymusic.mp3', 1),
(10, 'California Dreamin\'', '1966', 'The most recognized song by the iconic ‘60s rock/folk California based band. The song is consistently found among the top 100 songs ever.', 'The Mamas & The Papas', 'californiadreamin.jpg', 'californiadreamin.mp3', 1),
(11, 'She Loves You', '1964', 'This is the song that launched The Beatles into stardom in Britain, and was their first single released in the U.S. The “yeah, yeah, yeah” refrain became the Beatles\' catchphrase at that time, and some parts of Europe referred to them as the Yeah-Yeahs.', 'The Beatles', 'sheloveyou.jpg', 'shelovesyou.mp3', 1),
(12, 'Wouldn\'t It Be Nice', '1966', 'The opening track of Pet Sounds was later released as the albums\' third single with “God Only Knows” as its B-Side.', 'The Beach Boys', 'beachboys.jpg', 'beachboys.mp3', 1),
(13, 'Jailhouse Rock', '1957', '“Jailhouse Rock” is a song written by Jerry Leiber and Mike Stoller. The song was released as a 45rpm single on September 24, 1957, to coincide with the release of Presley’s motion picture, Jailhouse Rock.', 'Elvis Presley', 'jailhouse.jpg', 'jailhouse.mp3', 1),
(14, 'Love is Here to Stay', '1956', '\"Our Love Is Here to Stay\" is a Gershwin brothers tune originally written for the movie The Goldwyn Follies. It was one of the final songs that the pair wrote together, as George Gershwin died of a brain tumor in 1937, one year before the song was published for the film.', 'Frank Sinatra', 'sinatra.jpg', 'sinatra.mp3', 1),
(15, 'I Walk the Line', '1956', '\"I Walk the Line\" is a song written and recorded in 1956 by Johnny Cash. After three attempts with moderate chart ratings, it became Cash\'s first number one hit on the Billboard charts.', 'Johnny Cash', 'walktheline.jpg', 'walktheline.mp3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL,
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(125) NOT NULL,
  `movies_kids` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_kids`) VALUES
(1, 'ladytramp.jpg', 'Lady and the Tramp', '1955', '1h 16min', 'Lady, a golden cocker spaniel, meets up with a mongrel dog who calls himself the Tramp. He is obviously from the wrong side of town, but happenings at Lady\'s home make her decide to travel with him for a while. This turns out to be a bad move, as no dog is above the law.', 'ladytramp.mp4', 1),
(2, 'cinderella.jpg', 'Cinderella', '1950', '1h 14min', 'When Cinderella\'s cruel stepmother prevents her from attending the Royal Ball, she gets some unexpected help from the lovable mice Gus and Jaq, and from her Fairy Godmother.', 'cinderella.mp4', 1),
(3, 'peterpan.jpg', 'Peter Pan', '1953', '1h 17min', 'An adaptation of J. M. Barrie\'s story about a boy who never grew up. The three children of the Darling family receive a visit from Peter Pan, who takes them to Never Land, where an ongoing war between Peter\'s gang of rag-tag runaways and the evil Pirate Captain Hook is taking place.v', 'peterpan.mp4', 1),
(4, 'eve.jpg', 'All About Eve', '1950', '2h 18min', 'Backstage story revolving around aspiring actress Eve Harrington. Tattered and forlorn, Eve shows up in the dressing room of Broadway mega-star Margo Channing and tells Margo and her friends a melancholy life story. Margo takes Eve under her wing, only to have Eve use her and connive against her.', 'eve.mp4', 0),
(5, 'streetcar.jpg', 'A Streetcar Named Desire', '1951', '2h 2min', 'Troubled former schoolteacher Blanche DuBois as she leaves small-town Mississippi and moves in with her sister, Stella Kowalski and her husband, Stanley, in New Orleans. Blanche\'s flirtatious Southern-belle presence causes problems for Stella and Stanley, who already have a volatile relationship, leading to even greater conflict in the Kowalski household.', 'streetcar.mp4', 0),
(6, 'singingrain.jpg', 'Singing in the Rain', '1952', '1h 43min', 'In 1927, Don Lockwood and Lina Lamont are a famous on-screen romantic pair. Lina, however, mistakes the on-screen romance for real love. Don has worked hard to get where he is today, with his former partner Cosmo. When Don and Lina\'s latest film is transformed into a musical, Don has the perfect voice for the songs. But Lina - well, even with the best efforts of a diction coach, they still decide to dub over her voice. Kathy Selden is brought in, an aspiring actress, and while she is working on the movie, Don falls in love with her. Will Kathy continue to \"aspire\", or will she get the break she deserves?', 'singingrain.mp4', 0),
(7, 'marypoppins.jpg', 'Mary Poppins', '1964', '2h 19min', 'When Jane and Michael, the children of the wealthy and uptight Banks family, are faced with the prospect of a new nanny, they are pleasantly surprised by the arrival of the magical Mary Poppins. Embarking on a series of fantastical adventures with Mary and her Cockney performer friend, Bert, the siblings try to pass on some of their nanny\'s sunny attitude to their preoccupied parents.', 'marrypoppins.mp4', 1),
(8, 'junglebook.jpg', 'The Jungle Book', '1967', '1h 18min', 'Disney animation inspired by Rudyard Kipling\'s \"Mowgli\" story. Mowgli is a boy who has been raised by wolves in the Indian jungle. When the wolves hear that the fierce tiger, Shere Khan, is nearby, they decide to send Mowgli to a local \"man-village\". On his way to the village, Mowgli meets many animal characters in this musical tale. When Shere Khan learns of Mowgli\'s presence, he tracks him down.', 'junglebook.mp4', 1),
(9, 'dalmatians.jpg', 'One Hundred and One Dalmatians', '1961', '1h 19min', 'Pongo and Perdita have a litter of 15 puppies. Cruella De Vil takes a fancy to the pups, and wants to get hold of them, as well as more pups, to make herself a lovely dalmatian skin coat... Cruella hires some thugs to kidnap the pups and hold them at her mansion. Will Pongo and Perdita find them in time?', 'dalmatians.mp4', 1),
(10, 'spaceodyssey.jpg', '2001: A Space Odyssey', '1968', '2h 29min', '\"2001\" is a story of evolution. Sometime in the distant past, someone or something nudged evolution by placing a monolith on Earth (presumably elsewhere throughout the universe as well). Evolution then enabled humankind to reach the moon\'s surface, where yet another monolith is found, one that signals the monolith placers that humankind has evolved that far. Now a race begins between computers (HAL) and human (Bowman) to reach the monolith placers. The winner will achieve the next step in evolution, whatever that may be.', 'spaceodyssey.mp4', 0),
(11, 'soundofmusic.jpg', 'The Sound of Music', '1965', '2h 52min', 'Maria (Dame Julie Andrews) always wanted to be a nun ever since she was a little child but when she grew up and join them, she could not cope because of her wild and longing- to- be- free personality. She is however sent away to be the governess of seven children who give governesses a hard time and live with their wifeless and widowered father who run the house as he runs his ship. Maria however succeeds in bringing happiness and music back to the house. She and the Captain eventually start falling in love, but it cannot work out due to some certain reasons.', 'soundofmusic.mp4', 0),
(12, 'russialove.jpg', 'From Russia with Love', '1963', '1h 55min', 'James Bond 007 is on the search for a Russian decoding machine, known as \"Lektor\". Bond needs to find this machine, before the evil S.P.E.C.T.R.E. organization discovers it. While being romantically linked with Russian girl, Tatiana Romanova, Bond sneaks his way around Istanbul, while each S.P.E.C.T.R.E. Agent tries to pick him off, including the over powering Donald \"Red\" Grant and ex K.G.B. Agent Rosa Klebb, who knows all of the tricks in the book, and even possesses an incredible poison tipped shoe.', 'russialove.mp4', 1),
(13, 'willywonka.jpg', 'Willy Wonka and the Chocolate Factory', '1971', '1h 40min', 'The world is astounded when Willy Wonka, for years a recluse in his factory, announces that five lucky people will be given a tour of the factory, shown all the secrets of his amazing candy, and one will win a lifetime supply of Wonka chocolate. Nobody wants the prize more than young Charlie, but as his family is so poor that buying even one bar of chocolate is a treat, buying enough bars to find one of the five golden tickets is unlikely in the extreme. But in movieland, magic can happen. Charlie, along with four somewhat odious other children, get the chance of a lifetime and a tour of the factory. Along the way, mild disasters befall each of the odious children, but can Charlie beat the odds and grab the brass ring?', 'willywonka.mp4', 1),
(14, 'charlotteweb.jpg', 'Charlotte\'s Web', '1973', '1h 34min', 'Based on the beloved children\'s novel by E.B. White, this is the story of a little pig named Wilbur who was born a runt. Mr. Arable decides to kill him for dinner food but his daughter Fern begs him to let him live. On greater maturity, Wilbur is sold to Fern\'s uncle, Homer L. Zuckerman, in whose barnyard he\'s left yearning for friendship, but is snubbed by other barn animals. Wilbur is scared of the end of the season, because he knows that come that time, he will end up on the dinner table. He hatches a plan with Charlotte, a gentle and wise grey spider that lives in his pen, to ensure that this will never happen.', 'charlotteweb.mp4', 1),
(15, 'petesdragon.jpg', 'Petes Dragon', '1977', '2h 8min', 'In early-20th-century New England, 9-year-old orphan Pete escapes his brutal adoptive parents, the Gogans, with his only friend, a cartoon dragon named Elliott. They successfully escape to Passamaquoddy, Maine and live with lighthouse-keeper Nora and her father Lampie, but the corrupt Dr. Terminus seeks Elliott for medical purposes.', 'petesdragon.mp4', 1),
(16, 'godfather.jpg', 'The Godfather', '1972', '2h 55min', 'Michael, the young and idealistic son of Vito Corleone, the head of the most powerful Mafia clan in New York, returns home as a war hero and is determined to live his own life. But tragic circumstances make him face the legacy of his family.', 'godfather.mp4', 0),
(17, 'jaws.jpg', 'Jaws', '1975', '2h 4min', 'When a young women is killed out on the ocean, Cheif Police Martin Brody believes it was the works of a shark. Mayor Larry Vaughn refuses to close the beaches, which leads up to several deaths. With the help of archaeologist Matt Hooper and Captain Quint, Brody attempts to hunt down the shark.', 'jaws.mp4', 0),
(18, 'episodeiv.jpg', 'Starwars: Episode IV - A New Hope', '1977', '2h 1min', 'The Imperial Forces, under orders from cruel Darth Vader, hold Princess Leia hostage in their efforts to quell the rebellion against the Galactic Empire. Luke Skywalker and Han Solo, captain of the Millennium Falcon, work together with the companionable droid duo R2-D2 and C-3PO to rescue the beautiful princess, help the Rebel Alliance and restore freedom and justice to the Galaxy.', 'episodeiv.mp4', 0),
(19, 'goonies.jpg', 'The Goonies', '1985', '1h 54min', 'Mikey and his friends have always wanted to go on an adventure. One night they are all in Mikey\'s attic and Mikey stumbles across an old map. Mikey has always wanted to know if One-eyed Willy ever was a real person and now he might. They set off and later realize that they have to go through the evil Mama Fratelli\'s restaurant to get to a secret passage to the caves. As they try to get into the caves Mama Fratelli catches Chuck and he is left behind. He then meets Sloth one of Mama Fratelli\'s sons with a messed up face. He befriends Sloth. Meanwhile Mama Fratelli and her sons are trying to get to the treasure too.', 'goonies.jpg', 1),
(20, 'honeyshrunk.jpg', 'Honey I Shrunk the Kids', '1989', '1h 33min', 'The scientist father of a teenage girl and boy accidentally shrinks his and two other neighborhood teens to the size of insects. Now the teens must fight diminutive dangers as the father searches for them.', 'honeyshrunk.mp4', 1),
(21, 'mermaid.jpg', 'The Little Mermaid', '1989', '1h 23min', 'In Disney\'s beguiling animated romp, rebellious 16-year-old mermaid Ariel is fascinated with life on land. On one of her visits to the surface, which are forbidden by her controlling father, King Triton, she falls for a human prince. Determined to be with her new love, Ariel makes a dangerous deal with the sea witch Ursula to become human for three days. But when plans go awry for the star-crossed lovers, the king must make the ultimate sacrifice for his daughter.', 'mermaid.mp4', 1),
(22, 'backtofuture.jpg', 'Back to the Future', '1985', '1h 56min', 'Marty McFly, a typical American teenager of the Eighties, is accidentally sent back to 1955 in a plutonium-powered DeLorean \"time machine\" invented by a slightly mad scientist. During his often hysterical, always amazing trip back in time, Marty must make certain his teenage parents-to-be meet and fall in love - so he can get back to the future.', 'backtofuture.mp4', 0),
(23, 'big.jpg', 'Big', '1988', '1h 44min', 'Josh Baskin would do anything to be big to hang out with his crush at the carnival. He finds a Zoltar machine, and he wishes to be big. After Zoltar tells him, \"his wish is granted\", Josh notices the machine is unplugged. He wakes up the next morning in an adult\'s body but he still has the same personality. With the help of his best friend, Billy, Josh learns how to act like a grown up. But as he gets a girlfriend and a fun job, he doesn\'t want to be a kid again. Will Josh stay big or become a 13 year old boy again?', 'big.mp4', 0),
(24, 'breakfastclub.jpg', 'The Breakfast Club', '1985', '1h 37min', 'They were five students with nothing in common, faced with spending a Saturday detention together in their high school library. At 7 a.m., they had nothing to say, but by 4 p.m., they had bared their souls to each other and become good friends. To the outside world they were simply a Brain, an Athlete, a Basket Case, a Princess, and a Criminal, but to each other, they would always be the Breakfast Club.', 'breakfastclub.mp4', 0),
(25, 'homealone.jpg', 'Home Alone', '1990', '1h 43min', 'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.', 'homealone.mp4', 1),
(26, 'freewilly.jpg', 'Free Willy', '1993', '1h 52min ', 'When a boy learns that a beloved killer whale is to be killed by the aquarium owners, the boy risks everything to free the whale.', 'freewilly.mp4', 1),
(27, 'lionking.jpg', 'The Lion King', '1994', '1h 28min ', 'A Lion cub crown prince is tricked by a treacherous uncle into thinking he caused his father\'s death and flees into exile in despair, only to learn in adulthood his identity and his responsibilities.', 'lionking.mp4', 1),
(28, 'titanic.jpg', 'Titanic', '1997', '3h 14min', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 'titanic.mp4', 0),
(29, 'matrix.jpg', 'The Matrix', '1999', '2h 16min', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'matrix.mp4', 0),
(30, 'jurassicpark.jpg', 'Jurassic Park', '1993', '2h 7min', 'Huge advancements in scientific technology have enabled a mogul to create an island full of living dinosaurs. John Hammond has invited four individuals, along with his two grandchildren, to join him at Jurassic Park. But will everything go according to plan? A park employee attempts to steal dinosaur embryos, critical security systems are shut down and it now becomes a race for survival with dinosaurs roaming freely over the island.', 'jurassicpark.mp4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `tv_id` mediumint(8) UNSIGNED NOT NULL,
  `tv_cover` varchar(75) NOT NULL,
  `tv_title` varchar(125) NOT NULL,
  `tv_year` varchar(5) NOT NULL,
  `tv_runtime` varchar(25) NOT NULL,
  `tv_storyline` text NOT NULL,
  `tv_trailer` varchar(75) NOT NULL,
  `tv_kids` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `tv_cover`, `tv_title`, `tv_year`, `tv_runtime`, `tv_storyline`, `tv_trailer`, `tv_kids`) VALUES
(1, 'ilovelucy.jpg', 'I Love Lucy', '1951', '30min', 'Naive and ambitious but lacking the skill, Lucy\'s relentless efforts to get into showbiz often lands herself and her husband into trouble.Her neighbours and friends also get entangled in her antics.', 'ilovelucy.mp4', 1),
(2, 'fatherknowsbest.jpg', 'Father Knows Best', '1954', '30min', 'Jim Anderson copes with the everyday problems of his growing family.', 'fatherknowsbest.mp4', 1),
(3, 'honeymooners.jpg', 'The Honeymooners', '1955', '30min', 'Ralph, a New York bus driver, and his friend Ed try to make a better life for themselves while their wives patiently wait for them to find success.', 'honeymooners.mp4', 1),
(4, 'andygriffith.jpg', 'The Andy Griffith Show', '1960', '30min', 'Andy Taylor is the sheriff of a quiet sleepy town with little crime to solve. He lives with his son and his elderly aunt, and spends his time managing his son.', 'andygriffith.mp4', 1),
(5, 'beverly.jpg', 'The Beverly Hillbillies', '1962', '30min', 'A poor family that has recently acquired wealth moves to Beverly Hills, California. They cause quite a turmoil in their privileged society with their simple and unsophisticated way of living.', 'beveryly.mp4', 1),
(6, 'bewitched.jpg', 'Bewitched', '1964', '30min', 'Samantha falls in love with New York ad exec Darrin Stephens and marries him in the first episode of the sitcom. Then Darrin finds out that his new bride is one of a secret society of powerful witches and warlocks and that a twitch of her nose brings magic results. ', 'bewitched.mp4', 1),
(7, 'allinthefamily.jpg', 'All in the Family', '1971', '30min', '\"All in the Family\" is touted as the series that brought reality to prime-time TV entertainment. The lead character, Archie Bunker, is a loudmouthed, uneducated bigot who believes in every stereotype he has ever heard.', 'allinthefamily.mp4', 1),
(8, 'happydays.jpg', 'Happy Days', '1974', '30min', 'Set in 1950s and 1960s Milwaukee, this series tells the story of the Cunningham family -- father Howard, mother Marion, son Richie and daughter Joanie. Howard owns a hardware store, while Marion stays at home', 'happydays.mp4', 1),
(9, 'bradybunch.jpg', 'The Brady Bunch', '1974', '30min', 'Mike, an architect with three sons, and Carol, a homemaker with three daughters, get married but their children struggle to bond with each other, leading to a challenging life for the family.', 'bradybunch.mp4', 1),
(10, 'cheers.jpg', 'Cheers', '1982', '30min', 'A group of people from different paths of life meet at Cheers, a bar run by Sam in Boston. They share their experiences while working and drinking at the bar.', 'cheers.mp4', 1),
(11, 'cosby.jpg', 'The Cosby Show', '1984', '30min', 'The Cosby Show\" centers on the lives of the Huxtables: obstetrician Cliff and his lawyer wife Claire, their daughters Sondra, Denise, Vanessa and Rudy, and son Theo. Based on the standup comedy of Bill Cosby, the show focused on his observations of family life. ', 'cosby.mp4', 1),
(12, 'ateam.jpg', 'The A-Team', '1983', '30min', 'A team of ex-special forces soldiers on the lam from the military police (even though they didn\'t really commit the crime for which they\'d been imprisoned) leaves a trail of explosions in its wake. But Hannibal, Faceman, B.A. and Murdock always stop to help the little guy against some corrupt local bigwig before escaping the MPs once again.', 'ateam.mp4', 1),
(13, 'freshprince.jpg', 'The Fresh Prince of Bel-air', '1990', '30min', 'Will Smith more or less plays himself in this good-natured NBC sitcom. As the show\'s popular theme song explains, fictional Will\'s mom sends him away from his rough Philadelphia neighborhood to live with wealthy Uncle Phil and Aunt Vivian in Bel-Air. ', 'freshprince.mp4', 1),
(14, 'friends.jpg', 'Friends', '1994', '30min', 'Follow the lives of six reckless adults living in Manhattan, as they indulge in adventures which make their lives both troublesome and happening.', 'friends.mp4', 1),
(15, 'seinfeld.jpg', 'Seinfeld', '1998', '30min', 'Stand-up comedian Jerry Seinfeld wrestles with life\'s most perplexing yet trivial questions with his eccentric friends George, Elaine and Kramer.', 'seignfeld.mp4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL,
  `user_access` tinyint(4) NOT NULL,
  `user_admin` tinyint(4) NOT NULL,
  `user_finitial` varchar(5) NOT NULL,
  `user_avatar` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_access`, `user_admin`, `user_finitial`, `user_avatar`) VALUES
(1, 'Peter', 'peter', 'password', 'peter@peter.ca', '2020-01-23 23:20:30', '::1', 0, 0, 'P', 'peter.svg'),
(2, 'Tracie', 'tracie', 'password', 'tracie@tracie.ca', '2020-01-23 23:20:30', '::1', 0, 0, 'T', 'tracie.svg'),
(3, 'Paris', 'paris', 'password', 'paris@paris.ca', '2020-01-23 23:20:30', '::1', 1, 0, 'P', 'paris.svg'),
(4, 'Aidan', 'aidanleee', 'zaccaria', 'aidan@aidan.ca', '2020-01-23 23:20:30', '::1', 0, 1, 'A', 'aidan.svg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_audio`
--
ALTER TABLE `tbl_audio`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`tv_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_audio`
--
ALTER TABLE `tbl_audio`
  MODIFY `audio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `tv_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
