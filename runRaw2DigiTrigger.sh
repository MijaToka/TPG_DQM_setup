cmsRun \
  -j FrameworkJobReport_RAW2DIGI.xml \
  $CMSSW_BASE/src/HGCalCommissioning/Configuration/test/step_RAW2DIGI.py \
  run=1727035822 \
  lumi=1 \
  era=SepTB2024/v3 \
  files=/eos/cms/store/group/dpg_hgcal/tb_hgcal/2024/BeamTestSep/HgcalBeamtestSep2024/Relay1727035819/Run1727035822_Link1_File0000000000.bin \
  inputTrigFiles=/eos/cms/store/group/dpg_hgcal/tb_hgcal/2024/BeamTestSep/HgcalBeamtestSep2024/Relay1727035819/Run1727035822_Link0_File0000000000.bin \
  yamls="{}" \
  output=RAW2DIGI.root \
  enableTPGunpacker=True