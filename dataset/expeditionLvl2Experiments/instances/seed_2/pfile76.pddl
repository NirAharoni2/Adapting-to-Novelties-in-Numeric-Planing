;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_76)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.267995348711597)

        (= (sled_supplies s0) 2.9498079286590775)

        (= (factor_value f0) 0.6229580522195362)

        (= (dummy_1_value d1_0) 0.7405138225544978)

        (= (dummy_2_value d2_0) 6.866008296275661)
		(= (dummy_2_value d2_1) 1.6521436589727665)

        (= (dummy_3_value d3_0) 84.54276594059748)
		(= (dummy_3_value d3_1) 9.035333873727948)
		(= (dummy_3_value d3_2) 89.12401734859998)
		(= (dummy_3_value d3_3) 20.197268190867128)

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

