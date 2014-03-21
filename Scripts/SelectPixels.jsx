#target photoshop
//
// SelectPixels.jsx
//

//
// Generated Wed May 29 2013 08:37:45 GMT+0200
//

cTID = function(s) { return app.charIDToTypeID(s); };
sTID = function(s) { return app.stringIDToTypeID(s); };

//
//==================== Select Pixels ==============
//
function SelectPixels() {
  // Setzen
  function step1(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    var desc1 = new ActionDescriptor();
    var ref1 = new ActionReference();
    ref1.putProperty(cTID('Chnl'), sTID("selection"));
    desc1.putReference(cTID('null'), ref1);
    desc1.putEnumerated(cTID('T   '), cTID('Ordn'), cTID('None'));
    executeAction(sTID('set'), desc1, dialogMode);
  };

  // Farbbereich
  function step2(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    var desc1 = new ActionDescriptor();
    desc1.putEnumerated(cTID('Clrs'), cTID('Clrs'), cTID('Hghl'));
    executeAction(sTID('colorRange'), desc1, dialogMode);
  };

  // Auswahl umkehren
  function step3(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    executeAction(sTID('inverse'), undefined, dialogMode);
  };

  step1();      // Setzen
  step2();      // Farbbereich
  step3();      // Auswahl umkehren
};



//=========================================
//                    SelectPixels.main
//=========================================
//

SelectPixels.main = function () {
  SelectPixels();
};

SelectPixels.main();

// EOF

"SelectPixels.jsx"
// EOF
