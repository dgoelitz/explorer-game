var targetTextProgress = string_length(texts[textIndex]);
var currentTextAnimating = currentTextProgress < targetTextProgress;

if (currentTextAnimating) {
    ++currentTextProgress;
}

if (keyboard_check_pressed(vk_space)) {
    if (currentTextAnimating) {
        currentTextProgress = targetTextProgress;
    }
    else {
        if (++textIndex < array_length(texts)) {
            currentTextProgress = 0;
        } else {
			global.unpausing = true;
            instance_destroy();
        }
    }
}