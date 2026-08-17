;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_71)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.934767603319457)

        (= (sled_supplies s0) 0.10209967253484406)

        (= (factor_value f0) 0.7657545436719948)
		(= (factor_value f1) 0.8298068041590478)
		(= (factor_value f2) 0.5867105393672636)
		(= (factor_value f3) 0.8684491246760035)

        (= (dummy_1_value d1_0) 0.9811594533194589)

        (= (dummy_2_value d2_0) 3.8249334521896428)
		(= (dummy_2_value d2_1) 4.264388016358808)
		(= (dummy_2_value d2_2) 1.0397931080372025)
		(= (dummy_2_value d2_3) 2.9911274582846428)

        (= (dummy_3_value d3_0) 33.98528488591989)

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

