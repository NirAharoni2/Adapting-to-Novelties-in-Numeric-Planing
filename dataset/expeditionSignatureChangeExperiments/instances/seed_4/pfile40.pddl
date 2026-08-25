;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.226749731111461)

        (= (sled_supplies s0) 4.276148507046638)

        (= (factor_value f0) 0.8627400357492083)

        (= (dummy_1_value d1_0) 0.9120140949115862)
		(= (dummy_1_value d1_1) 0.8519206856668522)
		(= (dummy_1_value d1_2) 0.7140126768978958)
		(= (dummy_1_value d1_3) 0.9093759483661363)

        (= (dummy_2_value d2_0) 9.261031078406237)
		(= (dummy_2_value d2_1) 1.9676808084361745)
		(= (dummy_2_value d2_2) 2.2987510212617104)
		(= (dummy_2_value d2_3) 2.528540735501667)

        (= (dummy_3_value d3_0) 46.117901651254144)
		(= (dummy_3_value d3_1) 86.57045802197332)
		(= (dummy_3_value d3_2) 53.14256249166484)

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

