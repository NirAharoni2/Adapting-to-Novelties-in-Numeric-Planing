;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.990752682983672)

        (= (sled_supplies s0) 2.014299541827538)

        (= (factor_value f0) 0.9294416195393176)
		(= (factor_value f1) 0.5507021032246082)
		(= (factor_value f2) 0.9715895723301314)
		(= (factor_value f3) 0.6275176409101946)

        (= (dummy_1_value d1_0) 0.5545256192432146)
		(= (dummy_1_value d1_1) 0.699563977207067)

        (= (dummy_2_value d2_0) 8.429143022486915)
		(= (dummy_2_value d2_1) 7.125829283437078)
		(= (dummy_2_value d2_2) 1.9795885739941073)
		(= (dummy_2_value d2_3) 5.37025214621882)
		(= (dummy_2_value d2_4) 7.0165789041318165)

        (= (dummy_3_value d3_0) 70.24836360110946)

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

