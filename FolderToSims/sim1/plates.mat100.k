$Based off https://www.dynaexamples.com/introduction/intro-by-k.-weimar/spotweld
$/spotweld-i
$Termination time increased to approx 1 minute wall time to test job scheduler
$
*KEYWORD
*CONTROL_TERMINATION
$#  endtim    endcyc     dtmin    endeng    endmas     nosol     
       0.1         0       0.0       0.01.000000E8         0
*CONTROL_TIMESTEP
                0.05
*DATABASE_EXTENT_BINARY
$#   neiph     neips    maxint    strflg    sigflg    epsflg    rltflg    engflg
         0         0         3         1         1         1         1         1
$#  cmpflg    ieverp    beamip     dcomp      shge     stssz    n3thdt   ialemat
         0         0         0         1         1         1         2         1
*MAT_ELASTIC
$        i         f         f         f         f         f         f
$#     mid        ro         e        pr        da        db  not used        
         17.85000E-9  210000.0       0.3       0.0       0.0         0
*SECTION_SHELL
$        i         i         f         f         f         f         i
$#   secid    elform      shrf       nip     propt   qr/irid     icomp     setyp
         1        16   0.83333         2       3.0         0         0         1
$        f         f         f         f         f
$#      t1        t2        t3        t4      nloc     marea      idof    edgset
         2                                     0.0       0.0       0.0         0
*PART
$#                                                                         title
Elastic Material
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
         1         1         1         0         0         0         0         0
*DEFINE_CURVE
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
         1         0       1.0       1.0       0.0       0.0         0         0
$                  f                   f
$           abscissa            ordinate
$#                a1                  o1  
                 0.0                 0.0
                0.02                 1.0
                 1.0                 1.0
*BOUNDARY_PRESCRIBED_MOTION_SET
$#    nsid       dof       vad      lcid        sf       vid     death     birth
         1         1         0         1         1         01.00000E28       0.0
*BOUNDARY_SPC_NODE
$ NID/NSID       CID      DOFX      DOFY      DOFZ     DOFRX     DOFRY     DOFRZ
$#     nid       cid      dofx      dofy      dofz     dofrx     dofry     dofrz
       101         0         1         1         1         0         0         0
$#     nid       cid      dofx      dofy      dofz     dofrx     dofry     dofrz
       102         0         1         1         1         0         0         0
$#     nid       cid      dofx      dofy      dofz     dofrx     dofry     dofrz
       103         0         1         1         1         0         0         0
$#     nid       cid      dofx      dofy      dofz     dofrx     dofry     dofrz
       104         0         1         1         1         0         0         0
$#     nid       cid      dofx      dofy      dofz     dofrx     dofry     dofrz
       105         0         1         1         1         0         0         0
*NODE
$#   nid               x               y               z      tc      rc  
     101             0.0             0.0             0.0       0       0
     102             0.0            10.0             0.0       0       0
     103             0.0            20.0             0.0       0       0
     104             0.0            30.0             0.0       0       0
     105             0.0            40.0             0.0       0       0
     106            20.0             0.0             0.0       0       0
     107            20.0            10.0             0.0       0       0
     108            20.0            20.0             0.0       0       0
     109            20.0            30.0             0.0       0       0
     110            20.0            40.0             0.0       0       0
     111            40.0             0.0             0.0       0       0
     112            40.0            10.0             0.0       0       0
     113            40.0            20.0             0.0       0       0
     114            40.0            30.0             0.0       0       0
     115            40.0            40.0             0.0       0       0
     116            50.0             0.0             0.0       0       0
     117            50.0            10.0             0.0       0       0
     118            50.0            20.0             0.0       0       0
     119            50.0            30.0             0.0       0       0
     120            50.0            40.0             0.0       0       0
     121            60.0             0.0             0.0       0       0
     122            60.0            10.0             0.0       0       0
     123            60.0            20.0             0.0       0       0
     124            60.0            30.0             0.0       0       0
     125            60.0            40.0             0.0       0       0
     126            70.0             0.0             0.0       0       0
     127            70.0            10.0             0.0       0       0
     128            70.0            20.0             0.0       0       0
     129            70.0            30.0             0.0       0       0
     130            70.0            40.0             0.0       0       0
     131            80.0             0.0             0.0       0       0
     132            80.0            10.0             0.0       0       0
     133            80.0            20.0             0.0       0       0
     134            80.0            30.0             0.0       0       0
     135            80.0            40.0             0.0       0       0
*ELEMENT_SHELL
$#   eid     pid      n1      n2      n3      n4      n5      n6      n7      n8
     101       1     107     102     101     106       0       0       0       0
     102       1     108     103     102     107       0       0       0       0
     103       1     109     104     103     108       0       0       0       0
     104       1     110     105     104     109       0       0       0       0
     105       1     112     107     106     111       0       0       0       0
     106       1     113     108     107     112       0       0       0       0
     107       1     114     109     108     113       0       0       0       0
     108       1     115     110     109     114       0       0       0       0
     109       1     117     112     111     116       0       0       0       0
     110       1     118     113     112     117       0       0       0       0
     111       1     119     114     113     118       0       0       0       0
     112       1     120     115     114     119       0       0       0       0
     113       1     122     117     116     121       0       0       0       0
     114       1     123     118     117     122       0       0       0       0
     115       1     124     119     118     123       0       0       0       0
     116       1     125     120     119     124       0       0       0       0
     117       1     127     122     121     126       0       0       0       0
     118       1     128     123     122     127       0       0       0       0
     119       1     129     124     123     128       0       0       0       0
     120       1     130     125     124     129       0       0       0       0
     121       1     132     127     126     131       0       0       0       0
     122       1     133     128     127     132       0       0       0       0
     123       1     134     129     128     133       0       0       0       0
     124       1     135     130     129     134       0       0       0       0
*TITLE
$#                                                                         title
LS-DYNA keyword deck by LS-PrePost
*SET_NODE_LIST
$#     sid       da1       da2       da3       da4    solver      
         1       0.0       0.0       0.0       0.0MECH
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
       134       135       133       132       131         0         0         0
*END
