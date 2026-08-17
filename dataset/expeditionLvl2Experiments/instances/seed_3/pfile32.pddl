;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.910579507132562)

        (= (sled_supplies s0) 5.0042646453595)

        (= (factor_value f0) 0.9677245640924452)

        (= (dummy_1_value d1_0) 0.5715461171625453)
		(= (dummy_1_value d1_1) 0.9926588759260538)
		(= (dummy_1_value d1_2) 0.5560544514280731)
		(= (dummy_1_value d1_3) 0.6437510362537531)

        (= (dummy_2_value d2_0) 2.8788422344679723)

        (= (dummy_3_value d3_0) 85.22459406914258)
		(= (dummy_3_value d3_1) 52.04109246687988)

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

