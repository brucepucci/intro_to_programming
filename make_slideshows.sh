for file in ./Slides/md/*
do
	filename=${file##*/}
	basename="${filename%.*}"
	markdown-to-slides "$file" -t $basename -s ./Slides/css/custom.css -j ./Slides/js/slideshow.js -o "./Slides/html/${basename}.html"
done
