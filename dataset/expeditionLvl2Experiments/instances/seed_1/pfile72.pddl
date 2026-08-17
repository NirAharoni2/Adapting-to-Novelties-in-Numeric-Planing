;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.151786575887497)

        (= (sled_supplies s0) 2.0491936450503925)

        (= (factor_value f0) 0.6663556910498037)
		(= (factor_value f1) 0.5093689509165223)
		(= (factor_value f2) 0.5043996220790932)
		(= (factor_value f3) 0.6056796851342864)

        (= (dummy_1_value d1_0) 0.6000548946345696)

        (= (dummy_2_value d2_0) 3.658268259729411)

        (= (dummy_3_value d3_0) 55.51590974353351)

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

