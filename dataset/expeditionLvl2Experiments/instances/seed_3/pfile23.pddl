;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.192782556821061)

        (= (sled_supplies s0) 8.233993958345007)

        (= (factor_value f0) 0.7723599468454764)
		(= (factor_value f1) 0.5851656554951079)
		(= (factor_value f2) 0.5894444331604121)
		(= (factor_value f3) 0.9342843005439289)

        (= (dummy_1_value d1_0) 0.6847999162288865)
		(= (dummy_1_value d1_1) 0.6465086491036692)

        (= (dummy_2_value d2_0) 8.580674486073912)
		(= (dummy_2_value d2_1) 5.003529407238967)
		(= (dummy_2_value d2_2) 4.665044423519858)
		(= (dummy_2_value d2_3) 8.330604265990232)
		(= (dummy_2_value d2_4) 3.8435274956632965)

        (= (dummy_3_value d3_0) 90.71021852435628)
		(= (dummy_3_value d3_1) 31.65089570530167)
		(= (dummy_3_value d3_2) 50.2838684523157)
		(= (dummy_3_value d3_3) 53.37875784170913)
		(= (dummy_3_value d3_4) 70.98732971877567)

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

