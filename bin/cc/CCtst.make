YACC =  BYacc
CPlusOptions = -y MacOS:Temp: -model far -i "/:cgt:include"
LFLAGS =
YFLAGS = -dv
LIBS = "/:cgt:lib:LibCGT.o" �
		"/:cgt:lib:LibInteger.o" �
		"/:cgt:lib:LibFloat.o"
MPWLIBS = �
		"/:cgt:lib:LibMalloc.o" �
		"{CLibraries}"CSANELib.o �
		#"{CLibraries}"Math.o �
		"{CLibraries}"CplusLib.o �
		#"{CLibraries}"Complex.o �
		"{CLibraries}"StdCLib.o �
		#"{Libraries}"Stubs.o �
		"{Libraries}"Runtime.o �
		"{Libraries}"Interface.o �
		#"{Libraries}"ToolLibs.o

.cp.o   �    .cc
        {Cplus} {CPlusOptions} {DepDir}{Default}.cc -o {TargDir}{Default}.cp.o

FILES = Makefile cppdefs.h cpp.h globals.h error.h �
	cc.h ccsym.h cctype.h ccnode.h cctree.h �
	globals.cc cppmain.cc cppscan.cc cppimpl.cc cppif.cc �
	cppmac.cc cppdir.cc error.cc �
	ccgram.w ccmain.cc cckey.cc ccsym.cc cctype.cc cctype2.cc �
	ccrules.cc ccstor.cc ccimpl.cc ccdebug.cc ccnode.cc ccnode2.cc �
	ccnode3.cc cceval.cc ccinit.cc cctree.cc cctree2.cc
CPPOBJS = cppscan.cp.o cppimpl.cp.o cppif.cp.o cppmac.cp.o error.cp.o globals.cp.o cppdir.cp.o 
COBJS = parser.cp.o cckey.cp.o ccsym.cp.o cctype.cp.o cctype2.cp.o ccrules.cp.o �
	ccstor.cp.o ccimpl.cp.o ccnode.cp.o ccnode2.cp.o ccnode3.cp.o cceval.cp.o ccinit.cp.o ccdebug.cp.o �
	dummy.cp.o

CCtst	�� {COBJS} {CPPOBJS} cctst.cp.o
	Link -model far -d -c 'MPS ' -t MPST {COBJS} {CPPOBJS} cctst.cp.o �
		{MPWLIBS} {LIBS} -o CCtst

cctst.cp.o	� cctst.cc cc.h ccsym.h cpp.h

CPPtst	�� cppmain.cp.o {CPPOBJS}
	Link -model far -d -c 'MPS ' -t MPST {CPPOBJS} cppmain.cp.o �
		{MPWLIBS} {LIBS} -o CPPtst
	CPPtst testcpp.h >tst.out
	Compare tst.out testcpp.good

cppmain.cp.o	�	cppmain.cc cpp.h cppdefs.h

globals.cp.o	� globals.h
cppscan.cp.o	� cppscan.cc cpp.h cppdefs.h
cppimpl.cp.o	� cppimpl.cc cpp.h cppdefs.h
cppmac.cp.o		� cppmac.cc cpp.h cppdefs.h
cppdir.cp.o		� cppdir.cc cpp.h cppdefs.h
cppif.cp.o		� cppif.cc cpp.h cppdefs.h
error.cp.o		� error.cc error.h cpp.h cppdefs.h
ytab.cp.o		� ytab.cc cpp.h cppdefs.h cc.h ccsym.h ccnode.h cctype.h
ytab.cc			� ccgram.y
		{YACC} {YFLAGS} ccgram.y
		Rename -y y.tab.h ytab.h
		Rename -y y.tab.c ytab.cc
		Rename -y y.output ytab.out
#ytab.h			� ytab.cp
parser.cc		� ccgram.w
		Wacco ccgram.w
parser.cp.o		� parser.cc tokens.h cc.h cpp.h cppdefs.h ccnode.h cctype.h
cckey.cp.o		� cckey.cc cc.h tokens.h
ccsym.cp.o		� ccsym.cc ccsym.h ccnode.h cctype.h
cctype.cp.o		� cctype.cc cctype.h ccsym.h cc.h cpp.h cppdefs.h
cctype2.cp.o	� cctype2.cc cctype.h ccsym.h cc.h cpp.h cppdefs.h
ccrules.cp.o	� ccrules.cc cctype.h ccsym.h ccnode.h cc.h cpp.h cppdefs.h
ccstor.cp.o		� ccstor.cc cctype.h ccsym.h ccnode.h cc.h cpp.h cppdefs.h
ccimpl.cp.o		� ccimpl.cc cctype.h ccsym.h ccnode.h cc.h cpp.h cppdefs.h
ccnode.cp.o		� ccnode.cc cctype.h ccsym.h ccnode.h cc.h cpp.h cppdefs.h
ccnode2.cp.o	� ccnode2.cc cctype.h ccsym.h ccnode.h cc.h cpp.h cppdefs.h
ccnode3.cp.o	� ccnode3.cc cctype.h ccsym.h ccnode.h cc.h cpp.h cppdefs.h
cceval.cp.o		� cceval.cc cctype.h ccsym.h ccnode.h cc.h cpp.h cppdefs.h
ccinit.cp.o		� ccinit.cc cctype.h ccsym.h ccnode.h cc.h cpp.h cppdefs.h
cctree.cp.o		� cctree.cc cctree.h cctype.h ccsym.h ccnode.h cc.h cpp.h cppdefs.h
cctree2.cp.o	� cctree2.cc cctree.h cctype.h ccsym.h ccnode.h cc.h cpp.h cppdefs.h
ccdebug.cp.o	� ccdebug.cc cctype.h ccsym.h ccnode.h cc.h
