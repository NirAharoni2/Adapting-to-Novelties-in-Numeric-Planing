;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.206701196301946)

        (= (sled_supplies s0) 3.943056737250967)

        (= (factor_value f0) 0.627095128717303)
		(= (factor_value f1) 0.875289307100483)
		(= (factor_value f2) 0.7584978527393302)
		(= (factor_value f3) 0.5668904252649427)
		(= (factor_value f4) 0.6172101567071029)

        (= (dummy_1_value d1_0) 0.6856070624788784)
		(= (dummy_1_value d1_1) 0.8683764464739845)
		(= (dummy_1_value d1_2) 0.5896601942598179)
		(= (dummy_1_value d1_3) 0.8566481546263817)
		(= (dummy_1_value d1_4) 0.8275068713039317)

        (= (dummy_2_value d2_0) 1.7671902042555045)
		(= (dummy_2_value d2_1) 7.01157894226548)
		(= (dummy_2_value d2_2) 1.8206044716422558)
		(= (dummy_2_value d2_3) 2.123124633418048)
		(= (dummy_2_value d2_4) 6.345768325638113)

        (= (dummy_3_value d3_0) 24.61992440816282)
		(= (dummy_3_value d3_1) 87.81573825926273)

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

