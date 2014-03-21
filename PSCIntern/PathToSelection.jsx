#target photoshop
//
// PathToSelection.jsx
//

//
// Generated Wed May 29 2013 08:51:01 GMT+0200
//

cTID = function(s) { return app.charIDToTypeID(s); };
sTID = function(s) { return app.stringIDToTypeID(s); };

//
//==================== PathToSelection ==============
//
function PathToSelection() {
  // Setzen
  function step1(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    var desc1 = new ActionDescriptor();
    var ref1 = new ActionReference();
    ref1.putProperty(cTID('Chnl'), sTID("selection"));
    desc1.putReference(cTID('null'), ref1);
    var ref2 = new ActionReference();
    ref2.putProperty(cTID('Path'), cTID('WrPt'));
    desc1.putReference(cTID('T   '), ref2);
    executeAction(sTID('set'), desc1, dialogMode);
  };

  step1();      // Setzen
};



//=========================================
//                    PathToSelection.main
//=========================================
//

PathToSelection.main = function () {
  PathToSelection();
};

PathToSelection.main();

// EOF

"PathToSelection.jsx"
// EOF
