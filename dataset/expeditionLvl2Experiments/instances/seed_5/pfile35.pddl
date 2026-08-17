;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.612985966844021)

        (= (sled_supplies s0) 2.2528945316368882)

        (= (factor_value f0) 0.7717330957427572)
		(= (factor_value f1) 0.6875909641594427)
		(= (factor_value f2) 0.5587743557257822)

        (= (dummy_1_value d1_0) 0.7985427862483943)
		(= (dummy_1_value d1_1) 0.6872055982528058)
		(= (dummy_1_value d1_2) 0.841861877602651)

        (= (dummy_2_value d2_0) 5.459591742080434)
		(= (dummy_2_value d2_1) 9.664280392850884)

        (= (dummy_3_value d3_0) 94.55786544457213)
		(= (dummy_3_value d3_1) 8.147264149621225)
		(= (dummy_3_value d3_2) 76.21948393302964)
		(= (dummy_3_value d3_3) 72.40406155975687)

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

