tesi.ps: tesi.tex cap_1.tex cap_2.tex app_a.tex biblio.tex \
	 ia_urb_thesis.sty logo_uniurb.eps Makefile
	latex tesi.tex
	latex tesi.tex
	dvips -o tesi.ps tesi.dvi
	gv tesi.ps &

tesi.pdf: tesi.tex cap_1.tex cap_2.tex app_a.tex biblio.tex \
	  ia_urb_thesis.sty logo_uniurb.eps Makefile
	latex tesi.tex
	latex tesi.tex
	dvipdfm -o tesi.pdf tesi.dvi
	acroread tesi.pdf &

clean:
	rm -f *.toc *.lof *.lot *.aux *.log *.dvi

cleanall:
	rm -f *.ps *.pdf *.toc *.lof *.lot *.aux *.log *.dvi
