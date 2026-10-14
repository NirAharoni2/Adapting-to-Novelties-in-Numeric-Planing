;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 95.8465105083368)

        (= (sled_supplies s0) 4.637404732050086)

        (= (factor_value f0) 0.8363676242547793)
		(= (factor_value f1) 9.713773946261416)
		(= (factor_value f2) 9.621560792742848)
		(= (factor_value f3) 6.716683638047053)

        (= (dummy_1_value d1_0) 0.5222719847962252)
		(= (dummy_1_value d1_1) 0.9494848609698779)
		(= (dummy_1_value d1_2) 0.5638163937882343)
		(= (dummy_1_value d1_3) 0.9842674816751538)
		(= (dummy_1_value d1_4) 0.8335949586939548)

        (= (dummy_2_value d2_0) 1.5443480076694425)
		(= (dummy_2_value d2_1) 2.505390526284833)

        (= (dummy_3_value d3_0) 63.88378921145983)
		(= (dummy_3_value d3_1) 57.351387647883165)
		(= (dummy_3_value d3_2) 74.90296114212934)

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

