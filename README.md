# brexx
                                                                        o o
                                                                      ____oo_
                                 R  E  X  X               1992-2020  /||    |\
                                  Ver. 2.x                   BNV      ||    |
                                 for  MSDOS                MARMITA    `.___.'
                                  and Unix                   SOFT


                 Author.........Vasilis N. Vlachoudis
                 Address........19Q rue du Jura
                                St.Genis-Pouilly F-1630
                                France
                 Computer addr..Vasilis.Vlachoudis@cern.ch
                 Http addr......http://home.cern.ch/bnv
                 Last updated...Jun-2011


     What is REXX?
     ~~~~~~~~~~~~~
         REXX is a programming language designed by Michael Cowlishaw of
     IBM UK Laboratories.  In his own words:  "REXX is a procedural
     language that allows programs and algorithms to be written in a
     clear and structured way."

         Syntactically, REXX doesn't look that different from any other
     procedural language.  Here's a simple REXX program:

                 /* Count some numbers */

                 say "Counting..."
                 do i = 1 to 10
                     say "Number" i
                 end

         What makes REXX different from most other languages is its
     capability for being used as a _macro language_ for arbitrary
     applications.  The idea here is that application developers don't
     have to design their own macro languages and accompanying
     interpreters. Instead they use REXX as the basis for that language
     and support the REXX programming interface. When a REXX program
     runs and comes across an expression or function that isn't part of
     the base language definition, it can ask the application if it
     knows how to handle it.  The application only has to support
     features that are specific to it, freeing the developer from
     handling the mundane task of writing a language interpreter.  And
     if all applications use REXX as their macro language, the user only
     has to learn one language instead of a dozen.


     About this REXX interpreter
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~
        I wrote this version of REXX because I though that it would be
     nice to have my own REXX interpreter do use it with DOS, UNIX and
     also as a macro language for my programs. This REXX interpreter is
     written in ANSI C, and I have tried to make it fast and flexible,
     with very little restrictions, without lossing compatibility with
     the Ansi-Rexx


     Files in this distribution
     ~~~~~~~~~~~~~~~~~~~~~~~~~~
     Versions are included for PC, UNIX and MAC operating systems.
     However users are encourage to download the source code and
     recompile their own version. See INSTALL for more instructions.
     Versions for MVS and CMS can also be built and have their own
     instructions in directories "mvs" and "cms" respectively.
     Look for *.txt files.

     brexx-XYZ.zip                  VX.Y.Z Binary for MSDOS, examples,
                                    libs and docs compiled with BC++ V3.1

     brexx86v-XYZ.zip               VX.Y.Z Binary for 8086, examples,
                                    libs and docs compiled with BC++ V3.1

     brexx-X.Y.Z.tar.gz             VX.Y.Z Source code, examples,
                                    libs and docs

     brexx-X.Y.Z.src.rpm            VX.Y.Z Source RPM code, examples,
                                    libs and docs

     brexx-X.Y.Z.i386.rpm           VX.Y.Z Redhat V9.0 RPM, examples,
                                    libs and docs

     brexx-XYZ_HPC.zip              VX.Y.Z Binary for Windows CE V2.0,2.1 for
                                    SH3 and MIPS processor, examples,
                                    libs and docs and setup program.

     brexx-XYZ_HPCPRO.zip           VX.Y.Z Binary for Windows HPCPRO CE V2.11 for
                                    SH3,SH4,MIPS and StrongARM processor, examples,
                                    libs and docs and setup program.

     brexx-XYZ_PPC.zip              VX.Y.Z Binary for Windows PPC CE V2.11 for
                                    SH3 and MIPS processor, examples,
                                    libs and docs and setup program.

     brexx-XYZ_POCKETPC.zip         VX.Y.Z Binary for Windows Pocket PC CE V3.0 for
                                    SH3,MIPS and StrongARM processor, examples,
                                    libs and docs and setup program.

     brexx200_amiga.tgz             V2.0.x Binary for AMIGA, examples,
                                    libs and docs. Needs ixemul.library.
                                    (by Generoso Martello)

     v13/brexx131.zip               Binary, examples, libs and docs
                                    compiled with BC++ V3.1

     v13/brexx_1.31_hpux.tar.gz     Binary, examples, libs and docs
                                    compiled on HP-UX V9

     v13/brexx_1.31_linux.tar.gz    Binary, examples, libs and docs
                                    compiled on linux.

     v13/brexx_1.31_rsaix32.tar.gz  Binary, examples, libs and docs
                                    compiled on IBM AIX

     v13/brexx_1.31_src.tar.gz      Source that can be compiled on most
                                    of the unix systems and DOS.

     brexx_1.3m_mpw.dd.hqx          Binary, examples, libs and docs
                                    for MPW Macintosh shell.

     brexx_1.3m_src.dd.hqx          Source, examples, libs and docs
                                    for MPW Macintosh shell.


     32-bit BRexx for DOS and Ms-Windows
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        This 32-bit version of BRexx was compiled by Generoso Martello,
     with DJGPP V2.x. The advantages of this version are:
       o  60-80% FASTER than the 16-bit DOS version
       o  there isn't anymore the limitation of the 640Kb of
          DOS memory and the 64kb (segment) per each manipulated data.
          It can use all the memory resources of your computer.
       o  LONG FILENAME support for Windows-95/98.

        Unfortunately, INTR and PORT are not supported in the 32-bit
     version, but Generoso Martello has provided some of the commonly
     used routines from conio.r and ansi.r as built-in. The following
     is a note describing his routines.


     Amiga Version
     ~~~~~~~~~~~~~
     AMIGA BREXX EXECUTABLE (03/04/1999) compiled by Generoso Martello
                                                generoso@martello.com
                                                Catanzaro Lido (ITALY)

     This is the Amiga executable of BRexx Interpreter. It requires
     ixemul.library.  I tested Brexx on my old Amiga 68040/25 and it seems
     to be 40%-50% faster than the Amiga ARexx.  I am planning also to
     supply an external library in order to make the BRexx almost 100%
     compatible with the Amiga ARexx.  Unfortunately the use of 'ADDRESS'
     for addressing to an external host (to the ARexx port of Amiga
     programs for getting advantage of their commands and functions) can't
     be done through an external library, but it has to be done adding the
     necessary code to the 'ADDRESS' routines of Brexx source code.  Well
     I'd like to do that too.  For now, enjoy of this really fast and
     powerfull rexx interpreter


     Future of BREXX:
     ~~~~~~~~~~~~~~~~
      * A REXX compiler REXX to Ansi-C.
      * Socket's Functions for network support.

     I would be glad to hear any comments and ideas of how this
     program can be improved. Questions or Comments about BREXX
     should be sent to any of the above addresses.


     Y2K
     ~~~
        Normally BRexx is Y2K compliant, but it depends on the
     compiler that has been used for the compilation for the interpter
     and the user's code. The DATE() function has various options
             date()=date(n)  ->      dd mmm yyyy  /* Normalised */
             date(s)         ->      yyyymmdd     /* Sorted     */
             date(e)         ->      dd/mm/yy     /* European   */
             date(o)         ->      yy/mm/dd     /* Ordered    */
             date(u)         ->      mm/dd/yy     /* USA        */
     The user are encouraged to use the Normalised or the Sorted format
     in order to ensure consistent functionality of his script for
     dates prior and after 2000.


     Reviews
     ~~~~~~~
        A review dated Jan-99 from Frank Clarke, REXX Language Association
     for this interpreter can be found at the Newletters of the
     Rexx language association site at:
          http://www.rexxla.org/Newsletter/9901brexx.html


     The special features of the REXX interpreter are:
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
       o  All rexx commands and functions have easy and very simple
          names.
       o  Rexx variables are not declared as strings, integers, reals,
          or any other kind of variable. All variables are handled
          as strings. Only in arithmetic operations must variables
          evaluate to a valid number.
          ie.    ' -2' + 3    will evaluate to '1'
                left(21+6,1)  will return '2'
                left('amo',1) will return 'a'
       o  There is no need to declare any variable,function before you
          use it All variables are evaluate to their name, the first
          time they are used.
       o  There is no any limitation in the size of each variable (or
          array) except the convential memory (Only in the 16bit-DOS
          version, the maximum allocated memory per variable will be
          1 segment 64kb)
       o  When rexx intrepreter doesn't understand one command it pass
          it to the operating system (default) to execute it, or to any
          other program you want.
       o  Rexx has a large library with lot of string handling
          functions.
       o  A very powerful PARSE command, where you can parse a string
          (from several sources) according to a template in anything you
          like.


     This rexx interpreter features also:
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
       o  A mathematic library with all the scientific functions,
          sin,cos...
       o  The ability to create new libraries for rexx programs. (Look
          the IMPORT commands)
       o  Very flexible routines for file I/O
       o  It has its own stack that make very easy the communication
          with the operating system.
       o  Any program that uses the standard input/output can be used as
          rexx function.
          ie  a = 'cd'()  /* returns the current directory, by calling CD
                             command of DOS */
          available to be called from rexx.


     What is the reference book for REXX?
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         The "standard" reference for REXX is Mike Cowlishaw's _The REXX
     Language: A Practical Approach To Programming_, currently in its
     second edition.  (The first edition had "REXX" in blue on the
     cover, the second edition has it in red instead.)  Mike's book is
     often referred to as either "TRL" or "the red book".  Until the
     ANSI committee releases its standard, TRL is the document that
     defines what REXX is.  (See the bibliography below for details on
     TRL.)


     Selected bibliography
     ~~~~~~~~~~~~~~~~~~~~~
         This is from Mike Cowlishaw.  Note that a VERY complete
     bibliography can be found in _The REXX Handbook_.  (Any updates to
     the bibliography should be sent to Linda Suskind Green,
     greenls@gdlvm7.vnet.ibm.com, who will pass them on to the
     appropriate persons.)

           Modern Programming Using REXX -- Robert P. O'Hara and David
           R. Gomberg
               In English:   ISBN 0-13-597311-2   Prentice-Hall, 1985
                             ISBN 0-13-579329-5     (Second edition), 1988

           The REXX Language -- M. F. Cowlishaw
               In English:   ISBN 0-13-780735-X   Prentice-Hall, 1985
                             ISBN 0-13-780651-5     (Second edition), 1990
               In German:    ISBN 3-446-15195-8   Carl Hanser Verlag, 1988
                             ISBN 0-13-780784-8   P-H International, 1988
               In Japanese:  ISBN 4-7649-0136-6   Kindai-kagaku-sha, 1988

           REXX In the TSO Environment -- Gabriel F. Gargiulo
               ISBN 0-89435-354-3, QED Information Systems Inc.,
               Order #CC3543;  320 pages, 1990

           Practical Usage of REXX -- Anthony S. Rudd
               ISBN 0-13-682790-X, Ellis Horwood (Simon & Schuster), 1990

           Using ARexx on the Amiga -- Chris Zamara and Nick Sullivan
               ISBN 1-55755-114-6, 424pp+diskette, Abacus, 1991

           The REXX Handbook -- Edited by Gabe Goldberg and Phil Smith III
               ISBN 0-07-023682-8, 672pp, McGraw Hill, 1991

           Amiga Programmer's Guide to ARexx -- Eric Giguere
               Commodore-Amiga, Inc., 1991

           Programming in REXX -- Charles Daney
               ISBN 0-07-015305-1, 300pp, McGraw Hill, 1992

           Command Language Cookbook for Mainframes, Minicomputers,
                and PCs: DOS/OS/2, Batch Language, CLIST, DCL, Perl, REXX
                 -- Hallett German
               Van Nostrand Reinhold, 1992
               ISBN 0-442-00801-5, 366 pages, paperback, $49.95

         Note that IBM also publishes a whole slew of REXX-related
         documents, sometimes referring to REXX as the "SAA Procedures
         Language".  One of these documents is the SAA CPI Procedures
         Language Level 2 Reference, SC24-5549.


     Information on ANSI and REXX
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         The American National Standards Institute (ANSI) sets national
     standards for various things in the United States, including
     programming languages. The X3J18 REXX Standards Committee has been
     established to defined a formal standard for the REXX language,
     using TRL as its base document. The Committee meets 3 or 4 times a
     year and holds ongoing discussions throughout the year.  Members of
     X3J18 mostly include REXX implementors and some users, but anyone
     can participate.  More information on X3J18 can be had from Brian
     Marks (chair), marks@winvmd.vnet.ibm.com or Neil Milsted
     (vice-chair), nfnm@wrkgrp.com.
     The official web site is http://www.rexxla.org


     Newsgroups and mailing lists
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
         On Usenet the group comp.lang.rexx exists for discussion of
     REXX in all its variations.  Currently the comp.lang.rexx newsgroup
     is also gatewayed with the REXXLIST mailing list (i.e., anything
     that gets posted to the newsgroup is sent to everyone on the
     mailing list and anything that is sent to the mailing list gets
     posted to the newsgroup).


     DISCLAIMER
     ~~~~~~~~~~
     THE SOFTWARE  REFERENCED  IS MADE  AVAILABLE AS - IS. THE AUTHOR
     MAKES NO WARRANTY ABOUT THE  SOFTWARE AND ITS CONFORMITY TO ANY
     APPLICATION. THE AUTHOR IS NOT RESPONSIBLE FOR ANY DAMAGE, LOSS OF
     DATA, OR LOSS OF MONEY CAUSED BY THIS PROGRAM.
