;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.499273213216888)

        (= (sled_supplies s0) 2.8217925794043786)

        (= (factor_value f0) 0.6354215829945344)
		(= (factor_value f1) 0.5267364154478169)

        (= (dummy_1_value d1_0) 0.5682619029362157)
		(= (dummy_1_value d1_1) 0.7393494974997334)
		(= (dummy_1_value d1_2) 0.6356340320676427)
		(= (dummy_1_value d1_3) 0.8477230137918196)
		(= (dummy_1_value d1_4) 0.7573605938036343)

        (= (dummy_2_value d2_0) 8.877234637705712)
		(= (dummy_2_value d2_1) 9.505390157029403)
		(= (dummy_2_value d2_2) 5.034088528703771)
		(= (dummy_2_value d2_3) 8.282402380894077)
		(= (dummy_2_value d2_4) 1.623054177879997)

        (= (dummy_3_value d3_0) 50.30256818116816)
		(= (dummy_3_value d3_1) 99.56777463928579)
		(= (dummy_3_value d3_2) 16.006674519019295)
		(= (dummy_3_value d3_3) 59.42176231641487)
		(= (dummy_3_value d3_4) 68.46669911709273)

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

