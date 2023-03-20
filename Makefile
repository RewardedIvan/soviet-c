# omg this is a mess, please look away or close this file
bin := bin
mainbin := ${bin}/o.exe
prfx := "===="
sufx := "===="

dirs:
	@echo "${prfx}mkdir${sufx}"
	mkdir ${bin} &

build: dirs
	@echo "${prfx}build${sufx}"
	cp ?pcc.c ${bin}/pcc.c
	gcc ${bin}/pcc.c -o ${mainbin}

run: build
	@echo "${prfx}${mainbin}${sufx}"
	@${mainbin}

runc: clean run

clean:
	@echo "${prfx}clean${sufx}"
	rm -rf ${bin}