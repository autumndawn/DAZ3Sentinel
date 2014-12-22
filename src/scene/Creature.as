package scene
{
	
	import events.CreatureEvent;
	import sentinel.framework.graphics.IGraphics;
	import sentinel.gameplay.world.Being;
	
	
	public class Creature extends Being
	{
		
		private var _health:int;
		private var _maxHealth:int;
		private var _speed:Number;
		
		
		public function Creature()
		{
			_health = _maxHealth = defineHealth();
			_speed = defineSpeed();
		}
		
		
		protected function defineHealth():int
		{
			return 1;
		}
		
		
		protected function defineSpeed():Number
		{
			return 0;
		}
		
		
		public function takeDamage(amount:int):void
		{
			_health -= amount;
			
			if (_health <= 0)
			{
				_health = 0;
				die();
			}
			
			dispatchEvent(new CreatureEvent(CreatureEvent.TAKE_DAMAGE, { damageTaken: amount } ));
		}
		
		
		protected function die():void
		{
			// Do some death stuff e.g. drop loot.
			// ...
			
			dispatchEvent(new CreatureEvent(CreatureEvent.DIE));
		}
		
		
		public function get health():int { return _health; }
		public function get maxHealth():int { return _maxHealth; }
		public function get healthPercent():Number { return _health / _maxHealth; }
		public function get speed():Number{ return _speed; }
		
	}
	
}