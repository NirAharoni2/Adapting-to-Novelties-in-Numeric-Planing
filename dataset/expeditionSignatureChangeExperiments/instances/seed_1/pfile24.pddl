;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.991486829072983)

        (= (sled_supplies s0) 2.9531811335160514)

        (= (factor_value f0) 0.705569967157923)
		(= (factor_value f1) 0.8425162156829489)

        (= (dummy_1_value d1_0) 0.6518344214263184)

        (= (dummy_2_value d2_0) 5.15863685680015)
		(= (dummy_2_value d2_1) 3.334157693094668)
		(= (dummy_2_value d2_2) 2.5265971958929567)
		(= (dummy_2_value d2_3) 5.592938076022957)
		(= (dummy_2_value d2_4) 3.437384252194526)

        (= (dummy_3_value d3_0) 10.76437902249409)

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

