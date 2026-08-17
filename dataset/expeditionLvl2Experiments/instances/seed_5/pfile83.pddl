;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_83)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.985529754484293)

        (= (sled_supplies s0) 0.7974068159826774)

        (= (factor_value f0) 0.9521363777328598)
		(= (factor_value f1) 0.5333986146358601)
		(= (factor_value f2) 0.6406422858268109)
		(= (factor_value f3) 0.8128057711402867)
		(= (factor_value f4) 0.7972495024947085)

        (= (dummy_1_value d1_0) 0.6171208499515564)
		(= (dummy_1_value d1_1) 0.5257526278014691)
		(= (dummy_1_value d1_2) 0.5547153284091715)

        (= (dummy_2_value d2_0) 5.030166617304072)

        (= (dummy_3_value d3_0) 8.714771027443476)
		(= (dummy_3_value d3_1) 90.96364502719247)
		(= (dummy_3_value d3_2) 44.58600831738315)
		(= (dummy_3_value d3_3) 8.483925745330524)
		(= (dummy_3_value d3_4) 75.04453722549057)

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

