using Godot;
using System;
[Tool]
public partial class UIButton : PanelContainer
{
	
	[Export] String Text;
	[Export] Label Label;
	[Export] TextureButton Button;
	
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		Button = GetNode<TextureButton>("TextureButton");
		Label = GetNode<Label>("Label");
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
}
