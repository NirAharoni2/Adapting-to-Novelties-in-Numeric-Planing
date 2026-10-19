;; Joan Espasa Arxer (jea20@st-andrews.ac.uk), based on the expedition domain by Ben Pathak (pathak.ban@gmail.com)
(define (problem instance_89)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
	)
  (:init

        (at s0 w0_0)

        (= (sled_capacity s0) 32.39110083354273)

        (= (sled_supplies s0) 1.1801472601627827)

        (= (factor) 0.548)
		(= (factor) 0.5346)
		(= (factor) 1.55525)
		(= (factor) 1.1506)
		(= (factor) 2.32159)
		(= (factor) 0.65312)
		(= (factor) 0.54167)
		(= (factor) 1.07884)
		(= (factor) 1.13663)
		(= (factor) 2.46176)

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