#target photoshop
//
// FillPath.jsx
//

//
// Generated Tue Jun 04 2013 06:56:04 GMT+0200
//

cTID = function(s) { return app.charIDToTypeID(s); };
sTID = function(s) { return app.stringIDToTypeID(s); };

//
//==================== FillPath ==============
//
function FillPath() {
  // Fläche füllen
  function step1(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    var desc1 = new ActionDescriptor();
    var ref1 = new ActionReference();
    ref1.putProperty(cTID('Path'), cTID('WrPt'));
    desc1.putReference(cTID('null'), ref1);
    desc1.putBoolean(cTID('WhPt'), true);
    desc1.putEnumerated(cTID('Usng'), cTID('FlCn'), cTID('FrgC'));
    desc1.putUnitDouble(cTID('Opct'), cTID('#Prc'), 100);
    desc1.putEnumerated(cTID('Md  '), cTID('BlnM'), cTID('Nrml'));
    desc1.putUnitDouble(cTID('Rds '), cTID('#Pxl'), 0);
    desc1.putBoolean(cTID('AntA'), true);
    executeAction(sTID('fill'), desc1, dialogMode);
  };

  step1();      // Fläche füllen
};



//=========================================
//                    FillPath.main
//=========================================
//

FillPath.main = function () {
  FillPath();
};

FillPath.main();

// EOF

"FillPath.jsx"
// EOF
