;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.804992600878808)

        (= (sled_supplies s0) 1.318371592620127)

        (= (factor_value f0) 0.5244464618093334)

        (= (dummy_1_value d1_0) 0.9210313190607595)

        (= (dummy_2_value d2_0) 2.9730889836773233)
		(= (dummy_2_value d2_1) 6.811636808657234)
		(= (dummy_2_value d2_2) 9.57020511478486)

        (= (dummy_3_value d3_0) 71.53189322046791)
		(= (dummy_3_value d3_1) 14.327963042343072)
		(= (dummy_3_value d3_2) 29.95679799371672)
		(= (dummy_3_value d3_3) 91.88178471743367)

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

