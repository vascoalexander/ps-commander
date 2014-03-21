#target photoshop
//
// StrokePath.jsx
//

//
// Generated Mon Jun 03 2013 19:05:37 GMT+0200
//

cTID = function(s) { return app.charIDToTypeID(s); };
sTID = function(s) { return app.stringIDToTypeID(s); };

//
//==================== StrokePath ==============
//
function StrokePath() {
  // Kontur füllen
  function step1(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    var desc1 = new ActionDescriptor();
    var ref1 = new ActionReference();
    ref1.putProperty(cTID('Path'), cTID('WrPt'));
    desc1.putReference(cTID('null'), ref1);
    desc1.putClass(cTID('Usng'), cTID('PbTl'));
    executeAction(sTID('stroke'), desc1, dialogMode);
  };

  step1(true, true);      // Kontur füllen
};



//=========================================
//                    StrokePath.main
//=========================================
//

StrokePath.main = function () {
  StrokePath();
};

StrokePath.main();

// EOF

"StrokePath.jsx"
// EOF
