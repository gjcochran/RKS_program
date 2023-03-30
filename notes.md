https://vimeo.com/channels/844657

```ruby
result = []
numbers = [0, 1, 2, 3, 4, 5, 6,  7, 8, 9]
numbers.each_slice(2) { |a, b| results << [a, b] }
result # [[0, 1], [2, 3], [4, 5], [6, 7], [8, 9]]
```

```ruby
result = []
numbers = [0, 1, 2, 3, 4, 5, 6,  7, 8, 9]
numbers[0..5].each_cons(2) { |a, b| results << [a, b] }
result # [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5]]

```
