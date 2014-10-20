class ScriptMain
{
   public static function main()
   {
      #if nme
         nme.app.Application.setPackage("::APP_COMPANY::", "::APP_FILE::", "::APP_PACKAGE::", "::APP_VERSION::");

         var stage = nme.Lib.current.stage;
         stage.frameRate = ::WIN_FPS::;
         stage.opaqueBackground = ::WIN_BACKGROUND::;
         nme.app.Application.initWidth = ::WIN_WIDTH::;
         nme.app.Application.initHeight = ::WIN_HEIGHT::;

         var window = stage.window;
         if (window.displayState==nme.display.StageDisplayState.NORMAL)
         {
            var cx = window.x + window.width*0.5;
            var cy = window.y + window.height*0.5;
            window.resize(::WIN_WIDTH::,::WIN_HEIGHT::);
            var x0 = window.x;
            var y0 = window.y;
            var px = Std.int(x0 + (window.width-::WIN_WIDTH::)*0.5);
            if (px<0 && x0>=0)
               px = 0;
            var py = Std.int(y0 + (window.height-::WIN_HEIGHT::)*0.5);
            if (py<0 && y0>=0)
               py = 0;
            window.setPosition(px,py);
         }
         //icon  : Assets.info.get("::WIN_ICON::")==null ? null : getAsset("::WIN_ICON::")


         nme.app.Application.setFixedOrientation(
            ::if (WIN_ORIENTATION == "portrait")::
               nme.app.Application.OrientationPortraitAny
            ::elseif (WIN_ORIENTATION == "landscape")::
               nme.app.Application.OrientationLandscapeAny
            ::else::
               nme.app.Application.OrientationAny
             ::end::
         );

      #end

      nme.ScriptData.create();
   
      ApplicationBoot.createInstance("ScriptDocument");
   }
   
}

