;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_91)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.644983783955544)

        (= (sled_supplies s0) 6.388032262799398)

        (= (factor_value f0) 0.6942967124750316)
		(= (factor_value f1) 0.9018641053707898)

        (= (dummy_1_value d1_0) 0.9307649132963433)
		(= (dummy_1_value d1_1) 0.7151908009653858)
		(= (dummy_1_value d1_2) 0.5072162045313375)
		(= (dummy_1_value d1_3) 0.8774459250448678)
		(= (dummy_1_value d1_4) 0.6884000039122465)

        (= (dummy_2_value d2_0) 8.8166865237036)
		(= (dummy_2_value d2_1) 5.051572814170362)

        (= (dummy_3_value d3_0) 25.19007565523124)

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

