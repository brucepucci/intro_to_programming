for file in ./Slides/md/*
do
	filename=${file##*/}
	basename="${filename%.*}"
	markdown-to-slides "$file" -i -t $basename -s ./Slides/css/custom.css -j ./Slides/js/slideshow.js -o "/Users/brucepucci/Desktop/brucepucci.github.io/${basename}.html"
done
