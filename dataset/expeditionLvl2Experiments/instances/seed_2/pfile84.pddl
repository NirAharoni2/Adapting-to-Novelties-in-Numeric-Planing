;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.082334972994644)

        (= (sled_supplies s0) 2.2432667645643622)

        (= (factor_value f0) 0.9569210010198131)
		(= (factor_value f1) 0.5736782128499601)
		(= (factor_value f2) 0.8883109466119735)
		(= (factor_value f3) 0.9120204315196334)

        (= (dummy_1_value d1_0) 0.5630817428297092)
		(= (dummy_1_value d1_1) 0.6927926833692696)
		(= (dummy_1_value d1_2) 0.8744032313034324)
		(= (dummy_1_value d1_3) 0.9903126638926119)
		(= (dummy_1_value d1_4) 0.8142138414468358)

        (= (dummy_2_value d2_0) 4.153522116493569)

        (= (dummy_3_value d3_0) 32.35386685020701)
		(= (dummy_3_value d3_1) 96.70910393565427)

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

