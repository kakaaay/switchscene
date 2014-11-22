

/*
 * FourthScene
 * Created by Eqela Studio 2.0b7.4
 */

public class FourthScene : SEScene
{
	SESprite image4;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		rsc.prepare_image("image4", "evil", get_scene_width(), get_scene_height());
		image4 = add_sprite_for_image(SEImage.for_resource("image4"));
		image4.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {
	    switch_scene(new Main());
	}

	public void cleanup() {
		base.cleanup();
		image4 = SESprite.remove(image4);
	}
}
