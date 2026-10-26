;;Instance with ${max_x}x${max_y}x${max_z} points
(define (problem ${instance_name})
    (:domain ${domain_name})
    (:objects
        ${location_list}
    )
    (:init
        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
        (= (min_x) 0)
        (= (max_x) ${max_x})
        (= (min_y) 0)
        (= (max_y) ${max_y})
        (= (min_z) 0)
        (= (max_z) ${max_z})

        ${location_coordinates}

        (= (battery-level) ${battery_level})
        (= (battery-level-full) ${battery_level_full})

        ${battery_factor}
    )
    (:goal (and
        ${visited_list}

        (= (x) 0)
        (= (y) 0)
        (= (z) 0)
    ))
)
;; end of the problem instance
