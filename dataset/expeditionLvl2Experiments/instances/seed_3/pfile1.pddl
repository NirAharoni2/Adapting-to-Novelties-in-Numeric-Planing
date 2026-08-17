;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.502881216432217)

        (= (sled_supplies s0) 6.302776484741166)

        (= (factor_value f0) 0.5327644296199066)
		(= (factor_value f1) 0.5065839957774371)

        (= (dummy_1_value d1_0) 0.9187345410482299)
		(= (dummy_1_value d1_1) 0.6296770071640039)
		(= (dummy_1_value d1_2) 0.6171654805233482)
		(= (dummy_1_value d1_3) 0.9978224177552314)
		(= (dummy_1_value d1_4) 0.735131753761224)

        (= (dummy_2_value d2_0) 8.5281530614695)
		(= (dummy_2_value d2_1) 5.287178878294014)
		(= (dummy_2_value d2_2) 6.751613264897458)
		(= (dummy_2_value d2_3) 2.3555478162117156)
		(= (dummy_2_value d2_4) 6.713745924566696)

        (= (dummy_3_value d3_0) 86.93648540718638)
		(= (dummy_3_value d3_1) 52.794939827946834)

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

