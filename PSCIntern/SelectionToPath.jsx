#target photoshop
//
// SelectionToPaht.jsx
//

//
// Generated Wed May 29 2013 08:51:01 GMT+0200
//

cTID = function(s) { return app.charIDToTypeID(s); };
sTID = function(s) { return app.stringIDToTypeID(s); };

//
//==================== SelectionToPaht ==============
//
function SelectionToPaht() {
  // Erstellen
  function step1(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    var desc1 = new ActionDescriptor();
    var ref1 = new ActionReference();
    ref1.putClass(cTID('Path'));
    desc1.putReference(cTID('null'), ref1);
    var ref2 = new ActionReference();
    ref2.putProperty(cTID('csel'), sTID("selection"));
    desc1.putReference(cTID('From'), ref2);
    desc1.putUnitDouble(cTID('Tlrn'), cTID('#Pxl'), 1);
    executeAction(sTID('make'), desc1, dialogMode);
  };

  step1();      // Erstellen
};



//=========================================
//                    SelectionToPaht.main
//=========================================
//

SelectionToPaht.main = function () {
  SelectionToPaht();
};

SelectionToPaht.main();

// EOF

"SelectionToPaht.jsx"
// EOF
