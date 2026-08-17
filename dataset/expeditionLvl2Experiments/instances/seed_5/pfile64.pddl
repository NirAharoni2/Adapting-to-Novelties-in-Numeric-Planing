;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_64)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.784712597713542)

        (= (sled_supplies s0) 0.8112549859333787)

        (= (factor_value f0) 0.5165324817350265)
		(= (factor_value f1) 0.7377053146289947)
		(= (factor_value f2) 0.6024441944271506)

        (= (dummy_1_value d1_0) 0.9606154494890007)
		(= (dummy_1_value d1_1) 0.9962705336103053)
		(= (dummy_1_value d1_2) 0.6650540411027077)
		(= (dummy_1_value d1_3) 0.6572197087892435)
		(= (dummy_1_value d1_4) 0.6840654814841172)

        (= (dummy_2_value d2_0) 1.1521863288600467)
		(= (dummy_2_value d2_1) 7.288208708898111)
		(= (dummy_2_value d2_2) 7.8310337716828124)

        (= (dummy_3_value d3_0) 11.757224682307477)
		(= (dummy_3_value d3_1) 69.6605442603477)

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

