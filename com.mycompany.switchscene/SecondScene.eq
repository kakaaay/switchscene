
/*
 * SecondScene
 * Created by Eqela Studio 2.0b7.4
 */

public class SecondScene : SEScene
{
	SESprite image2;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		rsc.prepare_image("image2", "max", get_scene_width(), get_scene_height());
		image2 = add_sprite_for_image(SEImage.for_resource("image2"));
		image2.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {
	    switch_scene(new Main());
	}

	public void cleanup() {
		base.cleanup();
		image2 = SESprite.remove(image2);
	}
}
