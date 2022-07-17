#!/bin/bash

for image in {*.jpg,*.png}
do
	if [ ${image##*-} == "logo.jpg" ] || [ $image == "4k-logo.png" ] || [ -e ${image%%.*}-logo.jpg ]
	then
		continue
	fi

	convert $image  4k-logo.png -geometry +3200  -composite ${image%%.*}-logo.jpg
done
