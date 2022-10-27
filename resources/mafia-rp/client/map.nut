local sync_timer = false

timer(function () {
	sync_timer = true
	sync_timer2 = true
}, 5000, 1)

function fone1() 
{
	if(isMainMenuShowing())
	{
		return
	}

	openMap()
}

function fone2() 
{
	if(isMainMenuShowing())
	{
		return
	}

	if(sync_timer)
	{
		showChat( true )
	}
	else
	{
		showChat( false )
	}
}

addEventHandler("onClientScriptInit", 
function() 
{
	bindKey( "m", "down", fone1 )
	bindKey( "m", "up", fone2 )
})