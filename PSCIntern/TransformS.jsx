#target photoshop

cTID = function(s) { return app.charIDToTypeID(s); };
sTID = function(s) { return app.stringIDToTypeID(s); };

function TransformS() {
  function step1(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    var desc1 = new ActionDescriptor();
    var ref1 = new ActionReference();
    ref1.putProperty(cTID('Chnl'), sTID("selection"));
    desc1.putReference(cTID('null'), ref1);
    desc1.putEnumerated(cTID('FTcs'), cTID('QCSt'), sTID("QCSAverage"));
    var desc2 = new ActionDescriptor();
    desc2.putUnitDouble(cTID('Hrzn'), cTID('#Pxl'), 0);
    desc2.putUnitDouble(cTID('Vrtc'), cTID('#Pxl'), 0);
    desc1.putObject(cTID('Ofst'), cTID('Ofst'), desc2);
    desc1.putUnitDouble(cTID('Wdth'), cTID('#Prc'), 100);
    desc1.putUnitDouble(cTID('Hght'), cTID('#Prc'), 100);
    executeAction(sTID('transform'), desc1, dialogMode);
  };

  step1(true, true);
};

TransformS.main = function () {
  TransformS();
};

function TransformP() {
  function step1(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    var desc1 = new ActionDescriptor();
    var ref1 = new ActionReference();
    ref1.putEnumerated(cTID('Path'), cTID('Ordn'), cTID('Trgt'));
    desc1.putReference(cTID('null'), ref1);
    desc1.putEnumerated(cTID('FTcs'), cTID('QCSt'), sTID("QCSAverage"));
    var desc2 = new ActionDescriptor();
    desc2.putUnitDouble(cTID('Hrzn'), cTID('#Pxl'), 0);
    desc2.putUnitDouble(cTID('Vrtc'), cTID('#Pxl'), 0);
    desc1.putObject(cTID('Ofst'), cTID('Ofst'), desc2);
    desc1.putUnitDouble(cTID('Hght'), cTID('#Prc'), 100);
	desc1.putUnitDouble(cTID('Wdth'), cTID('#Prc'), 100);
    executeAction(sTID('transform'), desc1, dialogMode);
  };

  step1(true, true);
};


TransformP.main = function () {
  TransformP();
};

try {
	TransformS.main();
} catch (e) {try {
	TransformP.main();
} catch (e) {}
}