;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.806092319021483)

        (= (sled_supplies s0) 0.3202048584522521)

        (= (factor_value f0) 0.5048235299285259)
		(= (factor_value f1) 0.5216465431963587)

        (= (dummy_1_value d1_0) 0.9120254911892248)
		(= (dummy_1_value d1_1) 0.7471885221973806)
		(= (dummy_1_value d1_2) 0.9356593513846118)
		(= (dummy_1_value d1_3) 0.5198838562741933)
		(= (dummy_1_value d1_4) 0.7944275826640556)

        (= (dummy_2_value d2_0) 2.057083679090334)
		(= (dummy_2_value d2_1) 7.490087477722081)

        (= (dummy_3_value d3_0) 61.521039186629665)
		(= (dummy_3_value d3_1) 61.59253557866728)
		(= (dummy_3_value d3_2) 22.930608660764808)
		(= (dummy_3_value d3_3) 94.95310426442205)
		(= (dummy_3_value d3_4) 11.99147017204566)

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

