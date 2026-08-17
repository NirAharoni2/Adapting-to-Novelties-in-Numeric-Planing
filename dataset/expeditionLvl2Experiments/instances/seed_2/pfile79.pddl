;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_79)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.416139574217434)

        (= (sled_supplies s0) 1.3735416562874985)

        (= (factor_value f0) 0.5243740283676046)
		(= (factor_value f1) 0.5371453888754217)
		(= (factor_value f2) 0.7725392610516875)
		(= (factor_value f3) 0.7306401773247462)
		(= (factor_value f4) 0.65672565019598)

        (= (dummy_1_value d1_0) 0.5646575867000467)
		(= (dummy_1_value d1_1) 0.5021197126201641)
		(= (dummy_1_value d1_2) 0.701997296560317)
		(= (dummy_1_value d1_3) 0.8008533647232978)
		(= (dummy_1_value d1_4) 0.59321032006465)

        (= (dummy_2_value d2_0) 6.0486788652278545)
		(= (dummy_2_value d2_1) 7.953713582977457)

        (= (dummy_3_value d3_0) 11.174383573959354)
		(= (dummy_3_value d3_1) 19.55101781852383)

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

