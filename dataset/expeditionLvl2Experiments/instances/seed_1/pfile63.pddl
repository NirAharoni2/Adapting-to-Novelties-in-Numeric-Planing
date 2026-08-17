;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_63)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.982604334992653)

        (= (sled_supplies s0) 9.34563727334177)

        (= (factor_value f0) 0.9259348409614478)

        (= (dummy_1_value d1_0) 0.8044187999087749)
		(= (dummy_1_value d1_1) 0.518800950463653)
		(= (dummy_1_value d1_2) 0.5317322454137701)
		(= (dummy_1_value d1_3) 0.8153680385896873)

        (= (dummy_2_value d2_0) 8.378940784289332)
		(= (dummy_2_value d2_1) 3.3896116449786686)
		(= (dummy_2_value d2_2) 9.722971086006162)

        (= (dummy_3_value d3_0) 55.48834296391705)
		(= (dummy_3_value d3_1) 57.803348748365856)
		(= (dummy_3_value d3_2) 62.24356970388122)
		(= (dummy_3_value d3_3) 8.416505792377217)
		(= (dummy_3_value d3_4) 17.86842576813364)

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

