#! /Users/jonaslopezmesa/.rvm/rubies/ruby-2.0.0-p247/bin/ruby


def mapmap(a)
	a.map { |r| 
		r.map { |e| 
			yield e
		}
	}
end