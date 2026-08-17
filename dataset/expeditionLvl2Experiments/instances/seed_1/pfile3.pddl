;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.350322424574237)

        (= (sled_supplies s0) 4.350003750417265)

        (= (factor_value f0) 0.9412395004159289)
		(= (factor_value f1) 0.9230987092141564)
		(= (factor_value f2) 0.7526419102898002)
		(= (factor_value f3) 0.7945011289912758)
		(= (factor_value f4) 0.5172629150756708)

        (= (dummy_1_value d1_0) 0.6213699867715339)
		(= (dummy_1_value d1_1) 0.8987021237771514)
		(= (dummy_1_value d1_2) 0.7071569996503871)
		(= (dummy_1_value d1_3) 0.5865037007895255)

        (= (dummy_2_value d2_0) 5.939188852493377)
		(= (dummy_2_value d2_1) 7.3273668585906835)
		(= (dummy_2_value d2_2) 7.070372474520945)
		(= (dummy_2_value d2_3) 4.372327184514763)
		(= (dummy_2_value d2_4) 4.950654670401068)

        (= (dummy_3_value d3_0) 51.3342223367482)
		(= (dummy_3_value d3_1) 78.06581888501444)

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

