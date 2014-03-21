#target photoshop
//
// Border.jsx
//

//
// Generated Wed May 29 2013 08:51:01 GMT+0200
//

cTID = function(s) { return app.charIDToTypeID(s); };
sTID = function(s) { return app.stringIDToTypeID(s); };

//
//==================== Border ==============
//
function Border() {
  // Kontur füllen
  function step1(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    var desc1 = new ActionDescriptor();
    desc1.putInteger(cTID('Wdth'), 5);
    desc1.putEnumerated(cTID('Lctn'), cTID('StrL'), cTID('Insd'));
    desc1.putUnitDouble(cTID('Opct'), cTID('#Prc'), 100);
    desc1.putEnumerated(cTID('Md  '), cTID('BlnM'), cTID('Nrml'));
    var desc2 = new ActionDescriptor();
    desc2.putUnitDouble(cTID('H   '), cTID('#Ang'), 15.205078125);
    desc2.putDouble(cTID('Strt'), 69.4117647058823);
    desc2.putDouble(cTID('Brgh'), 33.7254901960784);
    desc1.putObject(cTID('Clr '), cTID('HSBC'), desc2);
    executeAction(sTID('stroke'), desc1, dialogMode);
  };

  step1();      // Kontur füllen
};



//=========================================
//                    Border.main
//=========================================
//

Border.main = function () {
  Border();
};

Border.main();

// EOF

"Border.jsx"
// EOF
