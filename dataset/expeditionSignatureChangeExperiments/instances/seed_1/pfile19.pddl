;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.721114446591443)

        (= (sled_supplies s0) 0.4100414158798277)

        (= (factor_value f0) 0.9971555286672289)

        (= (dummy_1_value d1_0) 0.762086983700175)
		(= (dummy_1_value d1_1) 0.5452008948025991)
		(= (dummy_1_value d1_2) 0.6275919624732751)
		(= (dummy_1_value d1_3) 0.5505232187640899)

        (= (dummy_2_value d2_0) 7.632167601702854)
		(= (dummy_2_value d2_1) 1.7534794482212475)
		(= (dummy_2_value d2_2) 9.773387948067004)
		(= (dummy_2_value d2_3) 9.72305687503379)

        (= (dummy_3_value d3_0) 62.07336217426624)
		(= (dummy_3_value d3_1) 96.71331449830545)
		(= (dummy_3_value d3_2) 68.97629116729176)

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

