


hallmark_strings <- c("someone \nencourages a \nrelationship with \nthe love interest",
"drinking \ncoffee",
"an awkward \nsituation",
"an almost \nkiss",
"someone has \na secret identity",
"aerial shot \nof small town \nor city",
"Chritmas \nsweaters",
"a reference to \nhow things \nare different in \na small town",
"main character \nis a journalist, \nbaker, or \nwedding planner",
"NYC, SF or \nLA is mentioned",
"ice skating, \nsledding, or \nskiing",
"the sheriff or \na doctor makes \nan appearance",
"love interests \nseeing one \nanother dressed \nup",
"someone living \nin a home they \nprobably can't \nafford",
"someone \nmisunderstands \na situation",
"you can name \nanother \nChristmas movie \none of the leads \nhas been in",
"amnesia",
"talking about \nthe meaning of \nChristmas",
"something \nclumsy happens",
"people coming \ntogether to \nsave the day",
"sharing holiday \nmemories",
"the town has \na silly name",
"someone doesn't \nhave enough \nmoney to do \nsomething",
"an old flame \nreappears",
"making a \nfamily recipe",
"hot cocoa",
"a small town \nbusiness is \nin trouble",
"decorating a \nChristmas tree",
"main character \nlost a spouse \nor parent",
"a former child \nstar is \nstarring",
"aloof \nboyfriend",
"aloof \ngirlfriend",
"IT'S \nSNOWING!",
"a cute pet dog",
"santa",
"airport scene",
"Carols \nsinging",
"flashback \nto childhood",
"random crafty \nskills",
"cozy sweaters",
"main character \ncan't stay \nin town \nfor long",
"small town \nChristmas \nevents",
"main character \nstressing \nabout work",
"unexpectedly \nrunning into \nthe love \ninterest",
"someone is \na Scrooge",
"women talking \nabout the \nlove interest",
"sipping wine",
"someone is \nscheming",
"a main character \nrecently gone \nthrough a \nbreakup",
"someone is \nwearing flannel",
"weather \ninterferes \nwith plans",
"someone is \nplanning a \nwedding",
"a home decked \nout with \ndecorations",
"someone runs \na local family \nbusiness",
"cozy fire",
"multiple \ngenerations of \na family together",
"big city \nboyfriend \nshows up",
"main character \ndoesn't like \nlove interest \nat first",
"someone else \nhas a crush \non the love \ninterest",
"a crisis at work",
"a tree lighting",
"talking about \nsomeone who \nis dead",
"mistletoe",
"someone reveals \ntheir dream job",
"love interest \nis a widow(er)",
"strolling \nthrough town",
"telling a \nstory about \nchildhood",
"love interests \nkiss!",
"main character \nis doctor or vet",
"flirty \nsnowball fight",
"single parent \nwith cute kid",
"fancy Christmas \nParty or Ball",
"car breaks \ndown",
"happy ending",
"main character \nwelcomed home \nby old \nacquaintance")


# "eggnog",
# "christmas \nshopping",
# "twinkle lights",
# "doing something \nnice for others",
# "playing in \nthe snow",
# "small town",


setwd('~/Documents/bingo')
num_cards <- 60

for (i in 1:num_cards){
	
pdf(paste0('card',i,'.pdf'))

hallmark_samp <- sample(1:length(hallmark_strings),25)
plot(-1, axes = 0,xlim=c(1.15,5.85),ylim=c(1.15,5.85),xlab='',ylab='')
for (i in 1:6){
	abline(h=i)
	abline(v=i)
	}

for (i in 1:5){
	for (j in 1:5){
		if(i==3 & j==3) next
	# text(x=i+0.2,y=j+0.9,label="wert\nwert\nwert\nwert",cex=1.2,pos=1,offset=0) #bingo_strings[5*i+j])
	ind <- hallmark_samp[5*(i-1)+j]
	text(x=i+0.05,y=j+0.9,label=hallmark_strings[ind],cex=0.8,adj=c(0,1),offset=0) # hallmark_strings[5*(i-1)+j+50]

		}
	}
text(3.5,3.6," __\n  ('v') \n--( : )-/\n   (  :  )  \n FREE")

dev.off()
}




