;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_58)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 118.4753492759489)

        (= (sled_supplies s0) 2.9683211939192318)

        (= (factor) 2.2108)
		(= (factor) 8.96826)
		(= (factor) 8.00872)
		(= (factor) 11.77445)
		(= (factor) 10.70237)
		(= (factor) 8.97588)
		(= (factor) 9.07794)
		(= (factor) 9.59203)
		(= (factor) 8.17775)
		(= (factor) 3.48358)

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