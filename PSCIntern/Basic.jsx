#target photoshop

cTID = function(s) { return app.charIDToTypeID(s); };
sTID = function(s) { return app.stringIDToTypeID(s); };

function Select(enabled, withDialog) {
    if (enabled != undefined && !enabled)
      return;
    var dialogMode = (withDialog ? DialogModes.ALL : DialogModes.NO);
    var desc1 = new ActionDescriptor();
    var ref1 = new ActionReference();
    ref1.putIndex(cTID('Brsh'), 1);
    desc1.putReference(cTID('null'), ref1);
    executeAction(sTID('select'), desc1, dialogMode);
  };
  
  Select.main = function () {
  Select();
};

Select.main();