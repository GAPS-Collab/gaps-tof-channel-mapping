all:
	make pull
	make parse

pull:
	@wget --output-document="mapping.csv" \
		"https://docs.google.com/spreadsheets/d/1i41fsmLf7IjfYbr1coTo9V4uk3t1GXAGgt0aOeCkeeA/export?format=csv&gid=0"
	@yq mapping.csv -ojson | jq 'del(.[0])' > mapping.json

parse:
	@python schema.py | jq '.mapping' | tee mapping-validated.json
