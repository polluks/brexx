//BRXGEN   JOB CLASS=C,REGION=0K
//*
//BRXCMP   PROC BRXPREF='BREXX',MEMBER='',GCCPREF='GCC',
// PDPPREF='PDPCLIB',
// COS1='-Os -S -DHAVE_CONFIG_H',
// COS2='-o dd:out -'
//*
//COMP     EXEC PGM=GCC,
// PARM='&COS1 &COS2'
//STEPLIB  DD DSN=&GCCPREF..LINKLIB,DISP=SHR
//SYSIN    DD DSN=&BRXPREF..SOURCE(&MEMBER),DISP=SHR
//INCLUDE  DD DSN=&BRXPREF..INCLUDE,DISP=SHR,DCB=BLKSIZE=32720
//         DD DSN=&PDPPREF..INCLUDE,DISP=SHR
//SYSINCL  DD DSN=&BRXPREF..INCLUDE,DISP=SHR,DCB=BLKSIZE=32720
//         DD DSN=&PDPPREF..INCLUDE,DISP=SHR
//OUT      DD DSN=&&TEMP1,DISP=(,PASS),UNIT=SYSALLDA,
//            DCB=(LRECL=80,BLKSIZE=6080,RECFM=FB),
//            SPACE=(6080,(500,500))
//SYSPRINT DD SYSOUT=*,DCB=(RECFM=F,LRECL=132,BLKSIZE=132)
//SYSTERM  DD SYSOUT=*,DCB=(RECFM=F,LRECL=132,BLKSIZE=132)
//*
//ASM      EXEC PGM=ASMBLR,
//            PARM='DECK,NOLIST',
//            COND=(4,LT,COMP)
//SYSLIB   DD DSN=SYS1.MACLIB,DISP=SHR,DCB=BLKSIZE=32720
//         DD DSN=&PDPPREF..MACLIB,DISP=SHR
//SYSUT1   DD UNIT=SYSALLDA,SPACE=(CYL,(2,1))
//SYSUT2   DD UNIT=SYSALLDA,SPACE=(CYL,(2,1))
//SYSUT3   DD UNIT=SYSALLDA,SPACE=(CYL,(2,1))
//SYSPRINT DD SYSOUT=*
//SYSLIN   DD DUMMY
//SYSGO    DD DUMMY
//SYSPUNCH DD DSN=&&OBJSET,UNIT=SYSALLDA,SPACE=(80,(240,200)),
//            DISP=(,PASS)
//SYSIN    DD DSN=&&TEMP1,DISP=(OLD,DELETE)
//*
//LKED     EXEC PGM=IEWL,PARM='NCAL',
//            COND=((4,LT,COMP),(4,LT,ASM))
//SYSLIN   DD DSN=&&OBJSET,DISP=(OLD,DELETE)
//SYSLMOD  DD DSN=&BRXPREF..NCALIB(&MEMBER),DISP=SHR
//SYSUT1   DD UNIT=SYSALLDA,SPACE=(CYL,(2,1))
//SYSPRINT DD SYSOUT=*
//         PEND
//*
//ADDRESS  EXEC BRXCMP,MEMBER=ADDRESS
//BINTREE  EXEC BRXCMP,MEMBER=BINTREE 
//BMEM     EXEC BRXCMP,MEMBER=BMEM    
//BUILTIN  EXEC BRXCMP,MEMBER=BUILTIN 
//COMPILE  EXEC BRXCMP,MEMBER=COMPILE 
//DQUEUE   EXEC BRXCMP,MEMBER=DQUEUE  
//ERROR    EXEC BRXCMP,MEMBER=ERROR   
//EXPR     EXEC BRXCMP,MEMBER=EXPR    
//INTERPRE EXEC BRXCMP,MEMBER=INTERPRE
//MAIN     EXEC BRXCMP,MEMBER=MAIN    
//NEXTSYMB EXEC BRXCMP,MEMBER=NEXTSYMB
//REXX     EXEC BRXCMP,MEMBER=REXX    
//REXXFUNC EXEC BRXCMP,MEMBER=REXXFUNC
//RXCONV   EXEC BRXCMP,MEMBER=RXCONV  
//RXFILES  EXEC BRXCMP,MEMBER=RXFILES 
//RXMATH   EXEC BRXCMP,MEMBER=RXMATH  
//RXSTR    EXEC BRXCMP,MEMBER=RXSTR   
//RXWORD   EXEC BRXCMP,MEMBER=RXWORD  
//STACK    EXEC BRXCMP,MEMBER=STACK   
//TEMPLATE EXEC BRXCMP,MEMBER=TEMPLATE
//TRACE    EXEC BRXCMP,MEMBER=TRACE   
//VARIABLE EXEC BRXCMP,MEMBER=VARIABLE
//EXTRA    EXEC BRXCMP,MEMBER=EXTRA
//*
//
