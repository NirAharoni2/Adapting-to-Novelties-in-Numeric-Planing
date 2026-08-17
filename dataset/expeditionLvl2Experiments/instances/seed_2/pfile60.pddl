;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_60)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.009056415527196)

        (= (sled_supplies s0) 6.632892035528344)

        (= (factor_value f0) 0.8718809747199427)
		(= (factor_value f1) 0.5864639845643083)
		(= (factor_value f2) 0.9552312004368837)
		(= (factor_value f3) 0.9594704776999036)

        (= (dummy_1_value d1_0) 0.91414473662722)

        (= (dummy_2_value d2_0) 1.726807825880544)
		(= (dummy_2_value d2_1) 7.42597991609471)
		(= (dummy_2_value d2_2) 5.67482704867277)
		(= (dummy_2_value d2_3) 5.833877147613939)

        (= (dummy_3_value d3_0) 27.514847682611755)
		(= (dummy_3_value d3_1) 77.52550283171854)
		(= (dummy_3_value d3_2) 80.8632100152057)
		(= (dummy_3_value d3_3) 77.19678556198903)
		(= (dummy_3_value d3_4) 30.89434319367758)

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

