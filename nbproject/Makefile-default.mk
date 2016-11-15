#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CellModem.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/CellModem.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=--mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=ES_CheckEvents.c ES_DeferRecall.c ES_Framework.c ES_LookupTables.c ES_Port.c ES_PostList.c ES_Queue.c ES_Timers.c EventCheckers.c TemplateFSM.c TemplateService.c main.c retarget.c ToggleService.c Button.c ReceivingService.c AccelerometerModule.c AnalogService.c PACService.c ProcessDataModule.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ES_CheckEvents.p1 ${OBJECTDIR}/ES_DeferRecall.p1 ${OBJECTDIR}/ES_Framework.p1 ${OBJECTDIR}/ES_LookupTables.p1 ${OBJECTDIR}/ES_Port.p1 ${OBJECTDIR}/ES_PostList.p1 ${OBJECTDIR}/ES_Queue.p1 ${OBJECTDIR}/ES_Timers.p1 ${OBJECTDIR}/EventCheckers.p1 ${OBJECTDIR}/TemplateFSM.p1 ${OBJECTDIR}/TemplateService.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/retarget.p1 ${OBJECTDIR}/ToggleService.p1 ${OBJECTDIR}/Button.p1 ${OBJECTDIR}/ReceivingService.p1 ${OBJECTDIR}/AccelerometerModule.p1 ${OBJECTDIR}/AnalogService.p1 ${OBJECTDIR}/PACService.p1 ${OBJECTDIR}/ProcessDataModule.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/ES_CheckEvents.p1.d ${OBJECTDIR}/ES_DeferRecall.p1.d ${OBJECTDIR}/ES_Framework.p1.d ${OBJECTDIR}/ES_LookupTables.p1.d ${OBJECTDIR}/ES_Port.p1.d ${OBJECTDIR}/ES_PostList.p1.d ${OBJECTDIR}/ES_Queue.p1.d ${OBJECTDIR}/ES_Timers.p1.d ${OBJECTDIR}/EventCheckers.p1.d ${OBJECTDIR}/TemplateFSM.p1.d ${OBJECTDIR}/TemplateService.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/retarget.p1.d ${OBJECTDIR}/ToggleService.p1.d ${OBJECTDIR}/Button.p1.d ${OBJECTDIR}/ReceivingService.p1.d ${OBJECTDIR}/AccelerometerModule.p1.d ${OBJECTDIR}/AnalogService.p1.d ${OBJECTDIR}/PACService.p1.d ${OBJECTDIR}/ProcessDataModule.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ES_CheckEvents.p1 ${OBJECTDIR}/ES_DeferRecall.p1 ${OBJECTDIR}/ES_Framework.p1 ${OBJECTDIR}/ES_LookupTables.p1 ${OBJECTDIR}/ES_Port.p1 ${OBJECTDIR}/ES_PostList.p1 ${OBJECTDIR}/ES_Queue.p1 ${OBJECTDIR}/ES_Timers.p1 ${OBJECTDIR}/EventCheckers.p1 ${OBJECTDIR}/TemplateFSM.p1 ${OBJECTDIR}/TemplateService.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/retarget.p1 ${OBJECTDIR}/ToggleService.p1 ${OBJECTDIR}/Button.p1 ${OBJECTDIR}/ReceivingService.p1 ${OBJECTDIR}/AccelerometerModule.p1 ${OBJECTDIR}/AnalogService.p1 ${OBJECTDIR}/PACService.p1 ${OBJECTDIR}/ProcessDataModule.p1

