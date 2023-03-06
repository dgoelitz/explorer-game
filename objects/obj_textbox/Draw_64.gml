///@desc Paint the box and text
draw_set_colour(boxColor);
draw_roundrect(x, y, x+width, y+height, false);
draw_set_colour(textColor);
draw_set_font(textFont);
draw_text_ext(x+margin, y+margin, string_copy(texts[textIndex], 1, currentTextProgress), -1, width-2*margin);