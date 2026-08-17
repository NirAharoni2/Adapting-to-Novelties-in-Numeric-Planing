;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.066473310254155)

        (= (sled_supplies s0) 4.696505275494592)

        (= (factor_value f0) 0.5226811171213042)
		(= (factor_value f1) 0.7429105104621249)
		(= (factor_value f2) 0.530212733510786)
		(= (factor_value f3) 0.9081506353101182)

        (= (dummy_1_value d1_0) 0.7300387489329536)
		(= (dummy_1_value d1_1) 0.7605680177565165)
		(= (dummy_1_value d1_2) 0.8773263056897347)
		(= (dummy_1_value d1_3) 0.9301039904877895)
		(= (dummy_1_value d1_4) 0.9887305334309032)

        (= (dummy_2_value d2_0) 5.637190861477316)
		(= (dummy_2_value d2_1) 4.339492415381118)
		(= (dummy_2_value d2_2) 6.689354051181063)

        (= (dummy_3_value d3_0) 30.08074516886464)
		(= (dummy_3_value d3_1) 8.299555157833067)
		(= (dummy_3_value d3_2) 14.817141370618351)
		(= (dummy_3_value d3_3) 83.3862962436645)
		(= (dummy_3_value d3_4) 11.05510454927694)

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

