
ALL : OpenLetterToOpenMindedProgressives.epub OpenLetterToOpenMindedProgressives.mobi OpenLetterToOpenMindedProgressives.pdf

OpenLetterToOpenMindedProgressives.epub : 
	rm -f OpenLetterToOpenMindedProgressives.epub
	zip -X0 OpenLetterToOpenMindedProgressives.epub mimetype
	zip -Xur9D OpenLetterToOpenMindedProgressives.epub META-INF/* OEBPS/*

OpenLetterToOpenMindedProgressives.mobi : OpenLetterToOpenMindedProgressives.epub
	rm -f OpenLetterToOpenMindedProgressives.mobi
	ebook-convert OpenLetterToOpenMindedProgressives.epub OpenLetterToOpenMindedProgressives.mobi

OpenLetterToOpenMindedProgressives.pdf : OpenLetterToOpenMindedProgressives.epub
	rm -f OpenLetterToOpenMindedProgressives.pdf
	ebook-convert OpenLetterToOpenMindedProgressives.epub OpenLetterToOpenMindedProgressives.pdf --embed-all-fonts --margin-left 24 --margin-top 24 --margin-right 24 --margin-bottom 24 --minimum-line-height 160

