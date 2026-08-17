;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.878745903696366)

        (= (sled_supplies s0) 1.4208041576429733)

        (= (factor_value f0) 0.8651767127835504)
		(= (factor_value f1) 0.5859133773177134)

        (= (dummy_1_value d1_0) 0.8901858141132624)
		(= (dummy_1_value d1_1) 0.7904226501153975)

        (= (dummy_2_value d2_0) 6.990006062596141)
		(= (dummy_2_value d2_1) 4.787128275066575)
		(= (dummy_2_value d2_2) 6.613633841118741)

        (= (dummy_3_value d3_0) 77.69576984528963)
		(= (dummy_3_value d3_1) 64.0498001709573)
		(= (dummy_3_value d3_2) 72.32103298310686)
		(= (dummy_3_value d3_3) 3.734579558404436)

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

