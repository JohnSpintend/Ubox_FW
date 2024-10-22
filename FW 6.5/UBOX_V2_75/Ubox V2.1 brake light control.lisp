;Lisp script for Ubox V2.1's brake light control, need custom firmware of the VESC,
;https://github.com/JohnSpintend/Ubox_FW/tree/main/FW%206.5/UBOX_V2_75
(def c 0)
(def brake_state 0)

(gpio-configure 'pin-pb3 'pin-mode-out)    ;front light, allways on
(gpio-write 'pin-pb3 1)

(gpio-configure 'pin-pb4 'pin-mode-out)    ;brake light, turn on when regen current detected

(   loopwhile t
    {
        (setq c (get-current 1))

        (if (= brake_state 1)
            (if (> c -1.0) (setq brake_state 0) )
            (if (< c -2.5) (setq brake_state 1) )
        )

        (if (= brake_state 1)
            (gpio-write 'pin-pb4 1)
            (gpio-write 'pin-pb4 0)
        )

        (sleep 0.2)
    }
)
