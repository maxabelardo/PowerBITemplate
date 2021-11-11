select distinct rSys.Name0, sf.FileName, sf.FileVersion, sf.FilePath, sf.FileSize,sf.FileDescription, os.Caption0,lss.LastUpdateDate,wss.LastHWScan from vSMS_G_System_SoftwareFile AS sf JOIN System_DISC AS rSys ON sf.ClientId = rSys.ItemKey JOIN Operating_System_DATA AS os ON os.MachineID = sf.ClientId JOIN SoftwareInventoryStatus AS lss ON lss.ClientId = rSys.ItemKey  FULL OUTER JOIN WorkstationStatus_DATA AS wss ON wss.MachineID = rSys.ItemKey where LOWER(sf.FileName) in ('fmsmaster.exe', '3d toolkit.exe', 'a3dreviewer.exe', 'acroaum.exe', 'acrobat elements.exe', 'acrobat.exe', 'acrobatelementsserver.exe', 'acrodist.exe', 'acroex32.exe', 'acrord32.exe', 'adobe encore dvd.exe', 'adobe encore.exe', 'adobe onlocation.exe', 'adobe premiere elements.exe', 'adobe premiere elements 7.0.exe', 'adobe premiere pro.exe', 'adobe soundbooth cs3.exe', 'adobe soundbooth cs4.exe', 'adobe_premiere_elements.exe', 'adobe_sap_formbuilder.exe', 'adobe_sap_formbuilder_5.0.exe', 'adobe_sap_formbuilder_5.1.exe', 'adobe_sap_formbuilder_5.5.exe', 'adobe_sap_formbuilder_5.6.exe', 'adobe_sap_formbuilder_5.exe', 'adobecaptivate.exe', 'afterfx.exe', 'atmfm.exe', 'audition.exe', 'authorware 5.exe', 'authorware 6.exe', 'authorware 61.exe', 'authorware 7.exe', 'cfserver.exe', 'cfstudio4.exe', 'cfstudio45.exe', 'cfstudio5.exe', 'contribute 4.exe', 'contribute.exe', 'convertip.exe', 'coolpro2.exe', 'dreamweaver.exe', 'encoredvd.exe', 'fireworks 3.exe', 'fireworks 4.exe', 'fireworks.exe', 'flash video encoder.exe', 'flash.exe', 'flash8videoencoder.exe', 'flashcom.exe', 'flashprinter.exe', 'flex builder.exe', 'flexbuilder.exe', 'formdesign.exe', 'formdesigner.exe', 'frame.exe', 'framemaker.exe', 'framemaker+sgml.exe', 'frameviewer.exe', 'freehand 10.exe', 'freehand 9.exe', 'freehand mx.exe', 'fsservice.exe', 'fsserviceagentservice.exe', 'golive.exe', 'homesite+.exe', 'homesite4.exe', 'homesite45.exe', 'homesite5.exe', 'illustrator.exe', 'imageready.exe', 'incopy.exe', 'indesign.exe', 'jrun.exe', 'lightroom.exe', 'livemotion.exe', 'pagemill.exe', 'pbe.exe', 'pd.exe', 'pd3.exe', 'pd4.exe', 'photoshop elements 3.0.exe', 'photoshop elements 3.exe', 'photoshop elements 4.0.exe', 'photoshop elements 4.exe', 'photoshop elements 5.0.exe', 'photoshop elements 6.0.exe', 'photoshop elements 7.0.exe', 'photoshop.exe', 'photoshopalbum.exe', 'photoshopelements.exe', 'photoshp.exe', 'photosle.exe', 'pm.exe', 'pm4.exe', 'pm5.exe', 'pm6.exe', 'pm65.exe', 'pm70.exe', 'premiere.exe', 'presenter.exe', 'robodemo.exe', 'robohelp.exe', 'roboinfo.exe', 'streamline.exe', 'flashbuilder4.exe', 'adobe flash catalyst.exe', 'adobe soundbooth cs5.exe', 'photoshop elements 8.0.exe', 'adobe premiere elements 8.0.exe', 'photoshop elements 9.0.exe', 'photoshop elements 10.0.exe', 'adobe premiere elements 9.exe', 'adobe premiere elements 10.exe', 'adobe premiere elements 10.0.exe', 'adobe audition.exe', 'flashbuilder.exe', 'Adobe Audition CS6.exe') order by rSys.Name0