
#!/bin/bash

# vim copy all lines: ggVGy
# vim paste: "+p

file_count() {
	local DIR=$1
	echo "${DIR}:"
	ls $DIR/ | wc -l
}

file_count $1
