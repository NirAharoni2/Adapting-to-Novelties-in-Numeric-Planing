;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_55)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 73.67076554601648)

        (= (sled_supplies s0) 0.6156541074892813)

        (= (factor) 5.4312)
		(= (factor) 5.15961)
		(= (factor) 4.38945)
		(= (factor) 1.74967)
		(= (factor) 4.93385)
		(= (factor) 4.83233)
		(= (factor) 1.72992)
		(= (factor) 6.61114)
		(= (factor) 5.00048)

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