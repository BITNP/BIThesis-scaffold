# This script convert all PDF covers to PNG format.

ls */main.pdf | sed -r 's|/[^/]+$||' | sort | uniq | xargs -I {} convert -density 300 "../{}/main.pdf[0]" -quality 100 "{}.png"
