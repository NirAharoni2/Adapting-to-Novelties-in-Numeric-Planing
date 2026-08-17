;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.242497355234857)

        (= (sled_supplies s0) 7.426132119521199)

        (= (factor_value f0) 0.5106475511597608)
		(= (factor_value f1) 0.7811650017583032)
		(= (factor_value f2) 0.9783843397454092)

        (= (dummy_1_value d1_0) 0.9340753500043162)
		(= (dummy_1_value d1_1) 0.5392049217713129)

        (= (dummy_2_value d2_0) 9.743623815233104)

        (= (dummy_3_value d3_0) 20.189949471175257)

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

