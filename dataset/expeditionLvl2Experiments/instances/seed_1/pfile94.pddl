;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_94)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.439147628417404)

        (= (sled_supplies s0) 5.519414396983417)

        (= (factor_value f0) 0.847601859910851)

        (= (dummy_1_value d1_0) 0.8303148685930585)

        (= (dummy_2_value d2_0) 9.151900423560809)
		(= (dummy_2_value d2_1) 8.010615118418013)
		(= (dummy_2_value d2_2) 6.264699047262799)
		(= (dummy_2_value d2_3) 1.4257113304498685)

        (= (dummy_3_value d3_0) 45.99281566436129)
		(= (dummy_3_value d3_1) 69.18512497125117)
		(= (dummy_3_value d3_2) 52.79295416952461)

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

