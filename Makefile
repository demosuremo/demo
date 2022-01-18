# REV03 Tue 18 Jan 2022 03:53:32 WIB
# REV02 Sat 15 Jan 2022 11:27:24 WIB
# REV01 Fri 14 Jan 2022 11:40:20 WIB
# START Mon 15 Feb 2021 09:41:08 WIB

ALL: 000.md 001.md 002.md

000.md: 000.pmd _config.yml Gemfile _layouts/default.html Makefile index.md about.md tips.md links.md \
        _includes/navbar.html \
        _includes/footer.html _includes/head.html _includes/google-analytics.html \
	assets/css/style.css assets/scripts/includeScript.py 
	python assets/scripts/includeScript.py < 000.pmd > 000.md

001.md: 001.pmd
	python assets/scripts/includeScript.py < 001.pmd > 001.md

002.md: 002.pmd SCRIPT/set.gitconfig SCRIPT/set.backup SCRIPT/set.rsync
	python assets/scripts/includeScript.py < 002.pmd > 002.md

.phony: ALL

