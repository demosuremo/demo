# REV08 Fri 14 Jan 2022 11:40:20 WIB
# REV07 Tue 03 Aug 2021 09:58:24 WIB
# REV06 Fri 23 Jul 2021 10:54:09 WIB
# REV05 Mon 19 Jul 2021 13:44:09 WIB
# REV04 Sun 04 Jul 2021 13:39:01 WIB
# START Mon 15 Feb 2021 09:41:08 WIB

ALL: 000.md

000.md: 000.pmd _config.yml Gemfile _layouts/default.html Makefile index.md about.md tips.md links.md \
        _includes/navbar.html \
        _includes/footer.html _includes/head.html _includes/google-analytics.html \
	assets/css/style.css assets/scripts/includeScript.py 
	python assets/scripts/includeScript.py < 000.pmd > 000.md

.phony: ALL

