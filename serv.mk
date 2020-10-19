##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=serv
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/root/serv
ProjectPath            :=/root/serv/serv
IntermediateDirectory  :=../build-$(ConfigurationName)/serv
OutDir                 :=../build-$(ConfigurationName)/serv
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=root
Date                   :=10/04/20
CodeLitePath           :=/root/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)pthread 
ArLibs                 :=  "pthread" 
LibPath                := 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -pthread -std=c++11 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/serv/envoi.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/serv/reception.cpp$(ObjectSuffix) ../build-$(ConfigurationName)/serv/main.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/serv/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/serv"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/serv"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/serv/.d:
	@mkdir -p "../build-$(ConfigurationName)/serv"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/serv/envoi.cpp$(ObjectSuffix): envoi.cpp ../build-$(ConfigurationName)/serv/envoi.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/root/serv/serv/envoi.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/envoi.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/serv/envoi.cpp$(DependSuffix): envoi.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/serv/envoi.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/serv/envoi.cpp$(DependSuffix) -MM envoi.cpp

../build-$(ConfigurationName)/serv/envoi.cpp$(PreprocessSuffix): envoi.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/serv/envoi.cpp$(PreprocessSuffix) envoi.cpp

../build-$(ConfigurationName)/serv/reception.cpp$(ObjectSuffix): reception.cpp ../build-$(ConfigurationName)/serv/reception.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/root/serv/serv/reception.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/reception.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/serv/reception.cpp$(DependSuffix): reception.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/serv/reception.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/serv/reception.cpp$(DependSuffix) -MM reception.cpp

../build-$(ConfigurationName)/serv/reception.cpp$(PreprocessSuffix): reception.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/serv/reception.cpp$(PreprocessSuffix) reception.cpp

../build-$(ConfigurationName)/serv/main.cpp$(ObjectSuffix): main.cpp ../build-$(ConfigurationName)/serv/main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "/root/serv/serv/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.cpp$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/serv/main.cpp$(DependSuffix): main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/serv/main.cpp$(ObjectSuffix) -MF../build-$(ConfigurationName)/serv/main.cpp$(DependSuffix) -MM main.cpp

../build-$(ConfigurationName)/serv/main.cpp$(PreprocessSuffix): main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/serv/main.cpp$(PreprocessSuffix) main.cpp


-include ../build-$(ConfigurationName)/serv//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


