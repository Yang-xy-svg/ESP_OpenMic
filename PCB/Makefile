MAKEFLAGS += --silent -j20

all: png stl */README.md
	git lfs prune

stl:    Recorder/RecorderBatNoTag[BTC].stl

png:	$(patsubst %.kicad_pcb,%.png,$(wildcard */*.kicad_pcb))

PCBCase/case: PCBCase/case.c
	make -C PCBCase

PCBCase/clean: PCBCase/clean.c
	make -C PCBCase

%/README.md: %/*.kicad_pcb %/*.stl PCBCase/readme
	PCBCase/readme $@

%.stl: %.scad
	echo "Making $@"
	/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD $< -o $@
	echo "Made $@"

Recorder/RecorderBatNoTagB.scad: Recorder/Recorder.kicad_pcb PCBCase/case
	PCBCase/case -o $@ $< --edge=2 --bottom=7.5 --top=7 --pcb=2 --case=3 --split-file --date-x=5 --url-x=5 --logo-angle=90 --logo-x=15 --name=""

%.png:	%.kicad_pcb PCBCase/clean PCBCase/render
	PCBCase/render $<
