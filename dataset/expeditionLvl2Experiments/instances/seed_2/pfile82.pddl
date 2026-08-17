;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_82)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.90605567858519)

        (= (sled_supplies s0) 7.078211298237331)

        (= (factor_value f0) 0.8987362315544393)

        (= (dummy_1_value d1_0) 0.5461449446802937)
		(= (dummy_1_value d1_1) 0.8073673886151957)

        (= (dummy_2_value d2_0) 8.404559854932279)
		(= (dummy_2_value d2_1) 2.3375045513095856)
		(= (dummy_2_value d2_2) 8.142809777887287)
		(= (dummy_2_value d2_3) 3.1954912771251873)
		(= (dummy_2_value d2_4) 8.949159986570052)

        (= (dummy_3_value d3_0) 82.42441901890501)
		(= (dummy_3_value d3_1) 59.58290894221299)

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

