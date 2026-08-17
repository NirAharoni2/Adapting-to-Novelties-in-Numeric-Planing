;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.302722665962282)

        (= (sled_supplies s0) 8.175204876489394)

        (= (factor_value f0) 0.6479848489467143)
		(= (factor_value f1) 0.6684732546771781)
		(= (factor_value f2) 0.9240067976088999)

        (= (dummy_1_value d1_0) 0.7596219123616486)
		(= (dummy_1_value d1_1) 0.525197368936021)
		(= (dummy_1_value d1_2) 0.7103798947705268)
		(= (dummy_1_value d1_3) 0.618918732818438)

        (= (dummy_2_value d2_0) 6.995760794581849)
		(= (dummy_2_value d2_1) 1.6603809916414898)

        (= (dummy_3_value d3_0) 27.832980631138707)
		(= (dummy_3_value d3_1) 10.505978016416657)
		(= (dummy_3_value d3_2) 48.27815177896773)

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

