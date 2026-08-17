;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.658317438716761)

        (= (sled_supplies s0) 7.11704778052013)

        (= (factor_value f0) 0.7621097248239552)
		(= (factor_value f1) 0.6639227856381259)
		(= (factor_value f2) 0.8445941269933285)

        (= (dummy_1_value d1_0) 0.8945385806114139)
		(= (dummy_1_value d1_1) 0.5071043601606382)
		(= (dummy_1_value d1_2) 0.7884612772410369)
		(= (dummy_1_value d1_3) 0.8259813413069057)

        (= (dummy_2_value d2_0) 5.851235457638742)
		(= (dummy_2_value d2_1) 5.344723820265798)
		(= (dummy_2_value d2_2) 5.191269282504)

        (= (dummy_3_value d3_0) 37.94502601976749)
		(= (dummy_3_value d3_1) 23.509590700180514)
		(= (dummy_3_value d3_2) 1.2051643981109397)
		(= (dummy_3_value d3_3) 97.15643843136795)

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

