;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_80)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.9698114434143505)

        (= (sled_supplies s0) 5.278114304131712)

        (= (factor_value f0) 0.7745731444565245)
		(= (factor_value f1) 0.9939564195938422)
		(= (factor_value f2) 0.6200200537548455)
		(= (factor_value f3) 0.8439577780207876)
		(= (factor_value f4) 0.7189186999555292)

        (= (dummy_1_value d1_0) 0.7668668497627111)
		(= (dummy_1_value d1_1) 0.7023261722294074)
		(= (dummy_1_value d1_2) 0.8509648758470232)
		(= (dummy_1_value d1_3) 0.760258462052708)
		(= (dummy_1_value d1_4) 0.5162088468021835)

        (= (dummy_2_value d2_0) 8.37874758354318)
		(= (dummy_2_value d2_1) 3.1487039009542515)

        (= (dummy_3_value d3_0) 35.73356150893675)
		(= (dummy_3_value d3_1) 48.456372017854726)
		(= (dummy_3_value d3_2) 59.80921787688976)

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

