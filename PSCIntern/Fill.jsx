#target photoshop
//
// Fill.jsx
//

//
// Generated Wed May 29 2013 08:51:01 GMT+0200
//

cTID = function(s) { return app.charIDToTypeID(s); };
sTID = function(s) { return app.stringIDToTypeID(s); };

//
//==================== Fill ==============
//
function Fill() {
  // Fläche füllen
  function step1(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    var desc1 = new ActionDescriptor();
    desc1.putEnumerated(cTID('Usng'), cTID('FlCn'), cTID('Blck'));
    desc1.putUnitDouble(cTID('Opct'), cTID('#Prc'), 100);
    desc1.putEnumerated(cTID('Md  '), cTID('BlnM'), cTID('Nrml'));
    executeAction(sTID('fill'), desc1, dialogMode);
  };

  step1();      // Fläche füllen
};



//=========================================
//                    Fill.main
//=========================================
//

Fill.main = function () {
  Fill();
};

Fill.main();

// EOF

"Fill.jsx"
// EOF
