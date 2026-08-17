;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_88)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.456659792924391)

        (= (sled_supplies s0) 5.100014899891177)

        (= (factor_value f0) 0.9679920545439559)

        (= (dummy_1_value d1_0) 0.7316197812129666)
		(= (dummy_1_value d1_1) 0.6050110095587014)

        (= (dummy_2_value d2_0) 9.876937983452676)
		(= (dummy_2_value d2_1) 9.804952974635832)
		(= (dummy_2_value d2_2) 2.590970441271739)
		(= (dummy_2_value d2_3) 2.772018291966051)

        (= (dummy_3_value d3_0) 73.24621005761483)
		(= (dummy_3_value d3_1) 39.30001360104365)
		(= (dummy_3_value d3_2) 47.92545781701838)

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

