#target photoshop
selectTool('eraserTool');
selectTool('blurTool');
selectTool('dodgeTool');
selectTool('lassoTool');
selectTool('penTool');
selectTool('pathComponentSelectTool');
selectTool('rectangleTool');
selectTool('spotHealingBrushTool');
selectTool('gradientTool');
selectTool('paintbrushTool');
function selectTool(tool) {
    var desc9 = new ActionDescriptor();
        var ref7 = new ActionReference();
        ref7.putClass( app.stringIDToTypeID(tool) );
    desc9.putReference( app.charIDToTypeID('null'), ref7 );
    executeAction( app.charIDToTypeID('slct'), desc9, DialogModes.NO );
};
