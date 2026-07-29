if [[ $(hyprctl activewindow -j | jq -r ".class") == "Steam" ]]; then
    xdotool windowunmap $(xdotool getactivewindow)
else
    # Lua config roots expect a Lua expression; the legacy form is kept as a
    # fallback so this works on both <=0.54 and >=0.55.
    hyprctl dispatch 'hl.dsp.window.close()' 2>/dev/null || hyprctl dispatch killactive ""
fi
