;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.646633529994727)

        (= (sled_supplies s0) 2.789775712075611)

        (= (factor_value f0) 0.5708905913177607)
		(= (factor_value f1) 0.6608396814809769)

        (= (dummy_1_value d1_0) 0.7688470745406394)
		(= (dummy_1_value d1_1) 0.8078725976677898)
		(= (dummy_1_value d1_2) 0.8231816265557409)

        (= (dummy_2_value d2_0) 9.483827500479103)

        (= (dummy_3_value d3_0) 11.106411960029348)

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

