;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.244390896990122)

        (= (sled_supplies s0) 3.9907127589292255)

        (= (factor_value f0) 0.762486089805971)
		(= (factor_value f1) 0.8756125384095679)
		(= (factor_value f2) 0.54605179014048)
		(= (factor_value f3) 0.5502233770720629)

        (= (dummy_1_value d1_0) 0.5635011958203107)
		(= (dummy_1_value d1_1) 0.718906301028057)
		(= (dummy_1_value d1_2) 0.674725133024055)
		(= (dummy_1_value d1_3) 0.9507369171212114)
		(= (dummy_1_value d1_4) 0.7035403337989714)

        (= (dummy_2_value d2_0) 4.612023033392628)

        (= (dummy_3_value d3_0) 31.594405487371866)
		(= (dummy_3_value d3_1) 78.66879251743468)
		(= (dummy_3_value d3_2) 89.78469250689844)
		(= (dummy_3_value d3_3) 73.09976215800862)

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

