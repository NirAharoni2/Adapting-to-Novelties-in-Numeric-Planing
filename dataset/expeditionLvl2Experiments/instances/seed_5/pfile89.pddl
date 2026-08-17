;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_89)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.695189992871503)

        (= (sled_supplies s0) 6.49704755801396)

        (= (factor_value f0) 0.7684187073496276)
		(= (factor_value f1) 0.8452868026349214)
		(= (factor_value f2) 0.631364386457127)
		(= (factor_value f3) 0.6005483059661736)
		(= (factor_value f4) 0.8252508857694282)

        (= (dummy_1_value d1_0) 0.7704791537538993)
		(= (dummy_1_value d1_1) 0.830144489912529)
		(= (dummy_1_value d1_2) 0.686007962317344)
		(= (dummy_1_value d1_3) 0.8814872742871188)

        (= (dummy_2_value d2_0) 7.520260762450989)
		(= (dummy_2_value d2_1) 5.4096214417113195)

        (= (dummy_3_value d3_0) 80.8024578255443)
		(= (dummy_3_value d3_1) 6.422613705839145)

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

