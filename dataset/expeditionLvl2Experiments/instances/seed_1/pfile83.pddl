;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_83)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.661592203181467)

        (= (sled_supplies s0) 6.3564011128169815)

        (= (factor_value f0) 0.7943307510507602)
		(= (factor_value f1) 0.5257912980047008)
		(= (factor_value f2) 0.8629498383712249)
		(= (factor_value f3) 0.9108042059574473)
		(= (factor_value f4) 0.7188880787696471)

        (= (dummy_1_value d1_0) 0.8438429930987912)
		(= (dummy_1_value d1_1) 0.8311552760997893)
		(= (dummy_1_value d1_2) 0.6517992759172735)
		(= (dummy_1_value d1_3) 0.5441225597331738)

        (= (dummy_2_value d2_0) 7.821979216076058)
		(= (dummy_2_value d2_1) 4.2136904877207115)
		(= (dummy_2_value d2_2) 2.4523868874601806)
		(= (dummy_2_value d2_3) 4.979860189363412)

        (= (dummy_3_value d3_0) 83.46116819576625)

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

