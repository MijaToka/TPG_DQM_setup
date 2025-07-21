# Setup for running the TPG DQM (16 Jul 2025)
This is a set of bash scripts to create a CMSSW with the necesary changes to do the TPG HGCalCommissioning process.

It consists of a setup file that creates a `CMSSW_15_1_0_pre4` release, the next file hast the commands to import all the necessary changes to CMSSW before thay are merged into the next release, and clones the HGCalCommissioning branch that contains the new TPG indexers and DQM funcionality implemented.
Lastly there are some scripts for testing the instalation which should be run in the following order `runRaw2DigiTrigger.sh -> runDQMTrigger.sh` which should create a RAW2DIGI.root and a DQM file.

### Instalation
To install the TPG DQM environment you should run in your working directory:
```bash
./cmssw_setup.sh
./tpg_packages_install.sh
```
Or go line by line running the script code.

This will create a `CMSSW_15_1_0_pre4` environment with all the necessary packages installed and compiled.
