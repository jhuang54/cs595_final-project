
CFLAGS	        = -g
FFLAGS	        =
CPPFLAGS        =
FPPFLAGS        =
LOCDIR          = src/ts/examples/tutorials/power_grid/stability_9bus/
EXAMPLESC       =  9bus_dm1_l2_new.c 
EXAMPLESF       =
EXAMPLESFH      =
MANSEC          = TS
DIRS            =

include ${PETSC_DIR}/lib/petsc/conf/variables
include ${PETSC_DIR}/lib/petsc/conf/rules


9bus_dm1_l2_new: 9bus_dm1_l2_new.o  chkopts
	-${CLINKER} -o 9bus_dm1_l2_new 9bus_dm1_l2_new.o  ${PETSC_TS_LIB}
	${RM} 9bus_dm1_l2_new.o
	


clean_files:
	${RM} ex9busopt.o
	-@${RM} ex9bus-SA-*

TESTEXAMPLES_DOUBLEINT32 = ex9bus.PETSc runex9bus ex9bus.rm ex9busadj.PETSc runex9busadj ex9busadj.rm ex9busopt.PETSc runex9busopt ex9busopt.rm ex9busopt_fd.PETSc runex9busopt_fd ex9busopt_fd.rm

include ${PETSC_DIR}/lib/petsc/conf/test
