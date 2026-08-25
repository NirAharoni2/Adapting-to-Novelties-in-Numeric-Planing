;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.854359268338978)

        (= (sled_supplies s0) 2.1617414770780337)

        (= (factor_value f0) 0.7500847370724952)
		(= (factor_value f1) 0.9300772979614838)
		(= (factor_value f2) 0.9699076410470829)
		(= (factor_value f3) 0.8305083947074918)

        (= (dummy_1_value d1_0) 0.8090987601721666)
		(= (dummy_1_value d1_1) 0.7935694792719648)
		(= (dummy_1_value d1_2) 0.6077983044975226)
		(= (dummy_1_value d1_3) 0.7108158125339441)
		(= (dummy_1_value d1_4) 0.8616311938064374)

        (= (dummy_2_value d2_0) 8.312266438215005)

        (= (dummy_3_value d3_0) 82.54118931846784)

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

