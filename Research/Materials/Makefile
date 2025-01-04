convert_templates:
	for i in *.tmpl.md ; do \
		bn="$$(basename "$$i" .tmpl.md)" ; \
		../../.bin/inject_text.sh "$$i" > "$$bn.md" ; \
	done
