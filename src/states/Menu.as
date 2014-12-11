package states
{
	
	import sentinel.testing.states.TestMenu;
	import sentinel.testing.ui.TestMenuButton;
	
	
	public class Menu extends TestMenu
	{
		
		private static const BUTTON_TEXT_PLAY:String = 'Play';
		
		
		public function Menu()
		{
			super();
			
			setButtons(new <TestMenuButton>[
				new TestMenuButton(BUTTON_TEXT_PLAY, _buttonClick)
			]);
		}
		
		
		private function _buttonClick(button:TestMenuButton):void
		{
			if (button.text === BUTTON_TEXT_PLAY)
			{
				//
			}
		}
		
		
		protected override function get backgroundColor():uint { return 0x000000; }
		
	}
	
}