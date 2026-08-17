;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_54)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.517217294553554)

        (= (sled_supplies s0) 5.774481574060532)

        (= (factor_value f0) 0.5759685034421782)

        (= (dummy_1_value d1_0) 0.9609548875937394)
		(= (dummy_1_value d1_1) 0.6874118726428201)
		(= (dummy_1_value d1_2) 0.5209286271885408)

        (= (dummy_2_value d2_0) 4.125782135238593)
		(= (dummy_2_value d2_1) 6.712272858828769)
		(= (dummy_2_value d2_2) 6.610079078689385)
		(= (dummy_2_value d2_3) 7.318023851891853)
		(= (dummy_2_value d2_4) 9.77896314839472)

        (= (dummy_3_value d3_0) 59.69554465988317)
		(= (dummy_3_value d3_1) 58.83029021563566)

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

