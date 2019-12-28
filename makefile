all: README.md

README.md: guessinggame.sh
	echo "# A Unix Workbench: Assignment.\n" > README.md
	echo "**Date** and  **Time** at which *make* was run: " >> README.md
	touch hist_data.txt
	echo "\`\`\`" >> README.md
	date +%Y-%m-%d:%H:%M:%S >> README.md
	echo "\`\`\`" >> README.md
	echo "Number of lines in *guessinggame.sh* are:" >> README.md
	echo "\`\`\`" >> README.md
	grep "" -c guessinggame.sh >> README.md
	echo "\`\`\`" >> README.md
	rm hist_data.txt
