tracesFilename="/afs/cern.ch/user/p/psilva/public/WaferCellMapTraces.txt"
testFilename="/afs/cern.ch/user/m/mtokarev/public/modulelocator_trigger_test.txt"

pushd $CMSSW_BASE/src
    # git cms-addpkg Geometry/HGCalMapping CondFormats/HGCalObjects DataFormats/HGCalDigi
    # git remote add mija git@github.com:MijaToka/cmssw.git 
    # git fetch mija # This is while the indexer is not added officially to CMSSW
    # git checkout -b dev/trigmapping_hgcal_up2date mija/dev/trigmapping_hgcal_up2date
    git cms-merge-topic -u MijaToka:dev/hgcalmapping_trigger # trggmapping_hgcal_up2date
    # ^ this above would be the ideal way but it addes too many packages due to a merge which adds a lot of diffs
    
    # hgcal-comm with the module indexer chaged
    echo HGCalCommissioning >> .gitignore
    echo Geometry/HGCalMapping/data >> .gitignore
    git clone https://gitlab.cern.ch/ttravis/hgcal-comm.git -b rebased/dev-mtokarev-trigger HGCalCommissioning
    #update cell map
    git clone https://github.com/RSalvatico/Geometry-HGCalMapping.git Geometry/HGCalMapping/data -b CalibSurrOffsetMap
    pushd Geometry/HGCalMapping/data
        # Fetch a file from AFS -- need to be on LXPLUS for this to work!
        cp $tracesFilename CellMaps/
        cp $testFilename ModuleMaps/
    popd

    echo "Time to compile with scram b."
    scram b -j 16
popd