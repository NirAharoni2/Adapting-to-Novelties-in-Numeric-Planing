;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.483104574351053)

        (= (sled_supplies s0) 5.184645278478582)

        (= (factor_value f0) 0.6317453736393583)
		(= (factor_value f1) 0.6232798198192678)
		(= (factor_value f2) 0.9510341873453416)
		(= (factor_value f3) 0.5591186135364498)

        (= (dummy_1_value d1_0) 0.8726727258829596)
		(= (dummy_1_value d1_1) 0.7567067987139766)

        (= (dummy_2_value d2_0) 9.6122667007789)
		(= (dummy_2_value d2_1) 1.1739913218700213)

        (= (dummy_3_value d3_0) 87.85891788740119)
		(= (dummy_3_value d3_1) 41.891323994432796)
		(= (dummy_3_value d3_2) 84.96338179038236)
		(= (dummy_3_value d3_3) 95.46837552991154)
		(= (dummy_3_value d3_4) 82.95588832123752)

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

