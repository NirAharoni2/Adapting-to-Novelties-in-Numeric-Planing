;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.103761821942829)

        (= (sled_supplies s0) 4.301989027404258)

        (= (factor_value f0) 0.7710369647391639)
		(= (factor_value f1) 0.6798571421076772)
		(= (factor_value f2) 0.9263469773843986)

        (= (dummy_1_value d1_0) 0.6425934323274094)
		(= (dummy_1_value d1_1) 0.7315790145601695)

        (= (dummy_2_value d2_0) 8.981301465881566)
		(= (dummy_2_value d2_1) 8.264242153449867)
		(= (dummy_2_value d2_2) 3.676587624308463)
		(= (dummy_2_value d2_3) 3.1834293110010896)

        (= (dummy_3_value d3_0) 80.86034687189175)
		(= (dummy_3_value d3_1) 1.9957494543077043)
		(= (dummy_3_value d3_2) 14.016481461213836)

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

