;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_75)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.357514274897989)

        (= (sled_supplies s0) 2.3164762408760864)

        (= (factor_value f0) 0.9658673601019945)
		(= (factor_value f1) 0.9160067246489303)
		(= (factor_value f2) 0.7446730691096213)

        (= (dummy_1_value d1_0) 0.6718525361673122)
		(= (dummy_1_value d1_1) 0.5893103875403348)
		(= (dummy_1_value d1_2) 0.8245653663346106)

        (= (dummy_2_value d2_0) 3.157453936714068)
		(= (dummy_2_value d2_1) 7.956249655617851)
		(= (dummy_2_value d2_2) 4.929331525930721)
		(= (dummy_2_value d2_3) 3.4922696261884267)

        (= (dummy_3_value d3_0) 31.077336766987845)
		(= (dummy_3_value d3_1) 97.18495272209134)
		(= (dummy_3_value d3_2) 34.16877055704859)
		(= (dummy_3_value d3_3) 83.32757813247973)
		(= (dummy_3_value d3_4) 41.51641994847247)

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

