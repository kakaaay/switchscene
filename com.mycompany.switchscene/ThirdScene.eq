
/*
 * ThirdScene
 * Created by Eqela Studio 2.0b7.4
 */

public class ThirdScene : SEScene
{
	SESprite image3;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		rsc.prepare_image("image3", "bay", get_scene_width(), get_scene_height());
		image3 = add_sprite_for_image(SEImage.for_resource("image3"));
		image3.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {
		switch_scene(new Main());
	}

	public void cleanup() {
		base.cleanup();
		image3 = SESprite.remove(image3);
	}

}
