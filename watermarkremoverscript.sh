#sed -e "s/For personal, non-commercial use only. Do not edit, alter or reproduce. For commercial reproduction or distribution, contact Dow Jones Reprints & Licensing at \\\(800\\\) 843-0008 or/ /g" -e "s/www.djreprints.com./ /g" -e "s/.F.o.r. .p.e.r.s.o.n.a.l.,/ /g" -e "s/. .n.o.n.-.c.o.m.m.e.r.c.i.a.l. .u.s.e. .o.n.l.y../ /g" <20201112_TheWallStreetJournal_uncompress.pdf > 20201112_TheWallStreetJournal_uncompress_watermark_free.pdf  


#Save pdftf script

# pdftk doc.pdf output doc.unc.pdf uncompress

#pdftk wallstreetjournal_20201112_TheWallStreetJournal.pdf output c uncompress

#pdftk 20201112_TheWallStreetJournal_uncompress_watermark_free.pdf output 20201112_TheWallStreetJournal.pdf compress

#rm 20201112_TheWallStreetJournal_uncompress.pdf
#TheWallStreetJournal_uncompress_watermark_free.pdf  



# New Lines of thinking

#Save pdftf script

# pdftk doc.pdf output doc.unc.pdf uncompress

fileName="wallstreetjournal_20201111_TheWallStreetJournal.pdf"
mv $fileName input.pdf

pdftk input.pdf output uncompress.pdf uncompress
rm input.pdf

sed -e "s/For personal, non-commercial use only. Do not edit, alter or reproduce. For commercial reproduction or distribution, contact Dow Jones Reprints & Licensing at \\\(800\\\) 843-0008 or/ /g" -e "s/www.djreprints.com./ /g" -e "s/.F.o.r. .p.e.r.s.o.n.a.l.,/ /g" -e "s/. .n.o.n.-.c.o.m.m.e.r.c.i.a.l. .u.s.e. .o.n.l.y../ /g" <uncompress.pdf > watermark_free_ucfile.pdf

rm uncompress.pdf

pdftk watermark_free_ucfile.pdf output $fileName compress

rm watermark_free_ucfile.pdf
