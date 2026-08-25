;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.970862320419368)

        (= (sled_supplies s0) 1.9058753563431963)

        (= (factor_value f0) 0.608348575955557)
		(= (factor_value f1) 0.710707609320604)
		(= (factor_value f2) 0.6354525206210271)

        (= (dummy_1_value d1_0) 0.7349185063072071)
		(= (dummy_1_value d1_1) 0.6432542800992246)

        (= (dummy_2_value d2_0) 6.998559204491686)
		(= (dummy_2_value d2_1) 2.1100204506770885)
		(= (dummy_2_value d2_2) 2.52302169667458)

        (= (dummy_3_value d3_0) 46.30886789124052)
		(= (dummy_3_value d3_1) 8.31678714644698)

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

