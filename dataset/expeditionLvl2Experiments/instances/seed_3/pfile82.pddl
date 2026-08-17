;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_82)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.094422436954924)

        (= (sled_supplies s0) 7.180683821971965)

        (= (factor_value f0) 0.5807492869953571)
		(= (factor_value f1) 0.92894018660075)

        (= (dummy_1_value d1_0) 0.8820271744705621)
		(= (dummy_1_value d1_1) 0.8800012971470583)
		(= (dummy_1_value d1_2) 0.5416325486967568)

        (= (dummy_2_value d2_0) 8.374950969178599)
		(= (dummy_2_value d2_1) 1.1083135671434028)

        (= (dummy_3_value d3_0) 56.94876327779499)
		(= (dummy_3_value d3_1) 49.29290157736563)
		(= (dummy_3_value d3_2) 6.864752145821387)
		(= (dummy_3_value d3_3) 42.75171551743812)

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

