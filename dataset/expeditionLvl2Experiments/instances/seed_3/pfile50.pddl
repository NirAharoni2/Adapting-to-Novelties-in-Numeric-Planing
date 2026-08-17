;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.297249819557823)

        (= (sled_supplies s0) 3.3881400200269836)

        (= (factor_value f0) 0.9591046442801181)
		(= (factor_value f1) 0.6980162869565896)

        (= (dummy_1_value d1_0) 0.6719308941888626)
		(= (dummy_1_value d1_1) 0.7279859098101007)
		(= (dummy_1_value d1_2) 0.9803029057695742)
		(= (dummy_1_value d1_3) 0.6132944978861903)
		(= (dummy_1_value d1_4) 0.7865383673405589)

        (= (dummy_2_value d2_0) 4.084613383551407)

        (= (dummy_3_value d3_0) 59.21469084290152)
		(= (dummy_3_value d3_1) 58.6107447715594)

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

