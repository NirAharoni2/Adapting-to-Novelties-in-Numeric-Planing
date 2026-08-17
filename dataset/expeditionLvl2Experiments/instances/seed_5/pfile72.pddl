;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.974159583815057)

        (= (sled_supplies s0) 3.802209136111016)

        (= (factor_value f0) 0.7467531444419676)
		(= (factor_value f1) 0.8287199135631489)
		(= (factor_value f2) 0.7808964786053686)
		(= (factor_value f3) 0.5245482093463003)

        (= (dummy_1_value d1_0) 0.9796367346774713)
		(= (dummy_1_value d1_1) 0.6593716964457894)
		(= (dummy_1_value d1_2) 0.749812651384802)
		(= (dummy_1_value d1_3) 0.5211809992920665)
		(= (dummy_1_value d1_4) 0.5951759649381763)

        (= (dummy_2_value d2_0) 9.358625503483793)
		(= (dummy_2_value d2_1) 3.496302960421602)
		(= (dummy_2_value d2_2) 3.6874990841140196)
		(= (dummy_2_value d2_3) 8.307105787282051)
		(= (dummy_2_value d2_4) 3.1723349913258763)

        (= (dummy_3_value d3_0) 67.0805657177421)
		(= (dummy_3_value d3_1) 57.26857278591152)
		(= (dummy_3_value d3_2) 89.74491997913032)

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

