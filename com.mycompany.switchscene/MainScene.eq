
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	SESprite image1;
	SESprite image2;
	SESprite image3;
	SESprite image4;
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("image1", "minion", get_scene_width()*0.5, get_scene_height()*0.5);
		rsc.prepare_image("image2", "max", get_scene_width()*0.5, get_scene_height()*0.5);
		rsc.prepare_image("image3", "bay", get_scene_width()*0.5, get_scene_height()*0.5);
		rsc.prepare_image("image4", "evil", get_scene_width()*0.5, get_scene_height()*0.5);

		image1 = add_sprite_for_image(SEImage.for_resource("image1"));
		image2 = add_sprite_for_image(SEImage.for_resource("image2"));
		image3 = add_sprite_for_image(SEImage.for_resource("image3"));
		image4 = add_sprite_for_image(SEImage.for_resource("image4"));

		image1.move(0,0);
		image2.move(get_scene_width()*0.5, 0);
		image3.move(0, get_scene_height()*0.5);
		image4.move(get_scene_width()*0.5, get_scene_height()*0.5);
	}

	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
    	if(pi.is_inside(0, 0, 0.5*get_scene_width(), 0.5*get_scene_height())) {
			switch_scene(new FirstScene());
		}

		else if(pi.is_inside(0.5*get_scene_width(), 0, 0.5*get_scene_width(), 0.5*get_scene_height())) {
			switch_scene(new SecondScene());
		}

		else if(pi.is_inside(0, 0.5*get_scene_height(), 0.5*get_scene_width(), 0.5*get_scene_height())) {
			image1.set_alpha(0);
			image2.set_alpha(0);
			image3.set_alpha(0);
			image4.set_alpha(0);
			switch_scene(new ThirdScene());
		}
		
		else if(pi.is_inside(0.5*get_scene_width(), 0.5*get_scene_height(), 0.5*get_scene_width(), 0.5*get_scene_height())) {
			image1.set_alpha(0);
			image2.set_alpha(0);
			image3.set_alpha(0);
			image4.set_alpha(0);
			switch_scene(new FourthScene());
		}
	}
	
	public void cleanup() {
		base.cleanup();
		image1 = SESprite.remove(image1);
		image2 = SESprite.remove(image2);
		image3 = SESprite.remove(image3);
		image4 = SESprite.remove(image4);
	}
}
