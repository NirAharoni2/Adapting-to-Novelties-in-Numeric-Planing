;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_96)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.300581291819089)

        (= (sled_supplies s0) 0.8962002859808033)

        (= (factor_value f0) 0.6235198104667035)
		(= (factor_value f1) 0.9757642201981632)

        (= (dummy_1_value d1_0) 0.511116914353873)
		(= (dummy_1_value d1_1) 0.7527860481644862)
		(= (dummy_1_value d1_2) 0.7633507612391529)

        (= (dummy_2_value d2_0) 5.579822486173901)
		(= (dummy_2_value d2_1) 9.362883749435026)

        (= (dummy_3_value d3_0) 59.879781082567874)
		(= (dummy_3_value d3_1) 12.513124831343614)

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

