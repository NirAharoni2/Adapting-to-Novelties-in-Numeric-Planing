;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.133315917438024)

        (= (sled_supplies s0) 0.2594560685553138)

        (= (factor_value f0) 0.9827633346731923)

        (= (dummy_1_value d1_0) 0.6094552436529204)
		(= (dummy_1_value d1_1) 0.547135429043638)

        (= (dummy_2_value d2_0) 5.2712739684864935)
		(= (dummy_2_value d2_1) 2.482832252955449)
		(= (dummy_2_value d2_2) 6.602064639667757)
		(= (dummy_2_value d2_3) 4.117231795297495)

        (= (dummy_3_value d3_0) 13.270613490395602)

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

