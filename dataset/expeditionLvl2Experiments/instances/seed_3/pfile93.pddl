;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_93)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.031232818962504)

        (= (sled_supplies s0) 2.1999460626486824)

        (= (factor_value f0) 0.5476796182549326)
		(= (factor_value f1) 0.5368650699646049)
		(= (factor_value f2) 0.5580522688002945)
		(= (factor_value f3) 0.929375957766948)
		(= (factor_value f4) 0.6235368352051158)

        (= (dummy_1_value d1_0) 0.6615090195571031)
		(= (dummy_1_value d1_1) 0.723094827642002)

        (= (dummy_2_value d2_0) 5.9663741917778745)
		(= (dummy_2_value d2_1) 4.718697607805146)
		(= (dummy_2_value d2_2) 9.524076749954023)
		(= (dummy_2_value d2_3) 4.065604515394378)

        (= (dummy_3_value d3_0) 48.118072679440935)
		(= (dummy_3_value d3_1) 86.35219242850145)

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

