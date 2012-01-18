# # # # # # #
# Uploader  #
# # # # # # #
root = exports ? window

root.appliciousUploaderFileAdded = (up, files) ->
	AP.log 'Called'
	up.refresh() # Reposition Flash/Silverlight
	
root.appliciousUploaderUploadProgress = (up, file) ->
	#AP.log 'Called'
	
root.appliciousUploaderFileUploaded = (up, file) ->
	AP.log 'Called'
	
root.appliciousUploaderError = (up, error) ->
	AP.log 'Called'
	up.refresh() # Reposition Flash/Silverlight


$(document).ready ->
	
	$('#upload_file').click (e) ->
		AP.Uploader.UploadObj.start()
		e.preventDefault()
		
# - - - #