certoraRun.py specs/ControllerHarness.sol contracts/MarginPool.sol:MarginPool contracts/Whitelist.sol specs/OtokenHarnessA.sol specs/OtokenHarnessB.sol specs/DummyERC20A.sol specs/DummyERC20B.sol specs/DummyERC20C.sol --link ControllerHarness:pool=MarginPool ControllerHarness:anOtokenA=OtokenHarnessA ControllerHarness:anOtokenB=OtokenHarnessB ControllerHarness:dummyERC20C=DummyERC20C OtokenHarnessA:underlyingAsset=DummyERC20A OtokenHarnessA:strikeAsset=DummyERC20B OtokenHarnessA:collateralAsset=DummyERC20C OtokenHarnessB:underlyingAsset=DummyERC20A OtokenHarnessB:strikeAsset=DummyERC20B OtokenHarnessB:collateralAsset=DummyERC20C --solc solc6.10 --verify ControllerHarness:specs/ValidBalances.spec  --settings  -assumeUnwindCond,-copyLoopUnroll=3,-enableStorageVariableUnpacking=false,-deleteSMTFile=true,-t=300,-ignoreViewFunctions,-rule=cantSettleUnexpiredVault --cloud --cache OpynModifiedValidBalances --path specs/,contracts/ 