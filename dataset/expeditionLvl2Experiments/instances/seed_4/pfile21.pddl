;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_21)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.042026444616365)

        (= (sled_supplies s0) 0.3862090124418527)

        (= (factor_value f0) 0.8488403862150877)

        (= (dummy_1_value d1_0) 0.6065711466961898)
		(= (dummy_1_value d1_1) 0.6246059681853741)

        (= (dummy_2_value d2_0) 7.645827947076609)
		(= (dummy_2_value d2_1) 4.104671741599241)
		(= (dummy_2_value d2_2) 9.843059008442884)
		(= (dummy_2_value d2_3) 8.721157032967664)
		(= (dummy_2_value d2_4) 6.689710814083032)

        (= (dummy_3_value d3_0) 40.86010240294146)
		(= (dummy_3_value d3_1) 18.113640798757867)
		(= (dummy_3_value d3_2) 49.875745069338464)

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

