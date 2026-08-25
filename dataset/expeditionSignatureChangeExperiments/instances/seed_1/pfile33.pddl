;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.715892887004909)

        (= (sled_supplies s0) 3.743682643343276)

        (= (factor_value f0) 0.5999870984641904)

        (= (dummy_1_value d1_0) 0.6946192663948151)
		(= (dummy_1_value d1_1) 0.6621101912013445)

        (= (dummy_2_value d2_0) 4.685526133391361)
		(= (dummy_2_value d2_1) 2.1373007832031767)
		(= (dummy_2_value d2_2) 1.5837658300412563)
		(= (dummy_2_value d2_3) 3.7044652352820187)

        (= (dummy_3_value d3_0) 80.09746094391187)
		(= (dummy_3_value d3_1) 53.83449646123771)
		(= (dummy_3_value d3_2) 42.341234643263945)
		(= (dummy_3_value d3_3) 32.56113115630296)
		(= (dummy_3_value d3_4) 27.994269834485497)

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

