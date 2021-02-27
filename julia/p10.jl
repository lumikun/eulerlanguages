"""
    Problem 10
    Find the sum of all the primes below two million.
"""

using Primes

println(sum(primes(2_000_000)))
