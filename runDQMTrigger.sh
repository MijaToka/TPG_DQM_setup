#Run DQM
cmsRun \
  -j FrameworkJobReport_DQM.xml \
  $CMSSW_BASE/src/HGCalCommissioning/Configuration/test/step_DQM.py \
  era=SepTB2024/v3 \
  run=1727035822 \
  files=file:RAW2DIGI.root \
  maxEvents=-1 \
  SkipTriggerDQM=False