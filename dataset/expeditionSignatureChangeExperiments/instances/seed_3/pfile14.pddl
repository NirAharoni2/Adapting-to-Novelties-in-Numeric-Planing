;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.895768024751785)

        (= (sled_supplies s0) 2.556628716327505)

        (= (factor_value f0) 0.5117436846400943)
		(= (factor_value f1) 0.9207677872937194)
		(= (factor_value f2) 0.5606417358870337)
		(= (factor_value f3) 0.9219716270085301)

        (= (dummy_1_value d1_0) 0.8367673847150844)

        (= (dummy_2_value d2_0) 8.525637561583093)
		(= (dummy_2_value d2_1) 9.571701866093676)
		(= (dummy_2_value d2_2) 6.211687771189503)
		(= (dummy_2_value d2_3) 8.188725246482093)
		(= (dummy_2_value d2_4) 1.3264234287009273)

        (= (dummy_3_value d3_0) 76.97443523854089)

        (= (waypoint_supplies w0_0) 1000)
		(= (waypoint_supplies w0_1) 0.0)
		(= (waypoint_supplies w0_2) 0.0)
		(= (waypoint_supplies w0_3) 0.0)
		(= (waypoint_supplies w0_4) 0.0)

		(is_next w0_0 w0_1)
		(is_next w0_1 w0_2)
		(is_next w0_2 w0_3)
		(is_next w0_3 w0_4)
	)
	(:goal
		(and
			(at s0 w0_4)
		)
	)
)

