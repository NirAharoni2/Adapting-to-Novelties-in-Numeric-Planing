;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_67)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 125.43850765163428)

        (= (sled_supplies s0) 1.6999155209805328)

        (= (factor) 1.76205)
		(= (factor) 8.69984)
		(= (factor) 0.72973)
		(= (factor) 6.55846)
		(= (factor) 6.30328)
		(= (factor) 2.77755)
		(= (factor) 6.63909)
		(= (factor) 4.48945)
		(= (factor) 11.33784)
		(= (factor) 9.62214)

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