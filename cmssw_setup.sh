# This script will do the basic software setup.

source /cvmfs/cms.cern.ch/cmsset_default.sh

# Now set up CMSSW
version="15_1_0_pre4"

cmssw="CMSSW_${version}"
if [ -d cmssw ]; then
  echo "Found existing ${cmssw}".
else
  # scram project $cmssw
  cmsrel $cmssw
fi
pushd "${cmssw}/src"
  # scram runtime -sh
  cmsenv # "scram runtime"
popd

echo "Done with setup of $cmssw ."