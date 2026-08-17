;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.116289292226881)

        (= (sled_supplies s0) 4.857631885254403)

        (= (factor_value f0) 0.6250627550752543)
		(= (factor_value f1) 0.6105660444601458)
		(= (factor_value f2) 0.5667037774130935)
		(= (factor_value f3) 0.5563807047329856)

        (= (dummy_1_value d1_0) 0.8831624329503953)
		(= (dummy_1_value d1_1) 0.9695978601573416)
		(= (dummy_1_value d1_2) 0.8098521420736053)

        (= (dummy_2_value d2_0) 8.305552548863005)
		(= (dummy_2_value d2_1) 9.807364589805685)
		(= (dummy_2_value d2_2) 7.131851959165654)
		(= (dummy_2_value d2_3) 7.431920326966333)

        (= (dummy_3_value d3_0) 21.230129651040276)
		(= (dummy_3_value d3_1) 7.6105493350473585)
		(= (dummy_3_value d3_2) 57.55041778915648)
		(= (dummy_3_value d3_3) 64.4621875194548)
		(= (dummy_3_value d3_4) 85.65988759851703)

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

