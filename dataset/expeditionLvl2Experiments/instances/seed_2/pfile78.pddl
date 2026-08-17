;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_78)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.786984474861978)

        (= (sled_supplies s0) 6.227567243491196)

        (= (factor_value f0) 0.8941390838387295)
		(= (factor_value f1) 0.831520219046827)
		(= (factor_value f2) 0.9887065412448819)
		(= (factor_value f3) 0.8699675140955401)

        (= (dummy_1_value d1_0) 0.6967738580793117)

        (= (dummy_2_value d2_0) 8.515035794053777)

        (= (dummy_3_value d3_0) 61.62098933579314)
		(= (dummy_3_value d3_1) 60.14703415961441)
		(= (dummy_3_value d3_2) 59.76637442071679)
		(= (dummy_3_value d3_3) 75.51000200735895)

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

