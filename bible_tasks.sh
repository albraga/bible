#!/bin/bash
for argument in "$@"
do
case $argument in
	allbooks)
		awk /^.*\"1chr_.*$/ port.json > 1chr.json
		awk /^.*\"1cor_.*$/ port.json > 1cor.json
		awk /^.*\"1john_.*$/ port.json > 1john.json
		awk /^.*\"1kgs_.*$/ port.json > 1kgs.json
		awk /^.*\"1pet_.*$/ port.json > 1pet.json
		awk /^.*\"1sam_.*$/ port.json > 1sam.json
		awk /^.*\"1thess_.*$/ port.json > 1thess.json
		awk /^.*\"1tim_.*$/ port.json > 1tim.json
		awk /^.*\"2chr_.*$/ port.json > 2chr.json
		awk /^.*\"2cor_.*$/ port.json > 2cor.json
		awk /^.*\"2john_.*$/ port.json > 2john.json
		awk /^.*\"2kgs_.*$/ port.json > 2kgs.json
		awk /^.*\"2pet_.*$/ port.json > 2pet.json
		awk /^.*\"2sam_.*$/ port.json > 2sam.json
		awk /^.*\"2thess_.*$/ port.json > 2thess.json
		awk /^.*\"2tim_.*$/ port.json > 2tim.json
		awk /^.*\"3john_.*$/ port.json > 3john.json
		awk /^.*\"acts_.*$/ port.json > acts.json
		awk /^.*\"amos_.*$/ port.json > amos.json
		awk /^.*\"col_.*$/ port.json > col.json
		awk /^.*\"dan_.*$/ port.json > dan.json
		awk /^.*\"deut_.*$/ port.json > deut.json
		awk /^.*\"eccl_.*$/ port.json > eccl.json
		awk /^.*\"eph_.*$/ port.json > eph.json
		awk /^.*\"esth_.*$/ port.json > esth.json
		awk /^.*\"exod_.*$/ port.json > exod.json
		awk /^.*\"ezek_.*$/ port.json > ezek.json
		awk /^.*\"ezra_.*$/ port.json > ezra.json
		awk /^.*\"gal_.*$/ port.json > gal.json
		awk /^.*\"gen_.*$/ port.json > gen.json
		awk /^.*\"hab_.*$/ port.json > hab.json
		awk /^.*\"hag_.*$/ port.json > hag.json
		awk /^.*\"heb_.*$/ port.json > heb.json
		awk /^.*\"hos_.*$/ port.json > hos.json
		awk /^.*\"isa_.*$/ port.json > isa.json
		awk /^.*\"jas_.*$/ port.json > jas.json
		awk /^.*\"jer_.*$/ port.json > jer.json
		awk /^.*\"job_.*$/ port.json > job.json
		awk /^.*\"joel_.*$/ port.json > joel.json
		awk /^.*\"john_.*$/ port.json > john.json
		awk /^.*\"jonah_.*$/ port.json > jonah.json
		awk /^.*\"josh_.*$/ port.json > josh.json
		awk /^.*\"jude_.*$/ port.json > jude.json
		awk /^.*\"judg_.*$/ port.json > judg.json
		awk /^.*\"lam_.*$/ port.json > lam.json
		awk /^.*\"lev_.*$/ port.json > lev.json
		awk /^.*\"luke_.*$/ port.json > luke.json
		awk /^.*\"mal_.*$/ port.json > mal.json
		awk /^.*\"mark_.*$/ port.json > mark.json
		awk /^.*\"matt_.*$/ port.json > matt.json
		awk /^.*\"mic_.*$/ port.json > mic.json
		awk /^.*\"nah_.*$/ port.json > nah.json
		awk /^.*\"neh_.*$/ port.json > neh.json
		awk /^.*\"num_.*$/ port.json > num.json
		awk /^.*\"obad_.*$/ port.json > obad.json
		awk /^.*\"phil_.*$/ port.json > phil.json
		awk /^.*\"phlm_.*$/ port.json > phlm.json
		awk /^.*\"prov_.*$/ port.json > prov.json
		awk /^.*\"ps_.*$/ port.json > ps.json
		awk /^.*\"rev_.*$/ port.json > rev.json
		awk /^.*\"rom_.*$/ port.json > rom.json
		awk /^.*\"ruth_.*$/ port.json > ruth.json
		awk /^.*\"song_.*$/ port.json > song.json
		awk /^.*\"titus_.*$/ port.json > titus.json
		awk /^.*\"zech_.*$/ port.json > zech.json
		awk /^.*\"zeph_.*$/ port.json > zeph.json
	;;
	#insert curly braces at beginning of file
	insertbrace)
		sed -i '1s/^/{/' 1chr.json
		sed -i '1s/^/{/' 1cor.json
		sed -i '1s/^/{/' 1john.json
		sed -i '1s/^/{/' 1kgs.json
		sed -i '1s/^/{/' 1pet.json
		sed -i '1s/^/{/' 1sam.json
		sed -i '1s/^/{/' 1thess.json
		sed -i '1s/^/{/' 1tim.json
		sed -i '1s/^/{/' 2chr.json
		sed -i '1s/^/{/' 2cor.json
		sed -i '1s/^/{/' 2john.json
		sed -i '1s/^/{/' 2kgs.json
		sed -i '1s/^/{/' 2pet.json
		sed -i '1s/^/{/' 2sam.json
		sed -i '1s/^/{/' 2thess.json
		sed -i '1s/^/{/' 2tim.json
		sed -i '1s/^/{/' 3john.json
		sed -i '1s/^/{/' acts.json
		sed -i '1s/^/{/' amos.json
		sed -i '1s/^/{/' col.json
		sed -i '1s/^/{/' dan.json
		sed -i '1s/^/{/' deut.json
		sed -i '1s/^/{/' eccl.json
		sed -i '1s/^/{/' eph.json
		sed -i '1s/^/{/' esth.json
		sed -i '1s/^/{/' exod.json
		sed -i '1s/^/{/' ezek.json
		sed -i '1s/^/{/' ezra.json
		sed -i '1s/^/{/' gal.json
		sed -i '1s/^/{/' gen.json
		sed -i '1s/^/{/' hab.json
		sed -i '1s/^/{/' hag.json
		sed -i '1s/^/{/' heb.json
		sed -i '1s/^/{/' hos.json
		sed -i '1s/^/{/' isa.json
		sed -i '1s/^/{/' jas.json
		sed -i '1s/^/{/' jer.json
		sed -i '1s/^/{/' job.json
		sed -i '1s/^/{/' joel.json
		sed -i '1s/^/{/' john.json
		sed -i '1s/^/{/' jonah.json
		sed -i '1s/^/{/' josh.json
		sed -i '1s/^/{/' jude.json
		sed -i '1s/^/{/' judg.json
		sed -i '1s/^/{/' lam.json
		sed -i '1s/^/{/' lev.json
		sed -i '1s/^/{/' luke.json
		sed -i '1s/^/{/' mal.json
		sed -i '1s/^/{/' mark.json
		sed -i '1s/^/{/' matt.json
		sed -i '1s/^/{/' mic.json
		sed -i '1s/^/{/' nah.json
		sed -i '1s/^/{/' neh.json
		sed -i '1s/^/{/' num.json
		sed -i '1s/^/{/' obad.json
		sed -i '1s/^/{/' phil.json
		sed -i '1s/^/{/' phlm.json
		sed -i '1s/^/{/' prov.json
		sed -i '1s/^/{/' ps.json
		sed -i '1s/^/{/' rev.json
		sed -i '1s/^/{/' rom.json
		sed -i '1s/^/{/' ruth.json
		sed -i '1s/^/{/' song.json
		sed -i '1s/^/{/' titus.json
		sed -i '1s/^/{/' zech.json
		sed -i '1s/^/{/' zeph.json
	;;
	changeatend)
		sed -i '$s/,$/}/' 1chr.json
		sed -i '$s/,$/}/' 1cor.json
		sed -i '$s/,$/}/' 1john.json
		sed -i '$s/,$/}/' 1kgs.json
		sed -i '$s/,$/}/' 1pet.json
		sed -i '$s/,$/}/' 1sam.json
		sed -i '$s/,$/}/' 1thess.json
		sed -i '$s/,$/}/' 1tim.json
		sed -i '$s/,$/}/' 2chr.json
		sed -i '$s/,$/}/' 2cor.json
		sed -i '$s/,$/}/' 2john.json
		sed -i '$s/,$/}/' 2kgs.json
		sed -i '$s/,$/}/' 2pet.json
		sed -i '$s/,$/}/' 2sam.json
		sed -i '$s/,$/}/' 2thess.json
		sed -i '$s/,$/}/' 2tim.json
		sed -i '$s/,$/}/' 3john.json
		sed -i '$s/,$/}/' acts.json
		sed -i '$s/,$/}/' amos.json
		sed -i '$s/,$/}/' col.json
		sed -i '$s/,$/}/' dan.json
		sed -i '$s/,$/}/' deut.json
		sed -i '$s/,$/}/' eccl.json
		sed -i '$s/,$/}/' eph.json
		sed -i '$s/,$/}/' esth.json
		sed -i '$s/,$/}/' exod.json
		sed -i '$s/,$/}/' ezek.json
		sed -i '$s/,$/}/' ezra.json
		sed -i '$s/,$/}/' gal.json
		sed -i '$s/,$/}/' gen.json
		sed -i '$s/,$/}/' hab.json
		sed -i '$s/,$/}/' hag.json
		sed -i '$s/,$/}/' heb.json
		sed -i '$s/,$/}/' hos.json
		sed -i '$s/,$/}/' isa.json
		sed -i '$s/,$/}/' jas.json
		sed -i '$s/,$/}/' jer.json
		sed -i '$s/,$/}/' job.json
		sed -i '$s/,$/}/' joel.json
		sed -i '$s/,$/}/' john.json
		sed -i '$s/,$/}/' jonah.json
		sed -i '$s/,$/}/' josh.json
		sed -i '$s/,$/}/' jude.json
		sed -i '$s/,$/}/' judg.json
		sed -i '$s/,$/}/' lam.json
		sed -i '$s/,$/}/' lev.json
		sed -i '$s/,$/}/' luke.json
		sed -i '$s/,$/}/' mal.json
		sed -i '$s/,$/}/' mark.json
		sed -i '$s/,$/}/' matt.json
		sed -i '$s/,$/}/' mic.json
		sed -i '$s/,$/}/' nah.json
		sed -i '$s/,$/}/' neh.json
		sed -i '$s/,$/}/' num.json
		sed -i '$s/,$/}/' obad.json
		sed -i '$s/,$/}/' phil.json
		sed -i '$s/,$/}/' phlm.json
		sed -i '$s/,$/}/' prov.json
		sed -i '$s/,$/}/' ps.json
		sed -i '$s/,$/}/' rev.json
		sed -i '$s/,$/}/' rom.json
		sed -i '$s/,$/}/' ruth.json
		sed -i '$s/,$/}/' song.json
		sed -i '$s/,$/}/' titus.json
		sed -i '$s/,$/}/' zech.json
		sed -i '$s/,$/}/' zeph.json
	;;
	deletelines)
		sed -i '/"ruth_.*$/d' port.json
	;;
	#the-first-letter-of-every-line-in-a-file-to-lowercase
	tolower)
		sed  's/[[:alpha:]]/\l&/' port.json > _port.json
	;;
	removeupto)
		sed -i '/1<\/a><\/h3>/,$!d' $2
	;;
	removeuptoincluding)
		sed -i '0,/1<\/a><\/h3>/d' $2
	;;
	changeline)
		sed -i 's/ALTERADOMUDADO0./ok/g' gen001.htm
	;;
	changetags)
		sed -i 's/<p>/gen_1_/g' $2
	;;
	removetags)
		sed -i 's/<[^>]*>//g' $2
	;;
	becomeinitialcommit)
		rm -rf .git
		git init
		git add --all
		git commit -m "become initial commit"
		git remote add origin https://github.com/albraga/bible.git
		git push -u --force origin master
	;;
	judg)
		awk /^.*\"judg_.*$/ port.json > judg.json
		sed -i '/"judg_.*$/d' port.json #delete lines
	;;
	deut2ruth)
		awk /^.*\"deut_.*$/ port.json > deut.json
		awk /^.*\"josh_.*$/ port.json > josh.json
		awk /^.*\"ruth_.*$/ port.json > ruth.json
	;;
	num)
		awk /^.*\"num_.*$/ port.json > num.json
	;;
	lev)
		awk /^.*\"lev.*$/ port.json > lev.json
	;;
	exod)
		awk /^.*\"exod.*$/ port.json > exod.json
	;;
	gen)
		awk /^.*\"Gen.*$/ port.json > gen.json
	;;
esac
done

#all lines which contain a specific string  ^.*("Gen.).*$

#empty lines ^[\n\r]

#FROM: \.(?=\d) change dot preceded by number
#TO: _