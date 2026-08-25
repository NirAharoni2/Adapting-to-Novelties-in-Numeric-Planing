;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6_12)
	(:domain counters)
	(:objects
		c0 c1 c2 c3 c4 c5 - counter
		r0 r1 r2 r3 - rate_decrease
	)
  (:init
		(= (value c0) 1)
	(= (value c1) 6)
	(= (value c2) 2)
	(= (value c3) 12)
	(= (value c4) 10)
	(= (value c5) 11)

        (= (rate_value r0) 3.820067355649306)
	(= (rate_value r1) 2.2741301463922676)
	(= (rate_value r2) 1.4976093909062878)
	(= (rate_value r3) 1.9496078792022264)

        (= (factor) 0.44759443250327413)

		(= (max_int) 12)
	)
	(:goal
		(and
			(<= (+ (value c0) 1) (value c1))
	(<= (+ (value c1) 1) (value c2))
	(<= (+ (value c2) 1) (value c3))
	(<= (+ (value c3) 1) (value c4))
	(<= (+ (value c4) 1) (value c5))
		)
	)
)