# Source Files
SOURCEFILES=ES_CheckEvents.c ES_DeferRecall.c ES_Framework.c ES_LookupTables.c ES_Port.c ES_PostList.c ES_Queue.c ES_Timers.c EventCheckers.c TemplateFSM.c TemplateService.c main.c retarget.c ToggleService.c Button.c ReceivingService.c AccelerometerModule.c AnalogService.c PACService.c ProcessDataModule.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/CellModem.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F2480
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ES_CheckEvents.p1: ES_CheckEvents.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.p1.d 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_CheckEvents.p1  ES_CheckEvents.c 
	@-${MV} ${OBJECTDIR}/ES_CheckEvents.d ${OBJECTDIR}/ES_CheckEvents.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_CheckEvents.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_DeferRecall.p1: ES_DeferRecall.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_DeferRecall.p1.d 
	@${RM} ${OBJECTDIR}/ES_DeferRecall.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_DeferRecall.p1  ES_DeferRecall.c 
	@-${MV} ${OBJECTDIR}/ES_DeferRecall.d ${OBJECTDIR}/ES_DeferRecall.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_DeferRecall.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_Framework.p1: ES_Framework.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Framework.p1.d 
	@${RM} ${OBJECTDIR}/ES_Framework.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_Framework.p1  ES_Framework.c 
	@-${MV} ${OBJECTDIR}/ES_Framework.d ${OBJECTDIR}/ES_Framework.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_Framework.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_LookupTables.p1: ES_LookupTables.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_LookupTables.p1.d 
	@${RM} ${OBJECTDIR}/ES_LookupTables.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_LookupTables.p1  ES_LookupTables.c 
	@-${MV} ${OBJECTDIR}/ES_LookupTables.d ${OBJECTDIR}/ES_LookupTables.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_LookupTables.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_Port.p1: ES_Port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Port.p1.d 
	@${RM} ${OBJECTDIR}/ES_Port.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_Port.p1  ES_Port.c 
	@-${MV} ${OBJECTDIR}/ES_Port.d ${OBJECTDIR}/ES_Port.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_Port.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_PostList.p1: ES_PostList.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_PostList.p1.d 
	@${RM} ${OBJECTDIR}/ES_PostList.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_PostList.p1  ES_PostList.c 
	@-${MV} ${OBJECTDIR}/ES_PostList.d ${OBJECTDIR}/ES_PostList.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_PostList.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_Queue.p1: ES_Queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Queue.p1.d 
	@${RM} ${OBJECTDIR}/ES_Queue.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_Queue.p1  ES_Queue.c 
	@-${MV} ${OBJECTDIR}/ES_Queue.d ${OBJECTDIR}/ES_Queue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_Queue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_Timers.p1: ES_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Timers.p1.d 
	@${RM} ${OBJECTDIR}/ES_Timers.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_Timers.p1  ES_Timers.c 
	@-${MV} ${OBJECTDIR}/ES_Timers.d ${OBJECTDIR}/ES_Timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_Timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/EventCheckers.p1: EventCheckers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EventCheckers.p1.d 
	@${RM} ${OBJECTDIR}/EventCheckers.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/EventCheckers.p1  EventCheckers.c 
	@-${MV} ${OBJECTDIR}/EventCheckers.d ${OBJECTDIR}/EventCheckers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/EventCheckers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TemplateFSM.p1: TemplateFSM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateFSM.p1.d 
	@${RM} ${OBJECTDIR}/TemplateFSM.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/TemplateFSM.p1  TemplateFSM.c 
	@-${MV} ${OBJECTDIR}/TemplateFSM.d ${OBJECTDIR}/TemplateFSM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TemplateFSM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TemplateService.p1: TemplateService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateService.p1.d 
	@${RM} ${OBJECTDIR}/TemplateService.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/TemplateService.p1  TemplateService.c 
	@-${MV} ${OBJECTDIR}/TemplateService.d ${OBJECTDIR}/TemplateService.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TemplateService.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/retarget.p1: retarget.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/retarget.p1.d 
	@${RM} ${OBJECTDIR}/retarget.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/retarget.p1  retarget.c 
	@-${MV} ${OBJECTDIR}/retarget.d ${OBJECTDIR}/retarget.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/retarget.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ToggleService.p1: ToggleService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ToggleService.p1.d 
	@${RM} ${OBJECTDIR}/ToggleService.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ToggleService.p1  ToggleService.c 
	@-${MV} ${OBJECTDIR}/ToggleService.d ${OBJECTDIR}/ToggleService.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ToggleService.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Button.p1: Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Button.p1.d 
	@${RM} ${OBJECTDIR}/Button.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/Button.p1  Button.c 
	@-${MV} ${OBJECTDIR}/Button.d ${OBJECTDIR}/Button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ReceivingService.p1: ReceivingService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ReceivingService.p1.d 
	@${RM} ${OBJECTDIR}/ReceivingService.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ReceivingService.p1  ReceivingService.c 
	@-${MV} ${OBJECTDIR}/ReceivingService.d ${OBJECTDIR}/ReceivingService.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ReceivingService.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AccelerometerModule.p1: AccelerometerModule.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AccelerometerModule.p1.d 
	@${RM} ${OBJECTDIR}/AccelerometerModule.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/AccelerometerModule.p1  AccelerometerModule.c 
	@-${MV} ${OBJECTDIR}/AccelerometerModule.d ${OBJECTDIR}/AccelerometerModule.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AccelerometerModule.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AnalogService.p1: AnalogService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AnalogService.p1.d 
	@${RM} ${OBJECTDIR}/AnalogService.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/AnalogService.p1  AnalogService.c 
	@-${MV} ${OBJECTDIR}/AnalogService.d ${OBJECTDIR}/AnalogService.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AnalogService.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/PACService.p1: PACService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PACService.p1.d 
	@${RM} ${OBJECTDIR}/PACService.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/PACService.p1  PACService.c 
	@-${MV} ${OBJECTDIR}/PACService.d ${OBJECTDIR}/PACService.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/PACService.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ProcessDataModule.p1: ProcessDataModule.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ProcessDataModule.p1.d 
	@${RM} ${OBJECTDIR}/ProcessDataModule.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ProcessDataModule.p1  ProcessDataModule.c 
	@-${MV} ${OBJECTDIR}/ProcessDataModule.d ${OBJECTDIR}/ProcessDataModule.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ProcessDataModule.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/ES_CheckEvents.p1: ES_CheckEvents.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.p1.d 
	@${RM} ${OBJECTDIR}/ES_CheckEvents.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_CheckEvents.p1  ES_CheckEvents.c 
	@-${MV} ${OBJECTDIR}/ES_CheckEvents.d ${OBJECTDIR}/ES_CheckEvents.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_CheckEvents.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_DeferRecall.p1: ES_DeferRecall.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_DeferRecall.p1.d 
	@${RM} ${OBJECTDIR}/ES_DeferRecall.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_DeferRecall.p1  ES_DeferRecall.c 
	@-${MV} ${OBJECTDIR}/ES_DeferRecall.d ${OBJECTDIR}/ES_DeferRecall.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_DeferRecall.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_Framework.p1: ES_Framework.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Framework.p1.d 
	@${RM} ${OBJECTDIR}/ES_Framework.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_Framework.p1  ES_Framework.c 
	@-${MV} ${OBJECTDIR}/ES_Framework.d ${OBJECTDIR}/ES_Framework.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_Framework.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_LookupTables.p1: ES_LookupTables.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_LookupTables.p1.d 
	@${RM} ${OBJECTDIR}/ES_LookupTables.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_LookupTables.p1  ES_LookupTables.c 
	@-${MV} ${OBJECTDIR}/ES_LookupTables.d ${OBJECTDIR}/ES_LookupTables.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_LookupTables.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_Port.p1: ES_Port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Port.p1.d 
	@${RM} ${OBJECTDIR}/ES_Port.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_Port.p1  ES_Port.c 
	@-${MV} ${OBJECTDIR}/ES_Port.d ${OBJECTDIR}/ES_Port.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_Port.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_PostList.p1: ES_PostList.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_PostList.p1.d 
	@${RM} ${OBJECTDIR}/ES_PostList.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_PostList.p1  ES_PostList.c 
	@-${MV} ${OBJECTDIR}/ES_PostList.d ${OBJECTDIR}/ES_PostList.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_PostList.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_Queue.p1: ES_Queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Queue.p1.d 
	@${RM} ${OBJECTDIR}/ES_Queue.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_Queue.p1  ES_Queue.c 
	@-${MV} ${OBJECTDIR}/ES_Queue.d ${OBJECTDIR}/ES_Queue.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_Queue.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ES_Timers.p1: ES_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ES_Timers.p1.d 
	@${RM} ${OBJECTDIR}/ES_Timers.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ES_Timers.p1  ES_Timers.c 
	@-${MV} ${OBJECTDIR}/ES_Timers.d ${OBJECTDIR}/ES_Timers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ES_Timers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/EventCheckers.p1: EventCheckers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/EventCheckers.p1.d 
	@${RM} ${OBJECTDIR}/EventCheckers.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/EventCheckers.p1  EventCheckers.c 
	@-${MV} ${OBJECTDIR}/EventCheckers.d ${OBJECTDIR}/EventCheckers.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/EventCheckers.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TemplateFSM.p1: TemplateFSM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateFSM.p1.d 
	@${RM} ${OBJECTDIR}/TemplateFSM.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/TemplateFSM.p1  TemplateFSM.c 
	@-${MV} ${OBJECTDIR}/TemplateFSM.d ${OBJECTDIR}/TemplateFSM.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TemplateFSM.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/TemplateService.p1: TemplateService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/TemplateService.p1.d 
	@${RM} ${OBJECTDIR}/TemplateService.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/TemplateService.p1  TemplateService.c 
	@-${MV} ${OBJECTDIR}/TemplateService.d ${OBJECTDIR}/TemplateService.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/TemplateService.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/retarget.p1: retarget.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/retarget.p1.d 
	@${RM} ${OBJECTDIR}/retarget.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/retarget.p1  retarget.c 
	@-${MV} ${OBJECTDIR}/retarget.d ${OBJECTDIR}/retarget.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/retarget.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ToggleService.p1: ToggleService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ToggleService.p1.d 
	@${RM} ${OBJECTDIR}/ToggleService.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ToggleService.p1  ToggleService.c 
	@-${MV} ${OBJECTDIR}/ToggleService.d ${OBJECTDIR}/ToggleService.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ToggleService.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Button.p1: Button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Button.p1.d 
	@${RM} ${OBJECTDIR}/Button.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/Button.p1  Button.c 
	@-${MV} ${OBJECTDIR}/Button.d ${OBJECTDIR}/Button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ReceivingService.p1: ReceivingService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ReceivingService.p1.d 
	@${RM} ${OBJECTDIR}/ReceivingService.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ReceivingService.p1  ReceivingService.c 
	@-${MV} ${OBJECTDIR}/ReceivingService.d ${OBJECTDIR}/ReceivingService.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ReceivingService.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AccelerometerModule.p1: AccelerometerModule.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AccelerometerModule.p1.d 
	@${RM} ${OBJECTDIR}/AccelerometerModule.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/AccelerometerModule.p1  AccelerometerModule.c 
	@-${MV} ${OBJECTDIR}/AccelerometerModule.d ${OBJECTDIR}/AccelerometerModule.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AccelerometerModule.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/AnalogService.p1: AnalogService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AnalogService.p1.d 
	@${RM} ${OBJECTDIR}/AnalogService.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/AnalogService.p1  AnalogService.c 
	@-${MV} ${OBJECTDIR}/AnalogService.d ${OBJECTDIR}/AnalogService.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/AnalogService.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/PACService.p1: PACService.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/PACService.p1.d 
	@${RM} ${OBJECTDIR}/PACService.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/PACService.p1  PACService.c 
	@-${MV} ${OBJECTDIR}/PACService.d ${OBJECTDIR}/PACService.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/PACService.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ProcessDataModule.p1: ProcessDataModule.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ProcessDataModule.p1.d 
	@${RM} ${OBJECTDIR}/ProcessDataModule.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib $(COMPARISON_BUILD)  --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/ProcessDataModule.p1  ProcessDataModule.c 
	@-${MV} ${OBJECTDIR}/ProcessDataModule.d ${OBJECTDIR}/ProcessDataModule.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ProcessDataModule.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/CellModem.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/CellModem.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     --rom=default,-3dc0-3fff --ram=default,-2f4-2ff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/CellModem.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/CellModem.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/CellModem.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/CellModem.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 --warn=0 --asmlist -DXPRJ_default=$(CND_CONF)  --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,-plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     $(COMPARISON_BUILD) --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/CellModem.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
