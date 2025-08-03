(define (domain domain_name)
    (:requirements :typing :fluents)

    (:types
        location - object
    )

    (:predicates
        (visited ?x - location)
    )
    (:functions
        (x)
        (y)
        (z)
        (xl ?l - location)
        (yl ?l - location)
        (zl ?l - location)
        (battery-level)
        (battery-level-full)
        (min_x)
        (max_x)
        (min_y)
        (max_y)
        (min_z)
        (max_z)
    )
    (:action increase_x
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (<= (x ) (- (max_x ) 1)))
     :effect (and
            (increase (x ) 1)
            (decrease (battery-level ) 1))
    )
    (:action decrease_x
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (>= (x ) (+ (min_x ) 0)))
     :effect (and
            (assign (x ) (+ (* 0.00371 (* (battery-level ) (battery-level ))) (+ (* -0.00366 (* (battery-level ) (battery-level-full ))) (+ (* -0.00588 (* (battery-level-full ) (battery-level-full ))) (+ (* -0.00156 (* (max_x ) (battery-level ))) (+ (* 0.00047 (* (max_x ) (battery-level-full ))) (+ (* 0.0096 (* (max_x ) (max_x ))) (+ (* -0.00033 (* (max_x ) (max_y ))) (+ (* -0.00846 (* (max_x ) (max_z ))) (+ (* -0.0029 (* (max_y ) (battery-level ))) (+ (* 0.00153 (* (max_y ) (battery-level-full ))) (+ (* -0.00635 (* (max_y ) (max_y ))) (+ (* 0.00674 (* (max_y ) (max_z ))) (+ (* 0.00393 (* (max_z ) (battery-level ))) (+ (* -0.00282 (* (max_z ) (battery-level-full ))) (+ (* 0.00086 (* (max_z ) (max_z ))) (+ (* 0.01834 (* (x ) (battery-level ))) (+ (* 0.05408 (* (x ) (battery-level-full ))) (+ (* 0.0141 (* (x ) (max_x ))) (+ (* -0.00033 (* (x ) (max_y ))) (+ (* 0.00353 (* (x ) (max_z ))) (+ (* 0.01448 (* (x ) (x ))) (+ (* -0.00562 (* (x ) (y ))) (+ (* 0.00299 (* (x ) (z ))) (+ (* -0.00317 (* (y ) (battery-level ))) (+ (* 0.00141 (* (y ) (battery-level-full ))) (+ (* -0.00864 (* (y ) (max_x ))) (+ (* 0.0059 (* (y ) (max_y ))) (+ (* 0.00283 (* (y ) (max_z ))) (+ (* -0.00054 (* (y ) (y ))) (+ (* 0.00191 (* (y ) (z ))) (+ (* 0.00031 (* (z ) (battery-level ))) (+ (* -0.00983 (* (z ) (battery-level-full ))) (+ (* -0.00113 (* (z ) (max_x ))) (+ (* -0.00167 (* (z ) (max_y ))) (+ (* -0.00022 (* (z ) (max_z ))) (+ (* -0.00076 (* (z ) (z ))) (+ (* -0.00013 (battery-level )) (+ (* -0.0002 (battery-level-full )) (+ (* 0.0002 (max_x )) (+ (* 1e-05 (max_y )) (+ (* -0.00022 (max_z )) (+ (* 0.00433 (x )) (+ (* 2e-05 (y )) (+ (* -0.00076 (z )) 1.44905)))))))))))))))))))))))))))))))))))))))))))))
            (decrease (battery-level ) 1)
            (assign (y ) (+ (* -0.02158 (* (battery-level ) (battery-level ))) (+ (* -0.00631 (* (battery-level ) (battery-level-full ))) (+ (* 0.00329 (* (battery-level-full ) (battery-level-full ))) (+ (* 0.0346 (* (max_x ) (battery-level ))) (+ (* -0.00985 (* (max_x ) (battery-level-full ))) (+ (* -0.0028 (* (max_x ) (max_x ))) (+ (* 0.00187 (* (max_x ) (max_y ))) (+ (* -0.00269 (* (max_x ) (max_z ))) (+ (* -0.02769 (* (max_y ) (battery-level ))) (+ (* 0.02129 (* (max_y ) (battery-level-full ))) (+ (* 0.00141 (* (max_y ) (max_y ))) (+ (* 0.00368 (* (max_y ) (max_z ))) (+ (* 0.03523 (* (max_z ) (battery-level ))) (+ (* -0.01088 (* (max_z ) (battery-level-full ))) (+ (* -0.00433 (* (max_z ) (max_z ))) (+ (* 0.01596 (* (x ) (battery-level ))) (+ (* 0.00222 (* (x ) (battery-level-full ))) (+ (* -0.00222 (* (x ) (max_x ))) (+ (* 0.00187 (* (x ) (max_y ))) (+ (* 0.00043 (* (x ) (max_z ))) (+ (* -0.00256 (* (x ) (x ))) (+ (* 0.01832 (* (x ) (y ))) (+ (* 0.00218 (* (x ) (z ))) (+ (* 0.01594 (* (y ) (battery-level ))) (+ (* 0.06012 (* (y ) (battery-level-full ))) (+ (* 0.04033 (* (y ) (max_x ))) (+ (* -0.0239 (* (y ) (max_y ))) (+ (* 0.04676 (* (y ) (max_z ))) (+ (* 0.00564 (* (y ) (y ))) (+ (* 0.03246 (* (y ) (z ))) (+ (* 0.02968 (* (z ) (battery-level ))) (+ (* 0.01185 (* (z ) (battery-level-full ))) (+ (* 0.00125 (* (z ) (max_x ))) (+ (* 0.00323 (* (z ) (max_y ))) (+ (* -0.00084 (* (z ) (max_z ))) (+ (* 0.00091 (* (z ) (z ))) (+ (* 0.01053 (battery-level )) (+ (* 0.00014 (battery-level-full )) (+ (* -0.00091 (max_x )) (+ (* 0.00174 (max_y )) (+ (* -0.00084 (max_z )) (+ (* 2e-05 (x )) (+ (* 0.0158 (y )) (+ (* 0.00091 (z )) -1.18777))))))))))))))))))))))))))))))))))))))))))))))
    )
    (:action increase_y
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (<= (y ) (- (max_y ) 1)))
     :effect (and
            (increase (y ) 1)
            (decrease (battery-level ) 1))
    )
    (:action decrease_y
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (>= (y ) (+ (min_y ) 0)))
     :effect (and
            (assign (y ) (+ (* -0.00657 (* (battery-level ) (battery-level ))) (+ (* -0.00857 (* (battery-level ) (battery-level-full ))) (+ (* -0.00194 (* (battery-level-full ) (battery-level-full ))) (+ (* 0.00135 (* (max_x ) (battery-level ))) (+ (* -0.00905 (* (max_x ) (battery-level-full ))) (+ (* -0.00075 (* (max_x ) (max_x ))) (+ (* -0.00222 (* (max_x ) (max_y ))) (+ (* -3e-05 (* (max_x ) (max_z ))) (+ (* -0.00038 (* (max_y ) (battery-level ))) (+ (* 0.00987 (* (max_y ) (battery-level-full ))) (+ (* 0.00861 (* (max_y ) (max_y ))) (+ (* -0.00301 (* (max_y ) (max_z ))) (+ (* -0.00255 (* (max_z ) (battery-level ))) (+ (* -0.00133 (* (max_z ) (battery-level-full ))) (+ (* 0.00265 (* (max_z ) (max_z ))) (+ (* -0.00036 (* (x ) (battery-level ))) (+ (* 0.00025 (* (x ) (battery-level-full ))) (+ (* -3e-05 (* (x ) (max_x ))) (+ (* -0.00154 (* (x ) (max_y ))) (+ (* 0.00144 (* (x ) (max_z ))) (+ (* -3e-05 (* (x ) (x ))) (+ (* 0.00137 (* (x ) (y ))) (+ (* 0.00194 (* (x ) (z ))) (+ (* 0.01266 (* (y ) (battery-level ))) (+ (* 0.05635 (* (y ) (battery-level-full ))) (+ (* 0.00141 (* (y ) (max_x ))) (+ (* 0.01658 (* (y ) (max_y ))) (+ (* -0.0001 (* (y ) (max_z ))) (+ (* 0.01517 (* (y ) (y ))) (+ (* -0.00526 (* (y ) (z ))) (+ (* 0.00329 (* (z ) (battery-level ))) (+ (* 0.01025 (* (z ) (battery-level-full ))) (+ (* 0.00579 (* (z ) (max_x ))) (+ (* -0.00235 (* (z ) (max_y ))) (+ (* 0.00062 (* (z ) (max_z ))) (+ (* 0.00328 (* (z ) (z ))) (+ (* -0.00039 (battery-level )) (+ (* -0.00013 (battery-level-full )) (+ (* -0.00075 (max_x )) (+ (* 0.00085 (max_y )) (+ (* -0.0001 (max_z )) (+ (* -3e-05 (x )) (+ (* 0.00447 (y )) (+ (* 0.00102 (z )) 0.7567)))))))))))))))))))))))))))))))))))))))))))))
            (decrease (battery-level ) 1)
            (assign (z ) (+ (* -0.00446 (* (battery-level ) (battery-level ))) (+ (* 0.00109 (* (battery-level ) (battery-level-full ))) (+ (* -0.00713 (* (battery-level-full ) (battery-level-full ))) (+ (* 0.03121 (* (max_x ) (battery-level ))) (+ (* 0.00205 (* (max_x ) (battery-level-full ))) (+ (* 0.00027 (* (max_x ) (max_x ))) (+ (* 0.00113 (* (max_x ) (max_y ))) (+ (* -0.00033 (* (max_x ) (max_z ))) (+ (* 0.02098 (* (max_y ) (battery-level ))) (+ (* -0.01203 (* (max_y ) (battery-level-full ))) (+ (* -0.01004 (* (max_y ) (max_y ))) (+ (* 0.00532 (* (max_y ) (max_z ))) (+ (* 0.00029 (* (max_z ) (battery-level ))) (+ (* 0.00914 (* (max_z ) (battery-level-full ))) (+ (* -0.00247 (* (max_z ) (max_z ))) (+ (* -0.05818 (* (x ) (battery-level ))) (+ (* 0.03454 (* (x ) (battery-level-full ))) (+ (* 0.00277 (* (x ) (max_x ))) (+ (* -0.00228 (* (x ) (max_y ))) (+ (* 0.01058 (* (x ) (max_z ))) (+ (* 0.00277 (* (x ) (x ))) (+ (* -0.00287 (* (x ) (y ))) (+ (* -0.06287 (* (x ) (z ))) (+ (* 0.00068 (* (y ) (battery-level ))) (+ (* 0.01429 (* (y ) (battery-level-full ))) (+ (* 0.00305 (* (y ) (max_x ))) (+ (* -0.00681 (* (y ) (max_y ))) (+ (* 0.00783 (* (y ) (max_z ))) (+ (* -0.00985 (* (y ) (y ))) (+ (* 0.00348 (* (y ) (z ))) (+ (* 0.01018 (* (z ) (battery-level ))) (+ (* 0.05912 (* (z ) (battery-level-full ))) (+ (* 0.03403 (* (z ) (max_x ))) (+ (* 0.03532 (* (z ) (max_y ))) (+ (* 0.00058 (* (z ) (max_z ))) (+ (* -0.00572 (* (z ) (z ))) (+ (* 0.01312 (battery-level )) (+ (* -0.00021 (battery-level-full )) (+ (* 0.00027 (max_x )) (+ (* -0.0009 (max_y )) (+ (* 0.00063 (max_z )) (+ (* 0.00277 (x )) (+ (* 0.00102 (y )) (+ (* 0.01748 (z )) -0.032))))))))))))))))))))))))))))))))))))))))))))))
    )
    (:action increase_z
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (<= (z ) (- (max_z ) 1)))
     :effect (and
            (increase (z ) 1)
            (decrease (battery-level ) 1))
    )
    (:action decrease_z
     :parameters ()
     :precondition (and
            (>= (battery-level ) 1)
            (>= (z ) (+ (min_z ) 0)))
     :effect (and
            (assign (z ) (+ (* -0.00452 (* (battery-level ) (battery-level ))) (+ (* 0.00625 (* (battery-level ) (battery-level-full ))) (+ (* -0.00475 (* (battery-level-full ) (battery-level-full ))) (+ (* -0.00386 (* (max_x ) (battery-level ))) (+ (* 0.0059 (* (max_x ) (battery-level-full ))) (+ (* 0.00356 (* (max_x ) (max_x ))) (+ (* -0.00019 (* (max_x ) (max_y ))) (+ (* -0.00155 (* (max_x ) (max_z ))) (+ (* 0.00736 (* (max_y ) (battery-level ))) (+ (* -0.00741 (* (max_y ) (battery-level-full ))) (+ (* -0.00362 (* (max_y ) (max_y ))) (+ (* 0.00164 (* (max_y ) (max_z ))) (+ (* -0.00184 (* (max_z ) (battery-level ))) (+ (* 0.00081 (* (max_z ) (battery-level-full ))) (+ (* 0.00027 (* (max_z ) (max_z ))) (+ (* -0.00944 (* (x ) (battery-level ))) (+ (* -0.00538 (* (x ) (battery-level-full ))) (+ (* -0.00134 (* (x ) (max_x ))) (+ (* 0.00149 (* (x ) (max_y ))) (+ (* -0.00223 (* (x ) (max_z ))) (+ (* -0.00527 (* (x ) (x ))) (+ (* 0.00069 (* (x ) (y ))) (+ (* 0.00249 (* (x ) (z ))) (+ (* 0.00664 (* (y ) (battery-level ))) (+ (* 0.00127 (* (y ) (battery-level-full ))) (+ (* -0.00462 (* (y ) (max_x ))) (+ (* 0.00535 (* (y ) (max_y ))) (+ (* -0.00023 (* (y ) (max_z ))) (+ (* 0.00742 (* (y ) (y ))) (+ (* 0.00048 (* (y ) (z ))) (+ (* 0.01711 (* (z ) (battery-level ))) (+ (* 0.05932 (* (z ) (battery-level-full ))) (+ (* 0.00484 (* (z ) (max_x ))) (+ (* 0.00858 (* (z ) (max_y ))) (+ (* 0.00483 (* (z ) (max_z ))) (+ (* 0.00456 (* (z ) (z ))) (+ (* 0.00041 (battery-level )) (+ (* -0.00018 (battery-level-full )) (+ (* 0.00045 (max_x )) (+ (* -0.00054 (max_y )) (+ (* 9e-05 (max_z )) (+ (* -0.00052 (x )) (+ (* 0.00012 (y )) (+ (* 0.00456 (z )) 0.74421)))))))))))))))))))))))))))))))))))))))))))))
            (decrease (battery-level ) 1)
            (assign (x ) (+ (* -0.0079 (* (battery-level ) (battery-level ))) (+ (* 0.01591 (* (battery-level ) (battery-level-full ))) (+ (* 0.00499 (* (battery-level-full ) (battery-level-full ))) (+ (* -0.00016 (* (max_x ) (battery-level ))) (+ (* 0.00988 (* (max_x ) (battery-level-full ))) (+ (* 0.00322 (* (max_x ) (max_x ))) (+ (* -0.00074 (* (max_x ) (max_y ))) (+ (* 0.00056 (* (max_x ) (max_z ))) (+ (* 0.00311 (* (max_y ) (battery-level ))) (+ (* -0.00441 (* (max_y ) (battery-level-full ))) (+ (* 0.00022 (* (max_y ) (max_y ))) (+ (* -0.00095 (* (max_y ) (max_z ))) (+ (* 0.00026 (* (max_z ) (battery-level ))) (+ (* -0.00474 (* (max_z ) (battery-level-full ))) (+ (* -0.00118 (* (max_z ) (max_z ))) (+ (* 0.00329 (* (x ) (battery-level ))) (+ (* 0.05242 (* (x ) (battery-level-full ))) (+ (* 0.0006 (* (x ) (max_x ))) (+ (* 0.00738 (* (x ) (max_y ))) (+ (* 0.00663 (* (x ) (max_z ))) (+ (* -0.0049 (* (x ) (x ))) (+ (* 0.00851 (* (x ) (y ))) (+ (* -0.00162 (* (x ) (z ))) (+ (* 0.00758 (* (y ) (battery-level ))) (+ (* -0.00517 (* (y ) (battery-level-full ))) (+ (* -0.00193 (* (y ) (max_x ))) (+ (* 0.00029 (* (y ) (max_y ))) (+ (* -6e-05 (* (y ) (max_z ))) (+ (* 0.00165 (* (y ) (y ))) (+ (* -0.0008 (* (y ) (z ))) (+ (* -0.00603 (* (z ) (battery-level ))) (+ (* -0.00676 (* (z ) (battery-level-full ))) (+ (* 0.00042 (* (z ) (max_x ))) (+ (* -0.00141 (* (z ) (max_y ))) (+ (* -0.0011 (* (z ) (max_z ))) (+ (* -0.00052 (* (z ) (z ))) (+ (* 0.0008 (battery-level )) (+ (* 0.00018 (battery-level-full )) (+ (* 0.00076 (max_x )) (+ (* -0.00037 (max_y )) (+ (* -0.00039 (max_z )) (+ (* 0.00365 (x )) (+ (* -0.00043 (y )) (+ (* -0.00052 (z )) -2.24308))))))))))))))))))))))))))))))))))))))))))))))
    )
    (:action visit
     :parameters (?l - location)
     :precondition (and
            (>= (battery-level ) 1)
            (= (xl ?l) (x ))
            (= (yl ?l) (y ))
            (= (zl ?l) (z )))
     :effect (and
            (visited ?l)
            (decrease (battery-level ) 1))
    )
    (:action recharge
     :parameters ()
     :precondition (and
            (= (x ) 0)
            (= (y ) 0)
            (= (z ) 0))
     :effect (and
            (assign (battery-level ) (battery-level-full )))
    )
)