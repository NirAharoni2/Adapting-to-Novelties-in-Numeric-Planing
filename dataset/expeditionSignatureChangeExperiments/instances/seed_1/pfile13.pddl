;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 196.98132768381157)

        (= (sled_supplies s0) 0.40684382691893894)

        (= (factor_value f0) 9.728168540468229)
		(= (factor_value f1) 2.002260791142027)
		(= (factor_value f2) 2.936739430324886)
		(= (factor_value f3) 6.5602619201040016)

        (= (dummy_1_value d1_0) 0.9899764429450385)
		(= (dummy_1_value d1_1) 0.7714565987423578)
		(= (dummy_1_value d1_2) 0.8440949040238563)

        (= (dummy_2_value d2_0) 6.956509859878143)
		(= (dummy_2_value d2_1) 3.3317739266828053)
		(= (dummy_2_value d2_2) 5.87442036621669)
		(= (dummy_2_value d2_3) 3.7658900603126213)

        (= (dummy_3_value d3_0) 25.391738412424132)

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

