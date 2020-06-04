<?php
if (!function_exists('__t')) {
    function __t($key)
    {
        $item = \App\Traduccion::where('key', $key)->first();
        if ($item) {
            return $item->traducciones;
        } else {
            return $key;
        }
    }
}