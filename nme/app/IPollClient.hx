package nme.app;

interface IPollClient
{
   public function onPoll(timestamp:Float):Void;
   public function getNextWake(defaultWake:Float,timestamp:Float):Float;
}

