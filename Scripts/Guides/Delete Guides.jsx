#target photoshop
//
// DeleteGuides.jsx
//

//
// Generated Wed May 29 2013 12:57:52 GMT+0200
//

cTID = function(s) { return app.charIDToTypeID(s); };
sTID = function(s) { return app.stringIDToTypeID(s); };

//
//==================== Delete Guides ==============
//
function DeleteGuides() {
  // Löschen
  function step1(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    var desc1 = new ActionDescriptor();
    var ref1 = new ActionReference();
    ref1.putEnumerated(cTID('Gd  '), cTID('Ordn'), cTID('Al  '));
    desc1.putReference(cTID('null'), ref1);
    executeAction(sTID('delete'), desc1, dialogMode);
  };

  step1();      // Löschen
};



//=========================================
//                    DeleteGuides.main
//=========================================
//

DeleteGuides.main = function () {
  DeleteGuides();
};

DeleteGuides.main();

// EOF

"DeleteGuides.jsx"
// EOF
