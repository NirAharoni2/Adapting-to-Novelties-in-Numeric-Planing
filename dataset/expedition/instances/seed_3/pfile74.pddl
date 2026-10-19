;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_74)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 26.22441910320566)

        (= (sled_supplies s0) 0.5845867298238744)

        (= (factor) 1.53062)
		(= (factor) 1.91887)
		(= (factor) 1.9846)
		(= (factor) 1.35505)
		(= (factor) 1.90309)
		(= (factor) 2.15086)
		(= (factor) 1.11947)
		(= (factor) 2.50586)
		(= (factor) 1.44174)
		(= (factor) 1.30527)

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