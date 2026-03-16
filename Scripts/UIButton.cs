using Godot;
using System;
public partial class UIButton : PanelContainer
{
	
	[Export] PackedScene Link;

 	Label Label;
 	TextureButton Button;
	
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		Button = GetNode<TextureButton>("TextureButton");
		Label = GetNode<Label>("Label");

		Button.Pressed += _onButtonPressed;

	}

	
	private void _onButtonPressed()
	{
		if (Link != null)
		{
		GetTree().ChangeSceneToPacked(Link);
		}
		GD.Print("hello");
	} 

}
