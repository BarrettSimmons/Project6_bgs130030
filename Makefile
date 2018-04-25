#
# Barrett Simmons
# bgs130030
# cs3377.502 
# bgs130030@utdallas.edu
#

CXX = g++
CXXFLAGS = -Wall -g -std=c++11
CPPFLAGS = -I/scratch/perkins/include
LDFLAGS = -L/scratch/perkins/lib
LDLIBS = -lcdk -lcurses 


EXECFILE = cdkexample

OBJS = cdkexample.o


all: $(EXECFILE)

clean:
	rm -f $(OBJS) $(EXECFILE) *.P *~ \#*


$(EXECFILE): $(OBJS)
	git pull
	$(CXX) -o $@ $(OBJS) $(LDFLAGS) $(LDLIBS)

backup:
	mkdir -p backup/
	cp cdkexample Makefile cdkexample.cc backup/

