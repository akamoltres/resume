all: resume_v2

software_resume_macos: revision
	@pdflatex software_resume.tex

resume_v2_macos: revision
	@pdflatex resume_v2.tex

resume_v2: revision
	@sudo docker run -v miktex:/var/lib/miktex -v `pwd`:/miktex/work -e MIKTEX_UID=`id -u` miktex/miktex:essential pdflatex resume_v2.tex

revision:
	@./revision.sh

clean:
	@rm -rf *.aux
	@rm -rf *.log
	@rm -rf *.out
	@rm -rf *.pdf
	@rm -rf *.tmp
