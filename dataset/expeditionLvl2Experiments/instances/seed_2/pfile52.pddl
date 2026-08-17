;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.717261677564228)

        (= (sled_supplies s0) 7.811672360392416)

        (= (factor_value f0) 0.6100387383188975)

        (= (dummy_1_value d1_0) 0.8934791816505858)
		(= (dummy_1_value d1_1) 0.5212882438152897)
		(= (dummy_1_value d1_2) 0.7809953877006719)

        (= (dummy_2_value d2_0) 9.07919223996716)
		(= (dummy_2_value d2_1) 5.917688793539489)
		(= (dummy_2_value d2_2) 3.7230540446633915)
		(= (dummy_2_value d2_3) 9.975155043997328)

        (= (dummy_3_value d3_0) 72.96124485473018)
		(= (dummy_3_value d3_1) 79.35942312280955)

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

