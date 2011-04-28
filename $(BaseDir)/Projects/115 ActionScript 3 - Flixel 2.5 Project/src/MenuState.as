package
{

	import org.flixel.*;

	public class MenuState extends FlxState
	{
		
		private var playButton:FlxButton;
		private var devButton:FlxButton;
		
		override public function create():void
		{
			FlxG.bgColor = 0xff313210;
			
			
			devButton = new FlxButton(FlxG.width/2-40,FlxG.height / 3 + 60, "My Site", onSite, onOver);
			devButton.color = 0xffD4D943;
			devButton.label.color = 0xffD8EBA2;
			add(devButton);
			
			playButton = new FlxButton(FlxG.width/2-40,FlxG.height / 3 + 100, "Click To Play", onPlay, onOver);
			playButton.color = devButton.color;
			playButton.label.color = devButton.label.color;
			add(playButton);
			
			
			FlxG.mouse.show();
			
		}
		
		override public function update():void
		{
			super.update();	
		}
		
		protected function onSite():void
		{
			
			FlxU.openURL("http://devianix.com/");
		}
		
		protected function onPlay():void
		{
			playButton.exists = false;
			FlxG.switchState(new PlayState());
		}
		
		protected function onOver():void
		{
			//replace with button mouseOver soundeffect
		}
		
	}
}

