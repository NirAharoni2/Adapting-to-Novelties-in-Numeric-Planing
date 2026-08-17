;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_63)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.773960609441577)

        (= (sled_supplies s0) 0.4455438914429682)

        (= (factor_value f0) 0.8376678481206128)
		(= (factor_value f1) 0.7036510142563892)
		(= (factor_value f2) 0.9287539554008213)
		(= (factor_value f3) 0.648310739923646)
		(= (factor_value f4) 0.6615169388415457)

        (= (dummy_1_value d1_0) 0.7449085439210694)
		(= (dummy_1_value d1_1) 0.8834219302235506)
		(= (dummy_1_value d1_2) 0.9731741452414919)
		(= (dummy_1_value d1_3) 0.5665401060023909)
		(= (dummy_1_value d1_4) 0.591837108945872)

        (= (dummy_2_value d2_0) 1.8633115779273521)
		(= (dummy_2_value d2_1) 3.0133669631578877)

        (= (dummy_3_value d3_0) 75.5191638483801)
		(= (dummy_3_value d3_1) 26.344010029825803)
		(= (dummy_3_value d3_2) 83.26300274005911)
		(= (dummy_3_value d3_3) 75.57265540100958)

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

