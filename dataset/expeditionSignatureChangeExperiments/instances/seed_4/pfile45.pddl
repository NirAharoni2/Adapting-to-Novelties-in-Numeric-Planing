;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.343932565857905)

        (= (sled_supplies s0) 0.16974633674699813)

        (= (factor_value f0) 0.8349689672083265)
		(= (factor_value f1) 0.6506321854429928)
		(= (factor_value f2) 0.6359935862341473)

        (= (dummy_1_value d1_0) 0.7180830285215141)
		(= (dummy_1_value d1_1) 0.8478273065637005)

        (= (dummy_2_value d2_0) 1.3274629013912003)
		(= (dummy_2_value d2_1) 7.056484990957076)

        (= (dummy_3_value d3_0) 6.444310881696199)
		(= (dummy_3_value d3_1) 89.0983949499942)
		(= (dummy_3_value d3_2) 19.926219961565543)
		(= (dummy_3_value d3_3) 82.61026036651258)

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

