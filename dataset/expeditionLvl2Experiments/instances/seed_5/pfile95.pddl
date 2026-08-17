;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.687800481652065)

        (= (sled_supplies s0) 4.539752482635294)

        (= (factor_value f0) 0.8192880617505429)
		(= (factor_value f1) 0.8581788176263311)

        (= (dummy_1_value d1_0) 0.990411557913341)
		(= (dummy_1_value d1_1) 0.7069287447533037)

        (= (dummy_2_value d2_0) 5.742561819757388)
		(= (dummy_2_value d2_1) 8.79731089833087)

        (= (dummy_3_value d3_0) 18.220327847809596)
		(= (dummy_3_value d3_1) 79.0273080896841)

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

