;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.511192792167416)

        (= (sled_supplies s0) 2.806789323891895)

        (= (factor_value f0) 0.9910383187692671)
		(= (factor_value f1) 0.8852615699154003)
		(= (factor_value f2) 0.7698087242248894)
		(= (factor_value f3) 0.9301448894602748)
		(= (factor_value f4) 0.6160880640315073)

        (= (dummy_1_value d1_0) 0.7568858315938185)
		(= (dummy_1_value d1_1) 0.9762336941341347)
		(= (dummy_1_value d1_2) 0.7888974039006016)
		(= (dummy_1_value d1_3) 0.7295658659553341)
		(= (dummy_1_value d1_4) 0.6346397387207106)

        (= (dummy_2_value d2_0) 5.93196678519624)
		(= (dummy_2_value d2_1) 9.614046533142043)
		(= (dummy_2_value d2_2) 1.0513821650535364)
		(= (dummy_2_value d2_3) 8.052897093538508)
		(= (dummy_2_value d2_4) 8.384373207329338)

        (= (dummy_3_value d3_0) 88.73177850177481)
		(= (dummy_3_value d3_1) 74.30983777148644)
		(= (dummy_3_value d3_2) 81.10485018637547)
		(= (dummy_3_value d3_3) 52.349150068777206)

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

