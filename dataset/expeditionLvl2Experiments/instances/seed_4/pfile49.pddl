;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.712021667734948)

        (= (sled_supplies s0) 6.829820851706865)

        (= (factor_value f0) 0.5351960749952298)
		(= (factor_value f1) 0.8432699945497564)
		(= (factor_value f2) 0.7994567291782568)
		(= (factor_value f3) 0.8647332894039439)

        (= (dummy_1_value d1_0) 0.7618454869773519)
		(= (dummy_1_value d1_1) 0.5957076374282613)
		(= (dummy_1_value d1_2) 0.9983562181356336)
		(= (dummy_1_value d1_3) 0.8535197738269499)
		(= (dummy_1_value d1_4) 0.7665282484447475)

        (= (dummy_2_value d2_0) 8.125040236679677)
		(= (dummy_2_value d2_1) 3.350358708125202)

        (= (dummy_3_value d3_0) 47.37917151228042)
		(= (dummy_3_value d3_1) 52.86696199420692)
		(= (dummy_3_value d3_2) 7.087049166041187)

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

