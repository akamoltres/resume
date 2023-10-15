sudo docker run -ti -v miktex:/var/lib/miktex -v `pwd`:/miktex/work -e MIKTEX_UID=`id -u` miktex/miktex:essential pdflatex resume.tex
sudo docker run -ti -v miktex:/var/lib/miktex -v `pwd`:/miktex/work -e MIKTEX_UID=`id -u` miktex/miktex:essential pdflatex software_resume.tex
sudo docker run -ti -v miktex:/var/lib/miktex -v `pwd`:/miktex/work -e MIKTEX_UID=`id -u` miktex/miktex:essential pdflatex cv.tex
sudo docker run -ti -v miktex:/var/lib/miktex -v `pwd`:/miktex/work -e MIKTEX_UID=`id -u` miktex/miktex:essential pdflatex fullversion.tex
