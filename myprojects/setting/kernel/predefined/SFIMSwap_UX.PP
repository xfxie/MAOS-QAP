
-P postmode < R_XS:postmode
-P Lc < R_LS:Lc

-L R_INI < RSS_Rand@KernelSSModules

-L R_T < RT_BETTER@KernelRTModules

-D R_XS < implement.common.behavior.combine.UniformOrderXS: baseRatio=0.5,postmode=1

-D R_1Mover < implement.QAP.behavior.onemove.QAPSwap1Mover
-L R_NODE < LS_NODE_VD@KernelLSNodeModules: R_1Mover = &R_1Mover
-L R_LS < MLS_MFS_Fix@KernelMLSModules: R_NODE=&R_NODE, Lc=2

-L R_G < RG_RSP_FS@KernelRGModules: R_XS=&R_XS, R_LS=&R_LS  
