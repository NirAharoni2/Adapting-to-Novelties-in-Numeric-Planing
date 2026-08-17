;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -2.0)
		(= (y b0) 7.0)
		(= (x b1) -5.0)
		(= (y b1) 9.0)

		(= (d p0) -77.0)
		(= (d p1) 149.0)

        (= (dummy_1_d d1_0) 118.0)

        (= (dummy_2_d d2_0) -12.0)

        (= (dummy_3_d d3_0) -246.0)
		(= (dummy_3_d d3_1) -69.0)
		(= (dummy_3_d d3_2) 978.0)
		(= (dummy_3_d d3_3) 80.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

