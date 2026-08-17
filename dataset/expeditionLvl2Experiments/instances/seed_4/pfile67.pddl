;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_67)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.285159226546188)

        (= (sled_supplies s0) 2.1626527151464408)

        (= (factor_value f0) 0.5186665195484201)
		(= (factor_value f1) 0.5887188306362382)
		(= (factor_value f2) 0.8001111050826496)
		(= (factor_value f3) 0.5639118424917093)
		(= (factor_value f4) 0.5816707923238964)

        (= (dummy_1_value d1_0) 0.6665583613522165)

        (= (dummy_2_value d2_0) 3.539196041260388)

        (= (dummy_3_value d3_0) 6.258209349800076)
		(= (dummy_3_value d3_1) 89.23999338684807)

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

