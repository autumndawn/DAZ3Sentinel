package daz.guns
{
	
	import daz.world.Creature;
	import daz.world.Pickup;
	import sentinel.gameplay.world.BaseWorld;
	
	
	public class Shotgun extends BulletGun
	{
		
		public function Shotgun()
		{
			_damage = 1;
			_clipSize = 4;
			_clipAmmo = 4;
			_totalAmmo = 2;
			_cooldownDelay = 50;
			_reloadDelay = 120;
			_errorAngle = 0.22;
			_offset = 50;
			
			super(Pickup.SHOTGUN, Pickup.SHOTGUN_AMMO);
		}
		
		
		protected override function fire(user:Creature, world:BaseWorld):void
		{
			for (var i:int = 0; i < 8; i++)
			{
				fireBullet(user.position.cast(user.rotation, _offset), user.rotation, world);
			}
		}
		
	}
	
}