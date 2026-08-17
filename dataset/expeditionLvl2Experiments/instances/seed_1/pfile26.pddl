;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.466871458601998)

        (= (sled_supplies s0) 9.211737675116215)

        (= (factor_value f0) 0.6648217801602643)
		(= (factor_value f1) 0.6111592809064967)
		(= (factor_value f2) 0.9818942085279161)
		(= (factor_value f3) 0.8533451566257605)

        (= (dummy_1_value d1_0) 0.9218963111223288)
		(= (dummy_1_value d1_1) 0.5152672374687048)
		(= (dummy_1_value d1_2) 0.9496966558263871)
		(= (dummy_1_value d1_3) 0.8112260304488184)
		(= (dummy_1_value d1_4) 0.6582645771205338)

        (= (dummy_2_value d2_0) 4.885890606031674)
		(= (dummy_2_value d2_1) 7.854336941509234)
		(= (dummy_2_value d2_2) 8.068707603378765)
		(= (dummy_2_value d2_3) 2.7091078136328903)

        (= (dummy_3_value d3_0) 62.96276402846003)
		(= (dummy_3_value d3_1) 17.397323222713606)

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

