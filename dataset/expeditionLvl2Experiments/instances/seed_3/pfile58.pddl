;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_58)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.181337670807504)

        (= (sled_supplies s0) 6.859898816046287)

        (= (factor_value f0) 0.6361563115777146)
		(= (factor_value f1) 0.9505000352415325)
		(= (factor_value f2) 0.5769099557645289)
		(= (factor_value f3) 0.5157373255862214)
		(= (factor_value f4) 0.7156964974122875)

        (= (dummy_1_value d1_0) 0.5007370420223072)
		(= (dummy_1_value d1_1) 0.8954520328273851)
		(= (dummy_1_value d1_2) 0.5655601080689647)
		(= (dummy_1_value d1_3) 0.8644389992696524)
		(= (dummy_1_value d1_4) 0.6037198522978648)

        (= (dummy_2_value d2_0) 7.28431491960836)
		(= (dummy_2_value d2_1) 6.798195491377744)
		(= (dummy_2_value d2_2) 3.313384088811408)
		(= (dummy_2_value d2_3) 6.654151424838578)
		(= (dummy_2_value d2_4) 6.073040997319233)

        (= (dummy_3_value d3_0) 96.58063975859868)
		(= (dummy_3_value d3_1) 36.44983676869194)
		(= (dummy_3_value d3_2) 12.680397366635484)
		(= (dummy_3_value d3_3) 22.52745708128139)

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

