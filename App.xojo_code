#tag Class
Protected Class App
Inherits Application
	#tag Method, Flags = &h0
		Sub ConnectToDB(sUserName as string, sPassword as string, iPort as integer, sAddress as string, sDatabase as string)
		  
		  If sUserName = "" Then 
		    sUserName = "warehouse_worker"
		    sPassword = "thisisapassword"
		    iport = 5432
		    sAddress = "24.196.52.102"
		    sDatabase = "otis_dev"
		  End If
		  
		  
		  db.UserName = sUserName
		  db.Password = sPassword
		  db.Port = iPort
		  db.Host = sAddress
		  db.DatabaseName = Database
		  
		  // Connect to database
		  If db.Connect Then
		    // Success
		    
		  Else
		    MsgBox( "Login to database failed: " + db.ErrorMessage
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Initialize()
		  
		  
		  ConnectToDB
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		db As PostgreSQLDatabase
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="db"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
