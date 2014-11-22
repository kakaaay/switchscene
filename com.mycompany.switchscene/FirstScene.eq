
/*
 * FirstScene
 * Created by Eqela Studio 2.0b7.4
 */

public class FirstScene : SEScene
{
	SESprite image1;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		rsc.prepare_image("image1", "minion", get_scene_width(), get_scene_height());
		image1 = add_sprite_for_image(SEImage.for_resource("image1"));
		image1.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {
	    switch_scene(new Main());
	}

	public void cleanup() {
		base.cleanup();
		image1 = SESprite.remove(image1);
	}

}
