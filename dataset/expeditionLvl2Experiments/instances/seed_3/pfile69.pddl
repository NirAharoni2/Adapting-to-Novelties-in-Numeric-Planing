;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_69)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.593483173048556)

        (= (sled_supplies s0) 3.297783899943202)

        (= (factor_value f0) 0.6993142355809556)
		(= (factor_value f1) 0.6725243843903985)

        (= (dummy_1_value d1_0) 0.8271853244998827)
		(= (dummy_1_value d1_1) 0.7966960900944333)
		(= (dummy_1_value d1_2) 0.6254879003288956)

        (= (dummy_2_value d2_0) 2.117620009713079)
		(= (dummy_2_value d2_1) 6.179255024343433)
		(= (dummy_2_value d2_2) 1.222051848166379)

        (= (dummy_3_value d3_0) 87.27445154409799)

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

