;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.979926956751719)

        (= (sled_supplies s0) 4.976236312676169)

        (= (factor_value f0) 0.5925206951110138)
		(= (factor_value f1) 0.7672501288824172)
		(= (factor_value f2) 0.5105986745169576)
		(= (factor_value f3) 0.5588887974289687)

        (= (dummy_1_value d1_0) 0.6484362327509117)
		(= (dummy_1_value d1_1) 0.8449959111634167)
		(= (dummy_1_value d1_2) 0.6608080489130079)

        (= (dummy_2_value d2_0) 5.869489144354902)
		(= (dummy_2_value d2_1) 9.470523762495798)
		(= (dummy_2_value d2_2) 9.555985530883786)
		(= (dummy_2_value d2_3) 8.203349027580437)
		(= (dummy_2_value d2_4) 8.219499659057163)

        (= (dummy_3_value d3_0) 17.2097653286098)

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

