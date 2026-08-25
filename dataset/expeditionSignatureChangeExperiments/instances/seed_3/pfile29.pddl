;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.073346381521235)

        (= (sled_supplies s0) 1.0034425891885395)

        (= (factor_value f0) 0.8145519830018257)
		(= (factor_value f1) 0.6723695707211058)
		(= (factor_value f2) 0.546857938381734)

        (= (dummy_1_value d1_0) 0.8411993177063481)
		(= (dummy_1_value d1_1) 0.9846336807660179)
		(= (dummy_1_value d1_2) 0.7961288601816944)
		(= (dummy_1_value d1_3) 0.5018281269996907)

        (= (dummy_2_value d2_0) 1.2727153236232134)
		(= (dummy_2_value d2_1) 1.8148099047815243)

        (= (dummy_3_value d3_0) 17.863060852887312)
		(= (dummy_3_value d3_1) 4.623993506302881)
		(= (dummy_3_value d3_2) 6.340420646379865)
		(= (dummy_3_value d3_3) 65.77686252790001)
		(= (dummy_3_value d3_4) 90.12978394920476)

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

