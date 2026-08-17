;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.8577060457506915)

        (= (sled_supplies s0) 1.9418567079942834)

        (= (factor_value f0) 0.7114945033020034)
		(= (factor_value f1) 0.6347075841383043)

        (= (dummy_1_value d1_0) 0.6096827363715077)
		(= (dummy_1_value d1_1) 0.8753367946761219)
		(= (dummy_1_value d1_2) 0.976228289423176)
		(= (dummy_1_value d1_3) 0.9106301978031692)

        (= (dummy_2_value d2_0) 6.593867656005108)
		(= (dummy_2_value d2_1) 1.2511521565820096)
		(= (dummy_2_value d2_2) 3.7202254338666347)
		(= (dummy_2_value d2_3) 8.559958459563537)
		(= (dummy_2_value d2_4) 9.754451000617776)

        (= (dummy_3_value d3_0) 55.23726299591476)
		(= (dummy_3_value d3_1) 57.32302722265644)
		(= (dummy_3_value d3_2) 68.95117974121712)

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

