;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.74041133853091)

        (= (sled_supplies s0) 0.21102332172641933)

        (= (factor_value f0) 0.9823468974913554)

        (= (dummy_1_value d1_0) 0.9032436831677855)
		(= (dummy_1_value d1_1) 0.7714627232746136)
		(= (dummy_1_value d1_2) 0.9091750543341919)
		(= (dummy_1_value d1_3) 0.7751045422755559)

        (= (dummy_2_value d2_0) 7.404498519696972)
		(= (dummy_2_value d2_1) 3.8301376767543127)

        (= (dummy_3_value d3_0) 21.553847421355318)
		(= (dummy_3_value d3_1) 32.42421770038009)

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

