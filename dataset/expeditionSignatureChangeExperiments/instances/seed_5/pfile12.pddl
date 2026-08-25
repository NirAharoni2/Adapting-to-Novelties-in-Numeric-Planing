;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.67626565971516)

        (= (sled_supplies s0) 0.5908949679200631)

        (= (factor_value f0) 0.8909536191700509)
		(= (factor_value f1) 0.6228300910074964)

        (= (dummy_1_value d1_0) 0.6338442558195962)
		(= (dummy_1_value d1_1) 0.5773828280026327)
		(= (dummy_1_value d1_2) 0.9944126020585322)
		(= (dummy_1_value d1_3) 0.6465941276113092)

        (= (dummy_2_value d2_0) 6.472338318320733)

        (= (dummy_3_value d3_0) 47.98851108777289)
		(= (dummy_3_value d3_1) 64.84278618160396)
		(= (dummy_3_value d3_2) 60.78151867676764)
		(= (dummy_3_value d3_3) 74.60385060761328)

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

