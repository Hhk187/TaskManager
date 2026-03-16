using Godot;
using System;

public partial class UIButton : Button
{
	[Export]
	PackedScene link;

	public override void _Ready()
	{
		Pressed += _onPressed;
	}

	private void  _onPressed()
	{
		if (link != null)
		{
			GetTree().ChangeSceneToPacked(link);
		}
	}


}
