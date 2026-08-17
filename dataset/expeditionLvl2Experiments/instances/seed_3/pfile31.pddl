;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.615557705511923)

        (= (sled_supplies s0) 0.47669597820833753)

        (= (factor_value f0) 0.855348630814496)
		(= (factor_value f1) 0.5114768215373018)

        (= (dummy_1_value d1_0) 0.7334640066772555)
		(= (dummy_1_value d1_1) 0.8792257222975015)
		(= (dummy_1_value d1_2) 0.8386654878430112)
		(= (dummy_1_value d1_3) 0.5485437114539945)
		(= (dummy_1_value d1_4) 0.6185854695762869)

        (= (dummy_2_value d2_0) 8.592894563169013)
		(= (dummy_2_value d2_1) 6.7814184539614715)
		(= (dummy_2_value d2_2) 8.906804066224112)
		(= (dummy_2_value d2_3) 8.850322138023449)
		(= (dummy_2_value d2_4) 5.049139001950886)

        (= (dummy_3_value d3_0) 89.7925384045249)
		(= (dummy_3_value d3_1) 73.55292056510235)
		(= (dummy_3_value d3_2) 34.03744783772012)
		(= (dummy_3_value d3_3) 37.639213928319414)

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

